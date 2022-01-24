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
struct virtchnl_pf_event {int /*<<< orphan*/  severity; int /*<<< orphan*/  event; } ;
struct i40e_pf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PF_EVENT_SEVERITY_CERTAIN_DOOM ; 
 int /*<<< orphan*/  VIRTCHNL_EVENT_RESET_IMPENDING ; 
 int /*<<< orphan*/  VIRTCHNL_OP_EVENT ; 
 int /*<<< orphan*/  FUNC0 (struct i40e_pf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

void FUNC1(struct i40e_pf *pf)
{
	struct virtchnl_pf_event pfe;

	pfe.event = VIRTCHNL_EVENT_RESET_IMPENDING;
	pfe.severity = PF_EVENT_SEVERITY_CERTAIN_DOOM;
	FUNC0(pf, VIRTCHNL_OP_EVENT, 0,
			     (u8 *)&pfe, sizeof(struct virtchnl_pf_event));
}