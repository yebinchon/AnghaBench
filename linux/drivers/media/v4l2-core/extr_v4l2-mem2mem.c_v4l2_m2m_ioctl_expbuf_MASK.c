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
struct v4l2_fh {int /*<<< orphan*/  m2m_ctx; } ;
struct v4l2_exportbuffer {int dummy; } ;
struct file {struct v4l2_fh* private_data; } ;

/* Variables and functions */
 int FUNC0 (struct file*,int /*<<< orphan*/ ,struct v4l2_exportbuffer*) ; 

int FUNC1(struct file *file, void *priv,
				struct v4l2_exportbuffer *eb)
{
	struct v4l2_fh *fh = file->private_data;

	return FUNC0(file, fh->m2m_ctx, eb);
}