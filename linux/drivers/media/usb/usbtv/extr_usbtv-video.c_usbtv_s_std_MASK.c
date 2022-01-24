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
typedef  int v4l2_std_id ;
struct usbtv {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int USBTV_TV_STD ; 
 int FUNC0 (struct usbtv*,int) ; 
 struct usbtv* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv, v4l2_std_id norm)
{
	int ret = -EINVAL;
	struct usbtv *usbtv = FUNC1(file);

	if (norm & USBTV_TV_STD)
		ret = FUNC0(usbtv, norm);

	return ret;
}