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
struct vb2_queue {int dummy; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*) ; 
 struct gspca_dev* FUNC2 (struct vb2_queue*) ; 

__attribute__((used)) static void FUNC3(struct vb2_queue *vq)
{
	struct gspca_dev *gspca_dev = FUNC2(vq);

	FUNC1(gspca_dev);

	/* Release all active buffers */
	FUNC0(gspca_dev, VB2_BUF_STATE_ERROR);
}