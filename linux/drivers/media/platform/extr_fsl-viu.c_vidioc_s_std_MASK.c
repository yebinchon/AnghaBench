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
typedef  int /*<<< orphan*/  v4l2_std_id ;
struct viu_fh {TYPE_1__* dev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  std; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_std ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static int FUNC1(struct file *file, void *priv, v4l2_std_id id)
{
	struct viu_fh *fh = priv;

	fh->dev->std = id;
	FUNC0(fh->dev, video, s_std, id);
	return 0;
}