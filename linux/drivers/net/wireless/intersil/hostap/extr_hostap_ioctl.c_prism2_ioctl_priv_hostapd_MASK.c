#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct prism2_hostapd_param {int cmd; } ;
struct iw_point {int length; int /*<<< orphan*/  pointer; } ;
struct TYPE_11__ {int /*<<< orphan*/  ap; } ;
typedef  TYPE_1__ local_info_t ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct prism2_hostapd_param*) ; 
#define  PRISM2_GET_ENCRYPTION 135 
#define  PRISM2_HOSTAPD_GET_RID 134 
 int PRISM2_HOSTAPD_MAX_BUF_SIZE ; 
#define  PRISM2_HOSTAPD_MLME 133 
#define  PRISM2_HOSTAPD_SCAN_REQ 132 
#define  PRISM2_HOSTAPD_SET_ASSOC_AP_ADDR 131 
#define  PRISM2_HOSTAPD_SET_GENERIC_ELEMENT 130 
#define  PRISM2_HOSTAPD_SET_RID 129 
#define  PRISM2_SET_ENCRYPTION 128 
 int FUNC1 (struct prism2_hostapd_param*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct prism2_hostapd_param*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct prism2_hostapd_param*) ; 
 struct prism2_hostapd_param* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct prism2_hostapd_param*) ; 
 int FUNC6 (TYPE_1__*,struct prism2_hostapd_param*,int) ; 
 int FUNC7 (TYPE_1__*,struct prism2_hostapd_param*,int) ; 
 int FUNC8 (TYPE_1__*,struct prism2_hostapd_param*) ; 
 int FUNC9 (TYPE_1__*,struct prism2_hostapd_param*) ; 
 int FUNC10 (TYPE_1__*,struct prism2_hostapd_param*,int) ; 
 int FUNC11 (TYPE_1__*,struct prism2_hostapd_param*,int) ; 
 int FUNC12 (TYPE_1__*,struct prism2_hostapd_param*,int) ; 
 int FUNC13 (TYPE_1__*,struct prism2_hostapd_param*,int) ; 

__attribute__((used)) static int FUNC14(local_info_t *local, struct iw_point *p)
{
	struct prism2_hostapd_param *param;
	int ret = 0;
	int ap_ioctl = 0;

	if (p->length < sizeof(struct prism2_hostapd_param) ||
	    p->length > PRISM2_HOSTAPD_MAX_BUF_SIZE || !p->pointer)
		return -EINVAL;

	param = FUNC4(p->pointer, p->length);
	if (FUNC0(param)) {
		return FUNC1(param);
	}

	switch (param->cmd) {
	case PRISM2_SET_ENCRYPTION:
		ret = FUNC11(local, param, p->length);
		break;
	case PRISM2_GET_ENCRYPTION:
		ret = FUNC6(local, param, p->length);
		break;
	case PRISM2_HOSTAPD_GET_RID:
		ret = FUNC7(local, param, p->length);
		break;
	case PRISM2_HOSTAPD_SET_RID:
		ret = FUNC13(local, param, p->length);
		break;
	case PRISM2_HOSTAPD_SET_ASSOC_AP_ADDR:
		ret = FUNC10(local, param, p->length);
		break;
	case PRISM2_HOSTAPD_SET_GENERIC_ELEMENT:
		ret = FUNC12(local, param,
						       p->length);
		break;
	case PRISM2_HOSTAPD_MLME:
		ret = FUNC8(local, param);
		break;
	case PRISM2_HOSTAPD_SCAN_REQ:
		ret = FUNC9(local, param);
		break;
	default:
		ret = FUNC5(local->ap, param);
		ap_ioctl = 1;
		break;
	}

	if (ret == 1 || !ap_ioctl) {
		if (FUNC2(p->pointer, param, p->length)) {
			ret = -EFAULT;
			goto out;
		} else if (ap_ioctl)
			ret = 0;
	}

 out:
	FUNC3(param);
	return ret;
}