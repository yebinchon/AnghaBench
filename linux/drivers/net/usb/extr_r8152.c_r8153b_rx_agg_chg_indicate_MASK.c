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
struct r8152 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCU_TYPE_USB ; 
 int OWN_CLEAR ; 
 int OWN_UPDATE ; 
 int /*<<< orphan*/  USB_UPT_RXDMA_OWN ; 
 int /*<<< orphan*/  FUNC0 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC1(struct r8152 *tp)
{
	FUNC0(tp, MCU_TYPE_USB, USB_UPT_RXDMA_OWN,
		       OWN_UPDATE | OWN_CLEAR);
}