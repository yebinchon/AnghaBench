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
struct videobuf_queue {int dummy; } ;
struct bttv_fh {int type; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;

/* Variables and functions */
 int EBUSY ; 
 struct videobuf_queue* FUNC0 (struct bttv_fh*) ; 
 int FUNC1 (struct bttv_fh*) ; 
 scalar_t__ FUNC2 (struct bttv_fh*,int) ; 
 scalar_t__ FUNC3 (struct videobuf_queue*) ; 

__attribute__((used)) static int FUNC4(struct bttv_fh *fh, enum v4l2_buf_type type)
{
	struct videobuf_queue *q = FUNC0(fh);
	int res = FUNC1(fh);

	if (FUNC2(fh,res))
		return -EBUSY;
	if (FUNC3(q))
		return -EBUSY;
	fh->type = type;
	return 0;
}