#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {size_t idx; int /*<<< orphan*/  seq; scalar_t__ key; int /*<<< orphan*/  key_len; int /*<<< orphan*/  alg; scalar_t__ err; } ;
struct TYPE_10__ {TYPE_3__ crypt; } ;
struct prism2_hostapd_param {TYPE_4__ u; int /*<<< orphan*/  sta_addr; } ;
struct lib80211_crypt_data {int /*<<< orphan*/  priv; TYPE_2__* ops; } ;
struct TYPE_7__ {size_t tx_keyidx; struct lib80211_crypt_data** crypt; } ;
struct TYPE_11__ {int /*<<< orphan*/  ap; TYPE_1__ crypt_info; } ;
typedef  TYPE_5__ local_info_t ;
struct TYPE_8__ {int /*<<< orphan*/  (* get_key ) (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HOSTAP_CRYPT_ALG_NAME_LEN ; 
 scalar_t__ HOSTAP_CRYPT_ERR_UNKNOWN_ADDR ; 
 size_t WEP_KEYS ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lib80211_crypt_data***) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(local_info_t *local,
				       struct prism2_hostapd_param *param,
				       int param_len)
{
	struct lib80211_crypt_data **crypt;
	void *sta_ptr;
	int max_key_len;

	param->u.crypt.err = 0;

	max_key_len = param_len -
		(int) ((char *) param->u.crypt.key - (char *) param);
	if (max_key_len < 0)
		return -EINVAL;

	if (FUNC2(param->sta_addr)) {
		sta_ptr = NULL;
		if (param->u.crypt.idx >= WEP_KEYS)
			param->u.crypt.idx = local->crypt_info.tx_keyidx;
		crypt = &local->crypt_info.crypt[param->u.crypt.idx];
	} else {
		param->u.crypt.idx = 0;
		sta_ptr = FUNC0(local->ap, param->sta_addr, 0,
					    &crypt);

		if (sta_ptr == NULL) {
			param->u.crypt.err = HOSTAP_CRYPT_ERR_UNKNOWN_ADDR;
			return -EINVAL;
		}
	}

	if (*crypt == NULL || (*crypt)->ops == NULL) {
		FUNC3(param->u.crypt.alg, "none", 5);
		param->u.crypt.key_len = 0;
		param->u.crypt.idx = 0xff;
	} else {
		FUNC5(param->u.crypt.alg, (*crypt)->ops->name,
			HOSTAP_CRYPT_ALG_NAME_LEN);
		param->u.crypt.key_len = 0;

		FUNC4(param->u.crypt.seq, 0, 8);
		if ((*crypt)->ops->get_key) {
			param->u.crypt.key_len =
				(*crypt)->ops->get_key(param->u.crypt.key,
						       max_key_len,
						       param->u.crypt.seq,
						       (*crypt)->priv);
		}
	}

	if (sta_ptr)
		FUNC1(sta_ptr);

	return 0;
}