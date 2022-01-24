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
struct TYPE_2__ {int /*<<< orphan*/  pix_mp; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct fimc_isp {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fimc_isp*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct fimc_isp* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *fh,
					struct v4l2_format *f)
{
	struct fimc_isp *isp = FUNC1(file);

	FUNC0(isp, &f->fmt.pix_mp, NULL);
	return 0;
}