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
struct wired_cmd_initiate_hdcp2_session_out {int /*<<< orphan*/  r_tx; int /*<<< orphan*/  tx_caps; TYPE_5__ header; TYPE_2__ member_0; } ;
struct TYPE_9__ {int /*<<< orphan*/  physical_port; int /*<<< orphan*/  integrated_port_type; } ;
struct TYPE_8__ {int /*<<< orphan*/  buffer_len; scalar_t__ status; int /*<<< orphan*/  command_id; int /*<<< orphan*/  api_version; } ;
struct TYPE_6__ {int /*<<< orphan*/  member_0; } ;
struct wired_cmd_initiate_hdcp2_session_in {int /*<<< orphan*/  protocol; TYPE_4__ port; TYPE_3__ header; TYPE_1__ member_0; } ;
struct mei_cl_device {int dummy; } ;
struct hdcp_port_data {int /*<<< orphan*/  protocol; int /*<<< orphan*/  port; int /*<<< orphan*/  port_type; } ;
struct hdcp2_ake_init {int /*<<< orphan*/  r_tx; int /*<<< orphan*/  tx_caps; int /*<<< orphan*/  msg_id; } ;
struct device {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  session_init_out ;
typedef  int /*<<< orphan*/  session_init_in ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  HDCP_2_2_AKE_INIT ; 
 int /*<<< orphan*/  HDCP_2_2_RTX_LEN ; 
 int /*<<< orphan*/  HDCP_API_VERSION ; 
 scalar_t__ ME_HDCP_STATUS_SUCCESS ; 
 int /*<<< orphan*/  WIRED_CMD_BUF_LEN_INITIATE_HDCP2_SESSION_IN ; 
 int /*<<< orphan*/  WIRED_INITIATE_HDCP2_SESSION ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,scalar_t__,...) ; 
 scalar_t__ FUNC1 (struct mei_cl_device*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (struct mei_cl_device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mei_cl_device* FUNC5 (struct device*) ; 

__attribute__((used)) static int
FUNC6(struct device *dev, struct hdcp_port_data *data,
			  struct hdcp2_ake_init *ake_data)
{
	struct wired_cmd_initiate_hdcp2_session_in session_init_in = { 0 };
	struct wired_cmd_initiate_hdcp2_session_out
						session_init_out = { 0 };
	struct mei_cl_device *cldev;
	ssize_t byte;

	if (!dev || !data || !ake_data)
		return -EINVAL;

	cldev = FUNC5(dev);

	session_init_in.header.api_version = HDCP_API_VERSION;
	session_init_in.header.command_id = WIRED_INITIATE_HDCP2_SESSION;
	session_init_in.header.status = ME_HDCP_STATUS_SUCCESS;
	session_init_in.header.buffer_len =
				WIRED_CMD_BUF_LEN_INITIATE_HDCP2_SESSION_IN;

	session_init_in.port.integrated_port_type = data->port_type;
	session_init_in.port.physical_port = FUNC3(data->port);
	session_init_in.protocol = data->protocol;

	byte = FUNC2(cldev, (u8 *)&session_init_in,
			      sizeof(session_init_in));
	if (byte < 0) {
		FUNC0(dev, "mei_cldev_send failed. %zd\n", byte);
		return byte;
	}

	byte = FUNC1(cldev, (u8 *)&session_init_out,
			      sizeof(session_init_out));
	if (byte < 0) {
		FUNC0(dev, "mei_cldev_recv failed. %zd\n", byte);
		return byte;
	}

	if (session_init_out.header.status != ME_HDCP_STATUS_SUCCESS) {
		FUNC0(dev, "ME cmd 0x%08X Failed. Status: 0x%X\n",
			WIRED_INITIATE_HDCP2_SESSION,
			session_init_out.header.status);
		return -EIO;
	}

	ake_data->msg_id = HDCP_2_2_AKE_INIT;
	ake_data->tx_caps = session_init_out.tx_caps;
	FUNC4(ake_data->r_tx, session_init_out.r_tx, HDCP_2_2_RTX_LEN);

	return 0;
}