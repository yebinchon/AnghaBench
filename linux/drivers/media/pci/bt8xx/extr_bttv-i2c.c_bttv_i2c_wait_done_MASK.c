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
struct bttv {int i2c_done; int /*<<< orphan*/  i2c_queue; } ;

/* Variables and functions */
 int BT848_INT_RACK ; 
 int EIO ; 
 int /*<<< orphan*/  ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct bttv *btv)
{
	int rc = 0;

	/* timeout */
	if (FUNC1(btv->i2c_queue,
	    btv->i2c_done, FUNC0(85)) == -ERESTARTSYS)
		rc = -EIO;

	if (btv->i2c_done & BT848_INT_RACK)
		rc = 1;
	btv->i2c_done = 0;
	return rc;
}