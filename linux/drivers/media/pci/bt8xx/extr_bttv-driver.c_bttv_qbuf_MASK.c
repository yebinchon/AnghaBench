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
struct v4l2_buffer {int dummy; } ;
struct file {int dummy; } ;
struct bttv_fh {struct bttv* btv; } ;
struct bttv {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct bttv_fh*) ; 
 int FUNC1 (struct bttv_fh*) ; 
 int /*<<< orphan*/  FUNC2 (struct bttv*,struct bttv_fh*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct v4l2_buffer*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv, struct v4l2_buffer *b)
{
	struct bttv_fh *fh = priv;
	struct bttv *btv = fh->btv;
	int res = FUNC1(fh);

	if (!FUNC2(btv, fh, res))
		return -EBUSY;

	return FUNC3(FUNC0(fh), b);
}