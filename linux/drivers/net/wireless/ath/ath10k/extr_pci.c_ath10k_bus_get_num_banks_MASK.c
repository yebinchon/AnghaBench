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
struct ath10k_ce {TYPE_1__* bus_ops; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {int (* get_num_banks ) (struct ath10k*) ;} ;

/* Variables and functions */
 struct ath10k_ce* FUNC0 (struct ath10k*) ; 
 int FUNC1 (struct ath10k*) ; 

__attribute__((used)) static int FUNC2(struct ath10k *ar)
{
	struct ath10k_ce *ce = FUNC0(ar);

	return ce->bus_ops->get_num_banks(ar);
}