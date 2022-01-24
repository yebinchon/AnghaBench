#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct cpsw_slave {int dummy; } ;
struct cpsw_priv {int shp_cfg_speed; int* fifo_bw; int /*<<< orphan*/  dev; struct cpsw_common* cpsw; } ;
struct cpsw_common {struct cpsw_slave* slaves; } ;

/* Variables and functions */
 int CPSW_FIFO_SHAPERS_NUM ; 
 int CPSW_PCT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  SEND_PERCENT ; 
 size_t FUNC2 (struct cpsw_common*,struct cpsw_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC5 (struct cpsw_slave*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cpsw_slave*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct cpsw_priv *priv, int fifo, int bw)
{
	struct cpsw_common *cpsw = priv->cpsw;
	u32 val = 0, send_pct, shift;
	struct cpsw_slave *slave;
	int pct = 0, i;

	if (bw > priv->shp_cfg_speed * 1000)
		goto err;

	/* shaping has to stay enabled for highest fifos linearly
	 * and fifo bw no more then interface can allow
	 */
	slave = &cpsw->slaves[FUNC2(cpsw, priv)];
	send_pct = FUNC5(slave, SEND_PERCENT);
	for (i = CPSW_FIFO_SHAPERS_NUM; i > 0; i--) {
		if (!bw) {
			if (i >= fifo || !priv->fifo_bw[i])
				continue;

			FUNC4(priv->dev, "Prev FIFO%d is shaped", i);
			continue;
		}

		if (!priv->fifo_bw[i] && i > fifo) {
			FUNC3(priv->dev, "Upper FIFO%d is not shaped", i);
			return -EINVAL;
		}

		shift = (i - 1) * 8;
		if (i == fifo) {
			send_pct &= ~(CPSW_PCT_MASK << shift);
			val = FUNC1(bw, priv->shp_cfg_speed * 10);
			if (!val)
				val = 1;

			send_pct |= val << shift;
			pct += val;
			continue;
		}

		if (priv->fifo_bw[i])
			pct += (send_pct >> shift) & CPSW_PCT_MASK;
	}

	if (pct >= 100)
		goto err;

	FUNC6(slave, send_pct, SEND_PERCENT);
	priv->fifo_bw[fifo] = bw;

	FUNC4(priv->dev, "set FIFO%d bw = %d\n", fifo,
		 FUNC0(val * priv->shp_cfg_speed, 100));

	return 0;
err:
	FUNC3(priv->dev, "Bandwidth doesn't fit in tc configuration");
	return -EINVAL;
}