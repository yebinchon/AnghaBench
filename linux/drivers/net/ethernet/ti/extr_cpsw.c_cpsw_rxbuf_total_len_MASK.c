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
struct skb_shared_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ CPSW_HEADROOM ; 
 unsigned int FUNC0 (unsigned int) ; 

__attribute__((used)) static unsigned int FUNC1(unsigned int len)
{
	len += CPSW_HEADROOM;
	len += FUNC0(sizeof(struct skb_shared_info));

	return FUNC0(len);
}