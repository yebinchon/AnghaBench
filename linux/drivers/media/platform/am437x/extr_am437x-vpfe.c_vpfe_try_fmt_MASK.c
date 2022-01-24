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
struct vpfe_device {int dummy; } ;
struct v4l2_format {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct vpfe_device*,struct v4l2_format*,unsigned int*) ; 
 struct vpfe_device* FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct vpfe_device*,char*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
			struct v4l2_format *fmt)
{
	struct vpfe_device *vpfe = FUNC1(file);
	unsigned int bpp;

	FUNC2(2, vpfe, "vpfe_try_fmt\n");

	return FUNC0(vpfe, fmt, &bpp);
}