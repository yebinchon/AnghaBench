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
struct iwl_trans_rxq_dma_data {int dummy; } ;
struct iwl_trans {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* rxq_dma_data ) (struct iwl_trans*,int,struct iwl_trans_rxq_dma_data*) ;} ;

/* Variables and functions */
 int ENOTSUPP ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct iwl_trans*,int,struct iwl_trans_rxq_dma_data*) ; 

__attribute__((used)) static inline int
FUNC2(struct iwl_trans *trans, int queue,
			   struct iwl_trans_rxq_dma_data *data)
{
	if (FUNC0(!trans->ops->rxq_dma_data))
		return -ENOTSUPP;

	return trans->ops->rxq_dma_data(trans, queue, data);
}