#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct mei_msg_hdr {int length; } ;
struct mei_hbm_cl_cmd {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  minor_version; int /*<<< orphan*/  major_version; } ;
struct mei_device {scalar_t__ hbm_state; int /*<<< orphan*/  dev; int /*<<< orphan*/  dev_state; int /*<<< orphan*/  init_clients_timer; int /*<<< orphan*/  me_clients_map; int /*<<< orphan*/  hbm_f_dr_supported; int /*<<< orphan*/  wait_hbm_start; TYPE_1__ version; scalar_t__ rd_msg_buf; } ;
struct mei_bus_message {int hbm_cmd; } ;
struct hbm_props_response {int /*<<< orphan*/  me_addr; int /*<<< orphan*/  status; } ;
struct TYPE_4__ {int /*<<< orphan*/  minor_version; int /*<<< orphan*/  major_version; } ;
struct hbm_host_version_response {TYPE_2__ me_max_version; int /*<<< orphan*/  host_version_supported; } ;
struct hbm_host_enum_response {int /*<<< orphan*/  valid_addresses; } ;
struct hbm_flow_control {int dummy; } ;
struct hbm_dma_setup_response {int /*<<< orphan*/  status; } ;
struct hbm_client_connect_request {int dummy; } ;
struct hbm_add_client_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  CLIENT_CONNECT_RES_CMD 142 
#define  CLIENT_DISCONNECT_REQ_CMD 141 
#define  CLIENT_DISCONNECT_RES_CMD 140 
 int EIO ; 
 int EPROTO ; 
 int /*<<< orphan*/  HBM_MAJOR_VERSION ; 
 int /*<<< orphan*/  HBM_MINOR_VERSION ; 
#define  HOST_CLIENT_PROPERTIES_RES_CMD 139 
#define  HOST_ENUM_RES_CMD 138 
#define  HOST_START_RES_CMD 137 
#define  HOST_STOP_RES_CMD 136 
 int /*<<< orphan*/  MEI_DEV_INIT_CLIENTS ; 
 int /*<<< orphan*/  MEI_DEV_POWER_DOWN ; 
#define  MEI_FLOW_CONTROL_CMD 135 
 int /*<<< orphan*/  MEI_FOP_CONNECT ; 
 int /*<<< orphan*/  MEI_FOP_DISCONNECT ; 
 int /*<<< orphan*/  MEI_HBMS_CLIENT_NOT_FOUND ; 
 int /*<<< orphan*/  MEI_HBMS_NOT_ALLOWED ; 
#define  MEI_HBM_ADD_CLIENT_REQ_CMD 134 
 scalar_t__ MEI_HBM_CLIENT_PROPERTIES ; 
#define  MEI_HBM_DMA_SETUP_RES_CMD 133 
 scalar_t__ MEI_HBM_DR_SETUP ; 
 scalar_t__ MEI_HBM_ENUM_CLIENTS ; 
 scalar_t__ MEI_HBM_IDLE ; 
#define  MEI_HBM_NOTIFICATION_CMD 132 
#define  MEI_HBM_NOTIFY_RES_CMD 131 
 scalar_t__ MEI_HBM_STARTING ; 
 void* MEI_HBM_STOPPED ; 
#define  MEI_PG_ISOLATION_ENTRY_RES_CMD 130 
#define  MEI_PG_ISOLATION_EXIT_REQ_CMD 129 
#define  ME_STOP_REQ_CMD 128 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct mei_device*,struct mei_hbm_cl_cmd*) ; 
 int /*<<< orphan*/  FUNC11 (struct mei_device*,struct mei_hbm_cl_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mei_device*,struct hbm_flow_control*) ; 
 int /*<<< orphan*/  FUNC13 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct mei_device*) ; 
 int FUNC16 (struct mei_device*,struct hbm_add_client_request*) ; 
 int /*<<< orphan*/  FUNC17 (struct mei_device*,struct hbm_client_connect_request*) ; 
 int /*<<< orphan*/  FUNC18 (struct mei_device*,struct hbm_props_response*) ; 
 int FUNC19 (struct mei_device*) ; 
 int FUNC20 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct mei_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC25 (struct mei_device*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC27 (struct mei_hbm_cl_cmd*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 

int FUNC29(struct mei_device *dev, struct mei_msg_hdr *hdr)
{
	struct mei_bus_message *mei_msg;
	struct hbm_host_version_response *version_res;
	struct hbm_props_response *props_res;
	struct hbm_host_enum_response *enum_res;
	struct hbm_dma_setup_response *dma_setup_res;
	struct hbm_add_client_request *add_cl_req;
	int ret;

	struct mei_hbm_cl_cmd *cl_cmd;
	struct hbm_client_connect_request *disconnect_req;
	struct hbm_flow_control *fctrl;

	/* read the message to our buffer */
	FUNC0(hdr->length >= sizeof(dev->rd_msg_buf));
	FUNC25(dev, dev->rd_msg_buf, hdr->length);
	mei_msg = (struct mei_bus_message *)dev->rd_msg_buf;
	cl_cmd  = (struct mei_hbm_cl_cmd *)mei_msg;

	/* ignore spurious message and prevent reset nesting
	 * hbm is put to idle during system reset
	 */
	if (dev->hbm_state == MEI_HBM_IDLE) {
		FUNC3(dev->dev, "hbm: state is idle ignore spurious messages\n");
		return 0;
	}

	switch (mei_msg->hbm_cmd) {
	case HOST_START_RES_CMD:
		FUNC3(dev->dev, "hbm: start: response message received.\n");

		dev->init_clients_timer = 0;

		version_res = (struct hbm_host_version_response *)mei_msg;

		FUNC3(dev->dev, "HBM VERSION: DRIVER=%02d:%02d DEVICE=%02d:%02d\n",
				HBM_MAJOR_VERSION, HBM_MINOR_VERSION,
				version_res->me_max_version.major_version,
				version_res->me_max_version.minor_version);

		if (version_res->host_version_supported) {
			dev->version.major_version = HBM_MAJOR_VERSION;
			dev->version.minor_version = HBM_MINOR_VERSION;
		} else {
			dev->version.major_version =
				version_res->me_max_version.major_version;
			dev->version.minor_version =
				version_res->me_max_version.minor_version;
		}

		if (!FUNC24(dev)) {
			FUNC6(dev->dev, "hbm: start: version mismatch - stopping the driver.\n");

			dev->hbm_state = MEI_HBM_STOPPED;
			if (FUNC23(dev)) {
				FUNC4(dev->dev, "hbm: start: failed to send stop request\n");
				return -EIO;
			}
			break;
		}

		FUNC13(dev);

		if (dev->dev_state != MEI_DEV_INIT_CLIENTS ||
		    dev->hbm_state != MEI_HBM_STARTING) {
			FUNC4(dev->dev, "hbm: start: state mismatch, [%d, %d]\n",
				dev->dev_state, dev->hbm_state);
			return -EPROTO;
		}

		if (dev->hbm_f_dr_supported) {
			if (FUNC8(dev))
				FUNC5(dev->dev, "running w/o dma ring\n");
			if (FUNC7(dev)) {
				if (FUNC14(dev))
					return -EIO;

				FUNC28(&dev->wait_hbm_start);
				break;
			}
		}

		dev->hbm_f_dr_supported = 0;
		FUNC9(dev);

		if (FUNC15(dev))
			return -EIO;

		FUNC28(&dev->wait_hbm_start);
		break;

	case MEI_HBM_DMA_SETUP_RES_CMD:
		FUNC3(dev->dev, "hbm: dma setup response: message received.\n");

		dev->init_clients_timer = 0;

		if (dev->hbm_state != MEI_HBM_DR_SETUP) {
			FUNC4(dev->dev, "hbm: dma setup response: state mismatch, [%d, %d]\n",
				dev->dev_state, dev->hbm_state);
			return -EPROTO;
		}

		dma_setup_res = (struct hbm_dma_setup_response *)mei_msg;

		if (dma_setup_res->status) {
			u8 status = dma_setup_res->status;

			if (status == MEI_HBMS_NOT_ALLOWED) {
				FUNC3(dev->dev, "hbm: dma setup not allowed\n");
			} else {
				FUNC5(dev->dev, "hbm: dma setup response: failure = %d %s\n",
					 status,
					 FUNC22(status));
			}
			dev->hbm_f_dr_supported = 0;
			FUNC9(dev);
		}

		if (FUNC15(dev))
			return -EIO;
		break;

	case CLIENT_CONNECT_RES_CMD:
		FUNC3(dev->dev, "hbm: client connect response: message received.\n");
		FUNC11(dev, cl_cmd, MEI_FOP_CONNECT);
		break;

	case CLIENT_DISCONNECT_RES_CMD:
		FUNC3(dev->dev, "hbm: client disconnect response: message received.\n");
		FUNC11(dev, cl_cmd, MEI_FOP_DISCONNECT);
		break;

	case MEI_FLOW_CONTROL_CMD:
		FUNC3(dev->dev, "hbm: client flow control response: message received.\n");

		fctrl = (struct hbm_flow_control *)mei_msg;
		FUNC12(dev, fctrl);
		break;

	case MEI_PG_ISOLATION_ENTRY_RES_CMD:
		FUNC3(dev->dev, "hbm: power gate isolation entry response received\n");
		ret = FUNC19(dev);
		if (ret)
			return ret;
		break;

	case MEI_PG_ISOLATION_EXIT_REQ_CMD:
		FUNC3(dev->dev, "hbm: power gate isolation exit request received\n");
		ret = FUNC20(dev);
		if (ret)
			return ret;
		break;

	case HOST_CLIENT_PROPERTIES_RES_CMD:
		FUNC3(dev->dev, "hbm: properties response: message received.\n");

		dev->init_clients_timer = 0;

		if (dev->dev_state != MEI_DEV_INIT_CLIENTS ||
		    dev->hbm_state != MEI_HBM_CLIENT_PROPERTIES) {
			FUNC4(dev->dev, "hbm: properties response: state mismatch, [%d, %d]\n",
				dev->dev_state, dev->hbm_state);
			return -EPROTO;
		}

		props_res = (struct hbm_props_response *)mei_msg;

		if (props_res->status == MEI_HBMS_CLIENT_NOT_FOUND) {
			FUNC3(dev->dev, "hbm: properties response: %d CLIENT_NOT_FOUND\n",
				props_res->me_addr);
		} else if (props_res->status) {
			FUNC4(dev->dev, "hbm: properties response: wrong status = %d %s\n",
				props_res->status,
				FUNC22(props_res->status));
			return -EPROTO;
		} else {
			FUNC18(dev, props_res);
		}

		/* request property for the next client */
		if (FUNC21(dev, props_res->me_addr + 1))
			return -EIO;

		break;

	case HOST_ENUM_RES_CMD:
		FUNC3(dev->dev, "hbm: enumeration response: message received\n");

		dev->init_clients_timer = 0;

		enum_res = (struct hbm_host_enum_response *) mei_msg;
		FUNC1(sizeof(dev->me_clients_map)
				< sizeof(enum_res->valid_addresses));
		FUNC26(dev->me_clients_map, enum_res->valid_addresses,
				sizeof(enum_res->valid_addresses));

		if (dev->dev_state != MEI_DEV_INIT_CLIENTS ||
		    dev->hbm_state != MEI_HBM_ENUM_CLIENTS) {
			FUNC4(dev->dev, "hbm: enumeration response: state mismatch, [%d, %d]\n",
				dev->dev_state, dev->hbm_state);
			return -EPROTO;
		}

		dev->hbm_state = MEI_HBM_CLIENT_PROPERTIES;

		/* first property request */
		if (FUNC21(dev, 0))
			return -EIO;

		break;

	case HOST_STOP_RES_CMD:
		FUNC3(dev->dev, "hbm: stop response: message received\n");

		dev->init_clients_timer = 0;

		if (dev->hbm_state != MEI_HBM_STOPPED) {
			FUNC4(dev->dev, "hbm: stop response: state mismatch, [%d, %d]\n",
				dev->dev_state, dev->hbm_state);
			return -EPROTO;
		}

		dev->dev_state = MEI_DEV_POWER_DOWN;
		FUNC5(dev->dev, "hbm: stop response: resetting.\n");
		/* force the reset */
		return -EPROTO;
		break;

	case CLIENT_DISCONNECT_REQ_CMD:
		FUNC3(dev->dev, "hbm: disconnect request: message received\n");

		disconnect_req = (struct hbm_client_connect_request *)mei_msg;
		FUNC17(dev, disconnect_req);
		break;

	case ME_STOP_REQ_CMD:
		FUNC3(dev->dev, "hbm: stop request: message received\n");
		dev->hbm_state = MEI_HBM_STOPPED;
		if (FUNC23(dev)) {
			FUNC4(dev->dev, "hbm: stop request: failed to send stop request\n");
			return -EIO;
		}
		break;

	case MEI_HBM_ADD_CLIENT_REQ_CMD:
		FUNC3(dev->dev, "hbm: add client request received\n");
		/*
		 * after the host receives the enum_resp
		 * message clients may be added or removed
		 */
		if (dev->hbm_state <= MEI_HBM_ENUM_CLIENTS ||
		    dev->hbm_state >= MEI_HBM_STOPPED) {
			FUNC4(dev->dev, "hbm: add client: state mismatch, [%d, %d]\n",
				dev->dev_state, dev->hbm_state);
			return -EPROTO;
		}
		add_cl_req = (struct hbm_add_client_request *)mei_msg;
		ret = FUNC16(dev, add_cl_req);
		if (ret) {
			FUNC4(dev->dev, "hbm: add client: failed to send response %d\n",
				ret);
			return -EIO;
		}
		FUNC3(dev->dev, "hbm: add client request processed\n");
		break;

	case MEI_HBM_NOTIFY_RES_CMD:
		FUNC3(dev->dev, "hbm: notify response received\n");
		FUNC11(dev, cl_cmd, FUNC27(cl_cmd));
		break;

	case MEI_HBM_NOTIFICATION_CMD:
		FUNC3(dev->dev, "hbm: notification\n");
		FUNC10(dev, cl_cmd);
		break;

	default:
		FUNC2(1, "hbm: wrong command %d\n", mei_msg->hbm_cmd);
		return -EPROTO;

	}
	return 0;
}