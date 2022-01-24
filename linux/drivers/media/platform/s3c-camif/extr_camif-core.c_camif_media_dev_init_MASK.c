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
struct v4l2_device {struct media_device* mdev; int /*<<< orphan*/  name; } ;
struct media_device {unsigned int hw_revision; int /*<<< orphan*/  dev; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  model; } ;
struct camif_dev {int /*<<< orphan*/  dev; TYPE_1__* variant; struct v4l2_device v4l2_dev; struct media_device media_dev; } ;
struct TYPE_2__ {unsigned int ip_revision; } ;

/* Variables and functions */
 unsigned int S3C6410_CAMIF_IP_REV ; 
 int /*<<< orphan*/  FUNC0 (struct media_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct media_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct v4l2_device*) ; 

__attribute__((used)) static int FUNC5(struct camif_dev *camif)
{
	struct media_device *md = &camif->media_dev;
	struct v4l2_device *v4l2_dev = &camif->v4l2_dev;
	unsigned int ip_rev = camif->variant->ip_revision;
	int ret;

	FUNC1(md, 0, sizeof(*md));
	FUNC2(md->model, sizeof(md->model), "SAMSUNG S3C%s CAMIF",
		 ip_rev == S3C6410_CAMIF_IP_REV ? "6410" : "244X");
	FUNC3(md->bus_info, "platform", sizeof(md->bus_info));
	md->hw_revision = ip_rev;

	md->dev = camif->dev;

	FUNC3(v4l2_dev->name, "s3c-camif", sizeof(v4l2_dev->name));
	v4l2_dev->mdev = md;

	FUNC0(md);

	ret = FUNC4(camif->dev, v4l2_dev);
	if (ret < 0)
		return ret;

	return ret;
}