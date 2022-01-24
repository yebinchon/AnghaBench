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
typedef  int u32 ;
struct bnx2x {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  clp_mb; } ;

/* Variables and functions */
 int FUNC0 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 int SHARED_MF_CLP_MAGIC ; 
 TYPE_1__ shared_mf_config ; 

__attribute__((used)) static void FUNC2(struct bnx2x *bp, u32 magic_val)
{
	/* Restore the `magic' bit value... */
	u32 val = FUNC0(bp, shared_mf_config.clp_mb);
	FUNC1(bp, shared_mf_config.clp_mb,
		(val & (~SHARED_MF_CLP_MAGIC)) | magic_val);
}