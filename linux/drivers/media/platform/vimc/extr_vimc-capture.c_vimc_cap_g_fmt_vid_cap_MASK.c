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
struct vimc_cap_device {int /*<<< orphan*/  format; } ;
struct TYPE_2__ {int /*<<< orphan*/  pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;

/* Variables and functions */
 struct vimc_cap_device* FUNC0 (struct file*) ; 

__attribute__((used)) static int FUNC1(struct file *file, void *priv,
				  struct v4l2_format *f)
{
	struct vimc_cap_device *vcap = FUNC0(file);

	f->fmt.pix = vcap->format;

	return 0;
}