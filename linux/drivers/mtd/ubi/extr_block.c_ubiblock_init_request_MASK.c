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
struct TYPE_2__ {int /*<<< orphan*/  sg; } ;
struct ubiblock_pdu {int /*<<< orphan*/  work; TYPE_1__ usgl; } ;
struct request {int dummy; } ;
struct blk_mq_tag_set {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UBI_MAX_SG_COUNT ; 
 struct ubiblock_pdu* FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ubiblock_do_work ; 

__attribute__((used)) static int FUNC3(struct blk_mq_tag_set *set,
		struct request *req, unsigned int hctx_idx,
		unsigned int numa_node)
{
	struct ubiblock_pdu *pdu = FUNC1(req);

	FUNC2(pdu->usgl.sg, UBI_MAX_SG_COUNT);
	FUNC0(&pdu->work, ubiblock_do_work);

	return 0;
}