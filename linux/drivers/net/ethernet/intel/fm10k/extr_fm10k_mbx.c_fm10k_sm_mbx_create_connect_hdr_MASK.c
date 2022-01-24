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
typedef  int /*<<< orphan*/  u8 ;
struct fm10k_mbx_info {int mbx_hdr; int /*<<< orphan*/  head; int /*<<< orphan*/  remote; int /*<<< orphan*/  tail; int /*<<< orphan*/  mbx_lock; scalar_t__ local; } ;

/* Variables and functions */
 int /*<<< orphan*/  FM10K_MBX_REQ ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SM_ERR ; 
 int /*<<< orphan*/  SM_HEAD ; 
 int /*<<< orphan*/  SM_TAIL ; 
 int /*<<< orphan*/  SM_VER ; 

__attribute__((used)) static void FUNC1(struct fm10k_mbx_info *mbx, u8 err)
{
	if (mbx->local)
		mbx->mbx_lock |= FM10K_MBX_REQ;

	mbx->mbx_hdr = FUNC0(mbx->tail, SM_TAIL) |
		       FUNC0(mbx->remote, SM_VER) |
		       FUNC0(mbx->head, SM_HEAD) |
		       FUNC0(err, SM_ERR);
}