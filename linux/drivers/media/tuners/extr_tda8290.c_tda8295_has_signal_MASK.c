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
typedef  int u16 ;
struct tda8290_priv {int /*<<< orphan*/  i2c_props; } ;
struct dvb_frontend {struct tda8290_priv* analog_demod_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,int,unsigned char*,int) ; 

__attribute__((used)) static int FUNC1(struct dvb_frontend *fe, u16 *signal)
{
	struct tda8290_priv *priv = fe->analog_demod_priv;

	unsigned char hvpll_stat = 0x26;
	unsigned char ret;

	FUNC0(&priv->i2c_props, &hvpll_stat, 1, &ret, 1);
	*signal = (ret & 0x01) ? 65535 : 0;
	return 0;
}