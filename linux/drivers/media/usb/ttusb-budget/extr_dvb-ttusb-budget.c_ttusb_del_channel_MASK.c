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
struct ttusb {int c; } ;
typedef  int /*<<< orphan*/  b ;

/* Variables and functions */
 int FUNC0 (struct ttusb*,int*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct ttusb *ttusb, int channel_id)
{
	int err;
	/* DelChannel */
	u8 b[] = { 0xaa, ++ttusb->c, 0x23, 1, channel_id };

	err = FUNC0(ttusb, b, sizeof(b), 0);
	return err;
}