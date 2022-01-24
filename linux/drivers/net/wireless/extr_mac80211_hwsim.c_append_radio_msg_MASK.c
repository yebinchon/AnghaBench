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
struct sk_buff {int dummy; } ;
struct hwsim_new_radio_params {int channels; scalar_t__ regd; scalar_t__ hwname; scalar_t__ use_chanctx; scalar_t__ p2p_device; scalar_t__ reg_strict; scalar_t__ reg_alpha2; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  HWSIM_ATTR_CHANNELS ; 
 int /*<<< orphan*/  HWSIM_ATTR_RADIO_ID ; 
 int /*<<< orphan*/  HWSIM_ATTR_RADIO_NAME ; 
 int /*<<< orphan*/  HWSIM_ATTR_REG_CUSTOM_REG ; 
 int /*<<< orphan*/  HWSIM_ATTR_REG_HINT_ALPHA2 ; 
 int /*<<< orphan*/  HWSIM_ATTR_REG_STRICT_REG ; 
 int /*<<< orphan*/  HWSIM_ATTR_SUPPORT_P2P_DEVICE ; 
 int /*<<< orphan*/  HWSIM_ATTR_USE_CHANCTX ; 
 scalar_t__* hwsim_world_regdom_custom ; 
 int FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, int id,
			    struct hwsim_new_radio_params *param)
{
	int ret;

	ret = FUNC3(skb, HWSIM_ATTR_RADIO_ID, id);
	if (ret < 0)
		return ret;

	if (param->channels) {
		ret = FUNC3(skb, HWSIM_ATTR_CHANNELS, param->channels);
		if (ret < 0)
			return ret;
	}

	if (param->reg_alpha2) {
		ret = FUNC1(skb, HWSIM_ATTR_REG_HINT_ALPHA2, 2,
			      param->reg_alpha2);
		if (ret < 0)
			return ret;
	}

	if (param->regd) {
		int i;

		for (i = 0; i < FUNC0(hwsim_world_regdom_custom); i++) {
			if (hwsim_world_regdom_custom[i] != param->regd)
				continue;

			ret = FUNC3(skb, HWSIM_ATTR_REG_CUSTOM_REG, i);
			if (ret < 0)
				return ret;
			break;
		}
	}

	if (param->reg_strict) {
		ret = FUNC2(skb, HWSIM_ATTR_REG_STRICT_REG);
		if (ret < 0)
			return ret;
	}

	if (param->p2p_device) {
		ret = FUNC2(skb, HWSIM_ATTR_SUPPORT_P2P_DEVICE);
		if (ret < 0)
			return ret;
	}

	if (param->use_chanctx) {
		ret = FUNC2(skb, HWSIM_ATTR_USE_CHANCTX);
		if (ret < 0)
			return ret;
	}

	if (param->hwname) {
		ret = FUNC1(skb, HWSIM_ATTR_RADIO_NAME,
			      FUNC4(param->hwname), param->hwname);
		if (ret < 0)
			return ret;
	}

	return 0;
}