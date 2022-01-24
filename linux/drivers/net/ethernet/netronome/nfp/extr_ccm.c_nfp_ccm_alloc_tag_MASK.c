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
struct nfp_ccm {int /*<<< orphan*/  tag_alloc_next; int /*<<< orphan*/  tag_allocator; int /*<<< orphan*/  app; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_ccm*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct nfp_ccm *ccm)
{
	/* CCM is for FW communication which is request-reply.  To make sure
	 * we don't reuse the message ID too early after timeout - limit the
	 * number of requests in flight.
	 */
	if (FUNC4(FUNC3(ccm))) {
		FUNC2(ccm->app, "all FW request contexts busy!\n");
		return -EAGAIN;
	}

	FUNC0(FUNC1(ccm->tag_alloc_next, ccm->tag_allocator));
	return ccm->tag_alloc_next++;
}