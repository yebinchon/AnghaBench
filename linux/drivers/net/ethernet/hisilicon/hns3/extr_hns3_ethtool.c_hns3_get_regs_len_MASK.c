#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct hnae3_handle {TYPE_2__* ae_algo; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* get_regs_len ) (struct hnae3_handle*) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 struct hnae3_handle* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct hnae3_handle*) ; 

__attribute__((used)) static int FUNC2(struct net_device *netdev)
{
	struct hnae3_handle *h = FUNC0(netdev);

	if (!h->ae_algo->ops->get_regs_len)
		return -EOPNOTSUPP;

	return h->ae_algo->ops->get_regs_len(h);
}