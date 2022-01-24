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
struct saa7134_dev {int dummy; } ;
struct dvb_frontend {TYPE_1__* dvb; } ;
struct TYPE_2__ {struct saa7134_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC1 (struct saa7134_dev*,int,int) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe)
{
	struct saa7134_dev *dev = fe->dvb->priv;
	FUNC0(fe);
	/* route TDA8275a AGC input to the channel decoder */
	FUNC1(dev, 22, 1);
	return 0;
}