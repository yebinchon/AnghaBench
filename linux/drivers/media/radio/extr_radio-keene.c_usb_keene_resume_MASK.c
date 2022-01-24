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
struct usb_interface {int dummy; } ;
struct keene_device {int /*<<< orphan*/  curfreq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct keene_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct keene_device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct keene_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC5(struct usb_interface *intf)
{
	struct keene_device *radio = FUNC3(FUNC4(intf));

	FUNC2(50);
	FUNC1(radio);
	FUNC0(radio, radio->curfreq, true);
	return 0;
}