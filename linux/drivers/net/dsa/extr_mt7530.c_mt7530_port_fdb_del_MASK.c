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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct mt7530_priv {int /*<<< orphan*/  reg_mutex; } ;
struct dsa_switch {struct mt7530_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MT7530_FDB_WRITE ; 
 int /*<<< orphan*/  STATIC_EMP ; 
 int FUNC1 (struct mt7530_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7530_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct dsa_switch *ds, int port,
		    const unsigned char *addr, u16 vid)
{
	struct mt7530_priv *priv = ds->priv;
	int ret;
	u8 port_mask = FUNC0(port);

	FUNC3(&priv->reg_mutex);
	FUNC2(priv, vid, port_mask, addr, -1, STATIC_EMP);
	ret = FUNC1(priv, MT7530_FDB_WRITE, NULL);
	FUNC4(&priv->reg_mutex);

	return ret;
}