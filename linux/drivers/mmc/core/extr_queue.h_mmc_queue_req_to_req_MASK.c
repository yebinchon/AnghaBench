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
struct request {int dummy; } ;
struct mmc_queue_req {int dummy; } ;

/* Variables and functions */
 struct request* FUNC0 (struct mmc_queue_req*) ; 

__attribute__((used)) static inline struct request *FUNC1(struct mmc_queue_req *mqr)
{
	return FUNC0(mqr);
}