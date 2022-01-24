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
typedef  int /*<<< orphan*/  u16 ;
struct nfp_ccm {scalar_t__ tag_alloc_last; scalar_t__ tag_alloc_next; int /*<<< orphan*/  tag_allocator; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct nfp_ccm *ccm, u16 tag)
{
	FUNC0(!FUNC1(tag, ccm->tag_allocator));

	while (!FUNC2(ccm->tag_alloc_last, ccm->tag_allocator) &&
	       ccm->tag_alloc_last != ccm->tag_alloc_next)
		ccm->tag_alloc_last++;
}