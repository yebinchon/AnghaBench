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
struct vb2_buffer {int dummy; } ;
struct sg_table {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
struct pxa_camera_dev {int channels; } ;
struct TYPE_2__ {struct vb2_buffer vb2_buf; } ;
struct pxa_buffer {unsigned long* plane_sizes; int nb_planes; int /*<<< orphan*/  queue; int /*<<< orphan*/ * sg_len; int /*<<< orphan*/ * sg; TYPE_1__ vbuf; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa_camera_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa_buffer*) ; 
 int FUNC4 (struct pxa_camera_dev*,struct pxa_buffer*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned long*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sg_table* FUNC6 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct pxa_camera_dev *pcdev,
			   struct pxa_buffer *buf)
{
	struct vb2_buffer *vb = &buf->vbuf.vb2_buf;
	struct sg_table *sgt = FUNC6(vb, 0);
	int nb_channels = pcdev->channels;
	int i, ret = 0;
	unsigned long size = FUNC7(vb, 0);

	switch (nb_channels) {
	case 1:
		buf->plane_sizes[0] = size;
		break;
	case 3:
		buf->plane_sizes[0] = size / 2;
		buf->plane_sizes[1] = size / 4;
		buf->plane_sizes[2] = size / 4;
		break;
	default:
		return -EINVAL;
	}
	buf->nb_planes = nb_channels;

	ret = FUNC5(sgt->sgl, sgt->nents, 0, nb_channels,
		       buf->plane_sizes, buf->sg, buf->sg_len, GFP_KERNEL);
	if (ret < 0) {
		FUNC1(FUNC2(pcdev),
			"sg_split failed: %d\n", ret);
		return ret;
	}
	for (i = 0; i < nb_channels; i++) {
		ret = FUNC4(pcdev, buf, i,
					   buf->sg[i], buf->sg_len[i]);
		if (ret) {
			FUNC3(buf);
			return ret;
		}
	}
	FUNC0(&buf->queue);

	return ret;
}