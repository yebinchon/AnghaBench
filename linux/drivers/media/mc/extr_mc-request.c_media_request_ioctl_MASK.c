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
struct media_request {int dummy; } ;
struct file {struct media_request* private_data; } ;

/* Variables and functions */
 long ENOIOCTLCMD ; 
#define  MEDIA_REQUEST_IOC_QUEUE 129 
#define  MEDIA_REQUEST_IOC_REINIT 128 
 long FUNC0 (struct media_request*) ; 
 long FUNC1 (struct media_request*) ; 

__attribute__((used)) static long FUNC2(struct file *filp, unsigned int cmd,
				unsigned long arg)
{
	struct media_request *req = filp->private_data;

	switch (cmd) {
	case MEDIA_REQUEST_IOC_QUEUE:
		return FUNC0(req);
	case MEDIA_REQUEST_IOC_REINIT:
		return FUNC1(req);
	default:
		return -ENOIOCTLCMD;
	}
}