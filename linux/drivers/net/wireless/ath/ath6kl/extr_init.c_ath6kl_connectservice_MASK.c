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
struct htc_service_connect_resp {int /*<<< orphan*/  endpoint; } ;
struct htc_service_connect_req {int svc_id; } ;
struct ath6kl {int /*<<< orphan*/  ctrl_ep; int /*<<< orphan*/  wmi; int /*<<< orphan*/  flag; int /*<<< orphan*/  htc_target; } ;
typedef  int /*<<< orphan*/  response ;

/* Variables and functions */
 int EINVAL ; 
#define  WMI_CONTROL_SVC 132 
#define  WMI_DATA_BE_SVC 131 
#define  WMI_DATA_BK_SVC 130 
#define  WMI_DATA_VI_SVC 129 
#define  WMI_DATA_VO_SVC 128 
 int /*<<< orphan*/  WMI_ENABLED ; 
 int /*<<< orphan*/  WMM_AC_BE ; 
 int /*<<< orphan*/  WMM_AC_BK ; 
 int /*<<< orphan*/  WMM_AC_VI ; 
 int /*<<< orphan*/  WMM_AC_VO ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct htc_service_connect_req*,struct htc_service_connect_resp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct htc_service_connect_resp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath6kl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct ath6kl *ar,
				 struct htc_service_connect_req  *con_req,
				 char *desc)
{
	int status;
	struct htc_service_connect_resp response;

	FUNC3(&response, 0, sizeof(response));

	status = FUNC1(ar->htc_target, con_req, &response);
	if (status) {
		FUNC0("failed to connect to %s service status:%d\n",
			   desc, status);
		return status;
	}

	switch (con_req->svc_id) {
	case WMI_CONTROL_SVC:
		if (FUNC5(WMI_ENABLED, &ar->flag))
			FUNC2(ar->wmi, response.endpoint);
		ar->ctrl_ep = response.endpoint;
		break;
	case WMI_DATA_BE_SVC:
		FUNC4(ar, WMM_AC_BE, response.endpoint);
		break;
	case WMI_DATA_BK_SVC:
		FUNC4(ar, WMM_AC_BK, response.endpoint);
		break;
	case WMI_DATA_VI_SVC:
		FUNC4(ar, WMM_AC_VI, response.endpoint);
		break;
	case WMI_DATA_VO_SVC:
		FUNC4(ar, WMM_AC_VO, response.endpoint);
		break;
	default:
		FUNC0("service id is not mapped %d\n", con_req->svc_id);
		return -EINVAL;
	}

	return 0;
}