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
struct blk_mq_tag_set {int /*<<< orphan*/  driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ,struct request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct blk_mq_tag_set *set, struct request *req,
			       unsigned int hctx_idx, unsigned int numa_node)
{
	return FUNC0(set->driver_data, req, GFP_KERNEL);
}