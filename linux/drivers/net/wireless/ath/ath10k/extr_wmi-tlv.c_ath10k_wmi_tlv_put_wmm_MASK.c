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
struct wmi_wmm_params_arg {int dummy; } ;
struct wmi_wmm_params {int dummy; } ;
struct wmi_tlv {scalar_t__ value; void* len; void* tag; } ;

/* Variables and functions */
 int WMI_TLV_TAG_STRUCT_WMM_PARAMS ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct wmi_wmm_params*,struct wmi_wmm_params_arg const*) ; 

__attribute__((used)) static void *FUNC2(void *ptr,
				    const struct wmi_wmm_params_arg *arg)
{
	struct wmi_wmm_params *wmm;
	struct wmi_tlv *tlv;

	tlv = ptr;
	tlv->tag = FUNC0(WMI_TLV_TAG_STRUCT_WMM_PARAMS);
	tlv->len = FUNC0(sizeof(*wmm));
	wmm = (void *)tlv->value;
	FUNC1(wmm, arg);

	return ptr + sizeof(*tlv) + sizeof(*wmm);
}