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
struct ice_lldp_org_tlv {int /*<<< orphan*/ * tlvinfo; } ;
struct ice_dcbx_cfg {int /*<<< orphan*/  etsrec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(struct ice_lldp_org_tlv *tlv,
			  struct ice_dcbx_cfg *dcbcfg)
{
	u8 *buf = tlv->tlvinfo;

	/* Begin parsing at Priority Assignment Table (offset 1 in buf) */
	FUNC0(&buf[1], &dcbcfg->etsrec);
}