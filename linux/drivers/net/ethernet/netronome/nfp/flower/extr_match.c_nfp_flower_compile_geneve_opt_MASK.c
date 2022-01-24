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
struct flow_match_enc_opts {TYPE_2__* mask; TYPE_1__* key; } ;
struct flow_cls_offload {int /*<<< orphan*/  rule; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct flow_match_enc_opts*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(void *ext, void *msk,
			      struct flow_cls_offload *flow)
{
	struct flow_match_enc_opts match;

	FUNC0(flow->rule, &match);
	FUNC1(ext, match.key->data, match.key->len);
	FUNC1(msk, match.mask->data, match.mask->len);

	return 0;
}