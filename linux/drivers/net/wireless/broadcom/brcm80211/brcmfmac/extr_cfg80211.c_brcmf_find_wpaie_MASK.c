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
typedef  int /*<<< orphan*/  u32 ;
struct brcmf_vs_tlv {int dummy; } ;
struct brcmf_tlv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TLV_OUI_LEN ; 
 int /*<<< orphan*/  WLAN_EID_VENDOR_SPECIFIC ; 
 int /*<<< orphan*/  WPA_OUI ; 
 int /*<<< orphan*/  WPA_OUI_TYPE ; 
 struct brcmf_tlv* FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct brcmf_vs_tlv *
FUNC2(const u8 *parse, u32 len)
{
	const struct brcmf_tlv *ie;

	while ((ie = FUNC0(parse, len, WLAN_EID_VENDOR_SPECIFIC))) {
		if (FUNC1((const u8 *)ie, &parse, &len,
				     WPA_OUI, TLV_OUI_LEN, WPA_OUI_TYPE))
			return (struct brcmf_vs_tlv *)ie;
	}
	return NULL;
}