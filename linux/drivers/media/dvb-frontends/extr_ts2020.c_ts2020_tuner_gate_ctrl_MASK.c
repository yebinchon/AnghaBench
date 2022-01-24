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
typedef  int u8 ;
struct ts2020_priv {int /*<<< orphan*/  regmap; } ;
struct dvb_frontend {struct ts2020_priv* tuner_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe, u8 offset)
{
	struct ts2020_priv *priv = fe->tuner_priv;
	int ret;
	ret = FUNC1(priv->regmap, 0x51, 0x1f - offset);
	ret |= FUNC1(priv->regmap, 0x51, 0x1f);
	ret |= FUNC1(priv->regmap, 0x50, offset);
	ret |= FUNC1(priv->regmap, 0x50, 0x00);
	FUNC0(20);
	return ret;
}