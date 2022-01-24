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
struct v4l2_capability {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct file {int dummy; } ;
struct camif_vp {int id; TYPE_1__* camif; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  S3C_CAMIF_DRIVER_NAME ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct camif_vp* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
				     struct v4l2_capability *cap)
{
	struct camif_vp *vp = FUNC3(file);

	FUNC2(cap->driver, S3C_CAMIF_DRIVER_NAME, sizeof(cap->driver));
	FUNC2(cap->card, S3C_CAMIF_DRIVER_NAME, sizeof(cap->card));
	FUNC1(cap->bus_info, sizeof(cap->bus_info), "platform:%s.%d",
		 FUNC0(vp->camif->dev), vp->id);
	return 0;
}