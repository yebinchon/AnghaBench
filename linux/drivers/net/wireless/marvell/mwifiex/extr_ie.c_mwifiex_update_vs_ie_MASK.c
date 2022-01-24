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
typedef  int /*<<< orphan*/  u16 ;
struct mwifiex_ie {scalar_t__ ie_buffer; void* ie_index; void* mgmt_subtype_mask; int /*<<< orphan*/  ie_length; } ;
struct ieee_types_header {scalar_t__ len; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IEEE_MAX_IE_SIZE ; 
 int /*<<< orphan*/  MWIFIEX_AUTO_IDX_MASK ; 
 int /*<<< orphan*/ * FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 struct mwifiex_ie* FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,struct ieee_types_header*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(const u8 *ies, int ies_len,
				struct mwifiex_ie **ie_ptr, u16 mask,
				unsigned int oui, u8 oui_type)
{
	struct ieee_types_header *vs_ie;
	struct mwifiex_ie *ie = *ie_ptr;
	const u8 *vendor_ie;

	vendor_ie = FUNC0(oui, oui_type, ies, ies_len);
	if (vendor_ie) {
		if (!*ie_ptr) {
			*ie_ptr = FUNC2(sizeof(struct mwifiex_ie),
					  GFP_KERNEL);
			if (!*ie_ptr)
				return -ENOMEM;
			ie = *ie_ptr;
		}

		vs_ie = (struct ieee_types_header *)vendor_ie;
		if (FUNC3(ie->ie_length) + vs_ie->len + 2 >
			IEEE_MAX_IE_SIZE)
			return -EINVAL;
		FUNC5(ie->ie_buffer + FUNC3(ie->ie_length),
		       vs_ie, vs_ie->len + 2);
		FUNC4(&ie->ie_length, vs_ie->len + 2);
		ie->mgmt_subtype_mask = FUNC1(mask);
		ie->ie_index = FUNC1(MWIFIEX_AUTO_IDX_MASK);
	}

	*ie_ptr = ie;
	return 0;
}