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
typedef  int /*<<< orphan*/  v4l2_std_id ;
struct viu_fh {int /*<<< orphan*/  dev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  querystd ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static int FUNC1(struct file *file, void *priv, v4l2_std_id *std_id)
{
	struct viu_fh *fh = priv;

	FUNC0(fh->dev, video, querystd, std_id);
	return 0;
}