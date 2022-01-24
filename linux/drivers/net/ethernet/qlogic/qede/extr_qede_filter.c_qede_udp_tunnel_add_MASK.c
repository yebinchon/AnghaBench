#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* u16 ;
typedef  int /*<<< orphan*/  tunn_params ;
struct udp_tunnel_info {int type; int /*<<< orphan*/  port; } ;
struct TYPE_4__ {int /*<<< orphan*/  geneve_enable; int /*<<< orphan*/  vxlan_enable; } ;
struct TYPE_5__ {TYPE_1__ common; } ;
struct qede_dev {void* geneve_dst_port; int /*<<< orphan*/  cdev; TYPE_3__* ops; TYPE_2__ dev_info; void* vxlan_dst_port; } ;
struct qed_tunn_params {int update_vxlan_port; int update_geneve_port; void* geneve_port; void* vxlan_port; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int (* tunn_config ) (int /*<<< orphan*/ ,struct qed_tunn_params*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,char*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct qede_dev*,int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  QED_MSG_DEBUG ; 
#define  UDP_TUNNEL_TYPE_GENEVE 129 
#define  UDP_TUNNEL_TYPE_VXLAN 128 
 int /*<<< orphan*/  FUNC2 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_tunn_params*,int /*<<< orphan*/ ,int) ; 
 struct qede_dev* FUNC5 (struct net_device*) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct qed_tunn_params*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct qed_tunn_params*) ; 

void FUNC9(struct net_device *dev, struct udp_tunnel_info *ti)
{
	struct qede_dev *edev = FUNC5(dev);
	struct qed_tunn_params tunn_params;
	u16 t_port = FUNC6(ti->port);
	int rc;

	FUNC4(&tunn_params, 0, sizeof(tunn_params));

	switch (ti->type) {
	case UDP_TUNNEL_TYPE_VXLAN:
		if (!edev->dev_info.common.vxlan_enable)
			return;

		if (edev->vxlan_dst_port)
			return;

		tunn_params.update_vxlan_port = 1;
		tunn_params.vxlan_port = t_port;

		FUNC2(edev);
		rc = edev->ops->tunn_config(edev->cdev, &tunn_params);
		FUNC3(edev);

		if (!rc) {
			edev->vxlan_dst_port = t_port;
			FUNC1(edev, QED_MSG_DEBUG, "Added vxlan port=%d\n",
				   t_port);
		} else {
			FUNC0(edev, "Failed to add vxlan UDP port=%d\n",
				  t_port);
		}

		break;
	case UDP_TUNNEL_TYPE_GENEVE:
		if (!edev->dev_info.common.geneve_enable)
			return;

		if (edev->geneve_dst_port)
			return;

		tunn_params.update_geneve_port = 1;
		tunn_params.geneve_port = t_port;

		FUNC2(edev);
		rc = edev->ops->tunn_config(edev->cdev, &tunn_params);
		FUNC3(edev);

		if (!rc) {
			edev->geneve_dst_port = t_port;
			FUNC1(edev, QED_MSG_DEBUG,
				   "Added geneve port=%d\n", t_port);
		} else {
			FUNC0(edev, "Failed to add geneve UDP port=%d\n",
				  t_port);
		}

		break;
	default:
		return;
	}
}