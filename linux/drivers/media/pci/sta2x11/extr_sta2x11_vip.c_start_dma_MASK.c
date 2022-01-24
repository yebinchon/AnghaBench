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
typedef  int u32 ;
struct vip_buffer {scalar_t__ dma; } ;
struct TYPE_2__ {scalar_t__ field; int width; } ;
struct sta2x11_vip {int /*<<< orphan*/  slock; TYPE_1__ format; } ;

/* Variables and functions */
 int /*<<< orphan*/  DVP_CTL ; 
 int DVP_CTL_ENA ; 
 int /*<<< orphan*/  DVP_VBP ; 
 int /*<<< orphan*/  DVP_VTP ; 
 scalar_t__ V4L2_FIELD_INTERLACED ; 
 int FUNC0 (struct sta2x11_vip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sta2x11_vip*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct sta2x11_vip *vip, struct vip_buffer *vip_buf)
{
	unsigned long offset = 0;

	if (vip->format.field == V4L2_FIELD_INTERLACED)
		offset = vip->format.width * 2;

	FUNC2(&vip->slock);
	/* Enable acquisition */
	FUNC1(vip, DVP_CTL, FUNC0(vip, DVP_CTL) | DVP_CTL_ENA);
	/* Set Top and Bottom Field memory address */
	FUNC1(vip, DVP_VTP, (u32)vip_buf->dma);
	FUNC1(vip, DVP_VBP, (u32)vip_buf->dma + offset);
	FUNC3(&vip->slock);
}