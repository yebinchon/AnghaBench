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
struct ice_aq_desc {void* flags; void* opcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICE_AQ_FLAG_SI ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_aq_desc*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct ice_aq_desc *desc, u16 opcode)
{
	/* zero out the desc */
	FUNC1(desc, 0, sizeof(*desc));
	desc->opcode = FUNC0(opcode);
	desc->flags = FUNC0(ICE_AQ_FLAG_SI);
}