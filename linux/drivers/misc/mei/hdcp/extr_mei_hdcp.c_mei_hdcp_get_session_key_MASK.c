#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_10__ {scalar_t__ status; } ;
struct TYPE_7__ {int /*<<< orphan*/  member_0; } ;
struct wired_cmd_get_session_key_out {int /*<<< orphan*/  r_iv; int /*<<< orphan*/  e_dkey_ks; TYPE_5__ header; TYPE_2__ member_0; } ;
struct TYPE_9__ {int /*<<< orphan*/  physical_port; int /*<<< orphan*/  integrated_port_type; } ;
struct TYPE_8__ {int /*<<< orphan*/  buffer_len; scalar_t__ status; int /*<<< orphan*/  command_id; int /*<<< orphan*/  api_version; } ;
struct TYPE_6__ {int /*<<< orphan*/  member_0; } ;
struct wired_cmd_get_session_key_in {TYPE_4__ port; TYPE_3__ header; TYPE_1__ member_0; } ;
struct mei_cl_device {int dummy; } ;
struct hdcp_port_data {int /*<<< orphan*/  port; int /*<<< orphan*/  port_type; } ;
struct hdcp2_ske_send_eks {int /*<<< orphan*/  riv; int /*<<< orphan*/  e_dkey_ks; int /*<<< orphan*/  msg_id; } ;
struct device {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  get_skey_out ;
typedef  int /*<<< orphan*/  get_skey_in ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  HDCP_2_2_E_DKEY_KS_LEN ; 
 int /*<<< orphan*/  HDCP_2_2_RIV_LEN ; 
 int /*<<< orphan*/  HDCP_2_2_SKE_SEND_EKS ; 
 int /*<<< orphan*/  HDCP_API_VERSION ; 
 scalar_t__ ME_HDCP_STATUS_SUCCESS ; 
 int /*<<< orphan*/  WIRED_CMD_BUF_LEN_GET_SESSION_KEY_IN ; 
 int /*<<< orphan*/  WIRED_GET_SESSION_KEY ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,scalar_t__,...) ; 
 scalar_t__ FUNC1 (struct mei_cl_device*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (struct mei_cl_device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mei_cl_device* FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev,
				    struct hdcp_port_data *data,
				    struct hdcp2_ske_send_eks *ske_data)
{
	struct wired_cmd_get_session_key_in get_skey_in = { { 0 } };
	struct wired_cmd_get_session_key_out get_skey_out = { 0 };
	struct mei_cl_device *cldev;
	ssize_t byte;

	if (!dev || !data || !ske_data)
		return -EINVAL;

	cldev = FUNC5(dev);

	get_skey_in.header.api_version = HDCP_API_VERSION;
	get_skey_in.header.command_id = WIRED_GET_SESSION_KEY;
	get_skey_in.header.status = ME_HDCP_STATUS_SUCCESS;
	get_skey_in.header.buffer_len = WIRED_CMD_BUF_LEN_GET_SESSION_KEY_IN;

	get_skey_in.port.integrated_port_type = data->port_type;
	get_skey_in.port.physical_port = FUNC3(data->port);

	byte = FUNC2(cldev, (u8 *)&get_skey_in, sizeof(get_skey_in));
	if (byte < 0) {
		FUNC0(dev, "mei_cldev_send failed. %zd\n", byte);
		return byte;
	}

	byte = FUNC1(cldev, (u8 *)&get_skey_out, sizeof(get_skey_out));

	if (byte < 0) {
		FUNC0(dev, "mei_cldev_recv failed. %zd\n", byte);
		return byte;
	}

	if (get_skey_out.header.status != ME_HDCP_STATUS_SUCCESS) {
		FUNC0(dev, "ME cmd 0x%08X failed. status: 0x%X\n",
			WIRED_GET_SESSION_KEY, get_skey_out.header.status);
		return -EIO;
	}

	ske_data->msg_id = HDCP_2_2_SKE_SEND_EKS;
	FUNC4(ske_data->e_dkey_ks, get_skey_out.e_dkey_ks,
	       HDCP_2_2_E_DKEY_KS_LEN);
	FUNC4(ske_data->riv, get_skey_out.r_iv, HDCP_2_2_RIV_LEN);

	return 0;
}