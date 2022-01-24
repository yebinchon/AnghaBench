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
struct mei_msg_hdr {scalar_t__ host_addr; scalar_t__ me_addr; } ;
struct mei_cl {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mei_cl*) ; 
 scalar_t__ FUNC1 (struct mei_cl*) ; 

__attribute__((used)) static inline int FUNC2(struct mei_cl *cl,
			struct mei_msg_hdr *mei_hdr)
{
	return  FUNC0(cl) == mei_hdr->host_addr &&
		FUNC1(cl) == mei_hdr->me_addr;
}