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
struct smi_rc {struct rc_dev* rc_dev; } ;
struct smi_dev {struct smi_rc ir; } ;
struct rc_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct smi_rc*) ; 

void FUNC2(struct smi_dev *dev)
{
	struct smi_rc *ir = &dev->ir;
	struct rc_dev *rc_dev = ir->rc_dev;

	FUNC1(ir);
	FUNC0(rc_dev);
	ir->rc_dev = NULL;
}