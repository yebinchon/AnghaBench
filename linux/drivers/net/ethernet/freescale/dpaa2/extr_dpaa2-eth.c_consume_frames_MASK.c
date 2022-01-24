#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dpaa2_fd {int dummy; } ;
struct dpaa2_eth_priv {int dummy; } ;
struct TYPE_2__ {int frames; } ;
struct dpaa2_eth_fq {TYPE_1__ stats; int /*<<< orphan*/  (* consume ) (struct dpaa2_eth_priv*,struct dpaa2_eth_channel*,struct dpaa2_fd const*,struct dpaa2_eth_fq*) ;} ;
struct dpaa2_eth_channel {int /*<<< orphan*/  store; struct dpaa2_eth_priv* priv; } ;
struct dpaa2_dq {int dummy; } ;

/* Variables and functions */
 struct dpaa2_fd* FUNC0 (struct dpaa2_dq*) ; 
 scalar_t__ FUNC1 (struct dpaa2_dq*) ; 
 struct dpaa2_dq* FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct dpaa2_eth_priv*,struct dpaa2_eth_channel*,struct dpaa2_fd const*,struct dpaa2_eth_fq*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct dpaa2_eth_channel *ch,
			  struct dpaa2_eth_fq **src)
{
	struct dpaa2_eth_priv *priv = ch->priv;
	struct dpaa2_eth_fq *fq = NULL;
	struct dpaa2_dq *dq;
	const struct dpaa2_fd *fd;
	int cleaned = 0;
	int is_last;

	do {
		dq = FUNC2(ch->store, &is_last);
		if (FUNC4(!dq)) {
			/* If we're here, we *must* have placed a
			 * volatile dequeue comnmand, so keep reading through
			 * the store until we get some sort of valid response
			 * token (either a valid frame or an "empty dequeue")
			 */
			continue;
		}

		fd = FUNC0(dq);
		fq = (struct dpaa2_eth_fq *)(uintptr_t)FUNC1(dq);

		fq->consume(priv, ch, fd, fq);
		cleaned++;
	} while (!is_last);

	if (!cleaned)
		return 0;

	fq->stats.frames += cleaned;

	/* A dequeue operation only pulls frames from a single queue
	 * into the store. Return the frame queue as an out param.
	 */
	if (src)
		*src = fq;

	return cleaned;
}