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
typedef  int /*<<< orphan*/  u32 ;
struct hfi_session_set_property_pkt {int dummy; } ;

/* Variables and functions */
 scalar_t__ HFI_VERSION_1XX ; 
 scalar_t__ HFI_VERSION_3XX ; 
 scalar_t__ hfi_ver ; 
 int FUNC0 (struct hfi_session_set_property_pkt*,void*,int /*<<< orphan*/ ,void*) ; 
 int FUNC1 (struct hfi_session_set_property_pkt*,void*,int /*<<< orphan*/ ,void*) ; 
 int FUNC2 (struct hfi_session_set_property_pkt*,void*,int /*<<< orphan*/ ,void*) ; 

int FUNC3(struct hfi_session_set_property_pkt *pkt,
			     void *cookie, u32 ptype, void *pdata)
{
	if (hfi_ver == HFI_VERSION_1XX)
		return FUNC0(pkt, cookie, ptype, pdata);

	if (hfi_ver == HFI_VERSION_3XX)
		return FUNC1(pkt, cookie, ptype, pdata);

	return FUNC2(pkt, cookie, ptype, pdata);
}