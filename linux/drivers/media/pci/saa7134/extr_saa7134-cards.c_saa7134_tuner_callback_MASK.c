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
struct saa7134_dev {int tuner_type; } ;

/* Variables and functions */
 int EINVAL ; 
#define  TUNER_PHILIPS_TDA8290 130 
#define  TUNER_XC2028 129 
#define  TUNER_XC5000 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct saa7134_dev*,int,int) ; 
 int FUNC2 (struct saa7134_dev*,int,int) ; 
 int FUNC3 (struct saa7134_dev*,int,int) ; 

int FUNC4(void *priv, int component, int command, int arg)
{
	struct saa7134_dev *dev = priv;

	if (dev != NULL) {
		switch (dev->tuner_type) {
		case TUNER_PHILIPS_TDA8290:
			return FUNC1(dev, command, arg);
		case TUNER_XC2028:
			return FUNC2(dev, command, arg);
		case TUNER_XC5000:
			return FUNC3(dev, command, arg);
		}
	} else {
		FUNC0("saa7134: Error - device struct undefined.\n");
		return -EINVAL;
	}
	return -EINVAL;
}