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
struct ene_device {int w_pointer; int /*<<< orphan*/  r_pointer; scalar_t__ hw_extra_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENE_FW2 ; 
 int ENE_FW2_BUF_WPTR ; 
 int ENE_FW_PACKET_SIZE ; 
 int /*<<< orphan*/  ENE_FW_RX_POINTER ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ene_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ene_device *dev)
{
	if (dev->hw_extra_buffer)
		dev->w_pointer = FUNC1(dev, ENE_FW_RX_POINTER);
	else
		dev->w_pointer = FUNC1(dev, ENE_FW2)
			& ENE_FW2_BUF_WPTR ? 0 : ENE_FW_PACKET_SIZE;

	FUNC0("RB: HW write pointer: %02x, driver read pointer: %02x",
		dev->w_pointer, dev->r_pointer);
}