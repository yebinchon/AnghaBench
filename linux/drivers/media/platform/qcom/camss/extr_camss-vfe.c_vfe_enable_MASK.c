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
struct vfe_line {int dummy; } ;
struct vfe_device {int stream_count; int was_streaming; int /*<<< orphan*/  stream_lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* bus_enable_wr_if ) (struct vfe_device*,int) ;int /*<<< orphan*/  (* set_ds ) (struct vfe_device*) ;int /*<<< orphan*/  (* set_qos ) (struct vfe_device*) ;int /*<<< orphan*/  (* enable_irq_common ) (struct vfe_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vfe_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct vfe_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vfe_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct vfe_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct vfe_device*,int) ; 
 struct vfe_device* FUNC7 (struct vfe_line*) ; 
 int FUNC8 (struct vfe_line*) ; 
 int FUNC9 (struct vfe_line*) ; 
 int /*<<< orphan*/  FUNC10 (struct vfe_line*) ; 

__attribute__((used)) static int FUNC11(struct vfe_line *line)
{
	struct vfe_device *vfe = FUNC7(line);
	int ret;

	FUNC0(&vfe->stream_lock);

	if (!vfe->stream_count) {
		vfe->ops->enable_irq_common(vfe);

		vfe->ops->bus_enable_wr_if(vfe, 1);

		vfe->ops->set_qos(vfe);

		vfe->ops->set_ds(vfe);
	}

	vfe->stream_count++;

	FUNC1(&vfe->stream_lock);

	ret = FUNC9(line);
	if (ret < 0)
		goto error_get_output;

	ret = FUNC8(line);
	if (ret < 0)
		goto error_enable_output;

	vfe->was_streaming = 1;

	return 0;


error_enable_output:
	FUNC10(line);

error_get_output:
	FUNC0(&vfe->stream_lock);

	if (vfe->stream_count == 1)
		vfe->ops->bus_enable_wr_if(vfe, 0);

	vfe->stream_count--;

	FUNC1(&vfe->stream_lock);

	return ret;
}