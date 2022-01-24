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
struct i2400mu {int /*<<< orphan*/  i2400m; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct i2400mu* FUNC1 (struct usb_interface*) ; 

__attribute__((used)) static
int FUNC2(struct usb_interface *iface)
{
	struct i2400mu *i2400mu = FUNC1(iface);
	return FUNC0(&i2400mu->i2400m);
}