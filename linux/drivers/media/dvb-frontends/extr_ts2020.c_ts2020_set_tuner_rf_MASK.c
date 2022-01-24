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
struct ts2020_priv {int /*<<< orphan*/  regmap; } ;
struct dvb_frontend {struct ts2020_priv* tuner_priv; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int FUNC2 (struct dvb_frontend*,int) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe)
{
	struct ts2020_priv *dev = fe->tuner_priv;
	int ret;
	unsigned int utmp;

	ret = FUNC0(dev->regmap, 0x3d, &utmp);
	if (ret)
		return ret;

	utmp &= 0x7f;
	if (utmp < 0x16)
		utmp = 0xa1;
	else if (utmp == 0x16)
		utmp = 0x99;
	else
		utmp = 0xf9;

	FUNC1(dev->regmap, 0x60, utmp);
	ret = FUNC2(fe, 0x08);

	return ret;
}