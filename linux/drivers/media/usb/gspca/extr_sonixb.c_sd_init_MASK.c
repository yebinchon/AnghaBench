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
struct gspca_dev {int usb_err; } ;
typedef  int __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int,int const*,int) ; 

__attribute__((used)) static int FUNC1(struct gspca_dev *gspca_dev)
{
	const __u8 stop = 0x09; /* Disable stream turn of LED */

	FUNC0(gspca_dev, 0x01, &stop, 1);

	return gspca_dev->usb_err;
}