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
struct wired_cmd_ake_send_pairing_info_out {TYPE_5__ header; TYPE_2__ member_0; } ;
struct TYPE_9__ {int /*<<< orphan*/  physical_port; int /*<<< orphan*/  integrated_port_type; } ;
struct TYPE_8__ {int /*<<< orphan*/  buffer_len; scalar_t__ status; int /*<<< orphan*/  command_id; int /*<<< orphan*/  api_version; } ;
struct TYPE_6__ {int /*<<< orphan*/  member_0; } ;
struct wired_cmd_ake_send_pairing_info_in {int /*<<< orphan*/  e_kh_km; TYPE_4__ port; TYPE_3__ header; TYPE_1__ member_0; } ;
struct mei_cl_device {int dummy; } ;
struct hdcp_port_data {int /*<<< orphan*/  port; int /*<<< orphan*/  port_type; } ;
struct hdcp2_ake_send_pairing_info {int /*<<< orphan*/  e_kh_km; } ;
struct device {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  pairing_info_out ;
typedef  int /*<<< orphan*/  pairing_info_in ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  HDCP_2_2_E_KH_KM_LEN ; 
 int /*<<< orphan*/  HDCP_API_VERSION ; 
 scalar_t__ ME_HDCP_STATUS_SUCCESS ; 
 int /*<<< orphan*/  WIRED_AKE_SEND_PAIRING_INFO ; 
 int /*<<< orphan*/  WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_IN ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,scalar_t__,...) ; 
 scalar_t__ FUNC1 (struct mei_cl_device*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (struct mei_cl_device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mei_cl_device* FUNC5 (struct device*) ; 

__attribute__((used)) static int
FUNC6(struct device *dev, struct hdcp_port_data *data,
			    struct hdcp2_ake_send_pairing_info *pairing_info)
{
	struct wired_cmd_ake_send_pairing_info_in pairing_info_in = { 0 };
	struct wired_cmd_ake_send_pairing_info_out pairing_info_out = { { 0 } };
	struct mei_cl_device *cldev;
	ssize_t byte;

	if (!dev || !data || !pairing_info)
		return -EINVAL;

	cldev = FUNC5(dev);

	pairing_info_in.header.api_version = HDCP_API_VERSION;
	pairing_info_in.header.command_id = WIRED_AKE_SEND_PAIRING_INFO;
	pairing_info_in.header.status = ME_HDCP_STATUS_SUCCESS;
	pairing_info_in.header.buffer_len =
					WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_IN;

	pairing_info_in.port.integrated_port_type = data->port_type;
	pairing_info_in.port.physical_port = FUNC3(data->port);

	FUNC4(pairing_info_in.e_kh_km, pairing_info->e_kh_km,
	       HDCP_2_2_E_KH_KM_LEN);

	byte = FUNC2(cldev, (u8 *)&pairing_info_in,
			      sizeof(pairing_info_in));
	if (byte < 0) {
		FUNC0(dev, "mei_cldev_send failed. %zd\n", byte);
		return byte;
	}

	byte = FUNC1(cldev, (u8 *)&pairing_info_out,
			      sizeof(pairing_info_out));
	if (byte < 0) {
		FUNC0(dev, "mei_cldev_recv failed. %zd\n", byte);
		return byte;
	}

	if (pairing_info_out.header.status != ME_HDCP_STATUS_SUCCESS) {
		FUNC0(dev, "ME cmd 0x%08X failed. Status: 0x%X\n",
			WIRED_AKE_SEND_PAIRING_INFO,
			pairing_info_out.header.status);
		return -EIO;
	}

	return 0;
}