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
struct v4l2_capability {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct keene_device {int /*<<< orphan*/  usbdev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct keene_device* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
					struct v4l2_capability *v)
{
	struct keene_device *radio = FUNC2(file);

	FUNC0(v->driver, "radio-keene", sizeof(v->driver));
	FUNC0(v->card, "Keene FM Transmitter", sizeof(v->card));
	FUNC1(radio->usbdev, v->bus_info, sizeof(v->bus_info));
	return 0;
}