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
struct v4l2_capability {int capabilities; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct file {int dummy; } ;
struct cobalt_stream {struct cobalt* cobalt; } ;
struct cobalt {scalar_t__ have_hsma_tx; int /*<<< orphan*/  pci_dev; } ;

/* Variables and functions */
 int V4L2_CAP_DEVICE_CAPS ; 
 int V4L2_CAP_READWRITE ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_VIDEO_CAPTURE ; 
 int V4L2_CAP_VIDEO_OUTPUT ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct cobalt_stream* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv_fh,
				struct v4l2_capability *vcap)
{
	struct cobalt_stream *s = FUNC3(file);
	struct cobalt *cobalt = s->cobalt;

	FUNC2(vcap->driver, "cobalt", sizeof(vcap->driver));
	FUNC2(vcap->card, "cobalt", sizeof(vcap->card));
	FUNC1(vcap->bus_info, sizeof(vcap->bus_info),
		 "PCIe:%s", FUNC0(cobalt->pci_dev));
	vcap->capabilities = V4L2_CAP_STREAMING | V4L2_CAP_READWRITE |
		V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_DEVICE_CAPS;
	if (cobalt->have_hsma_tx)
		vcap->capabilities |= V4L2_CAP_VIDEO_OUTPUT;
	return 0;
}