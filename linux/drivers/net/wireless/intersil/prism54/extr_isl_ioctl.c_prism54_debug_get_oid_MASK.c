#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  name; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; } ;
struct islpci_mgmtframe {int /*<<< orphan*/  data; TYPE_1__* header; } ;
struct TYPE_6__ {int priv_oid; int /*<<< orphan*/  ndev; } ;
typedef  TYPE_2__ islpci_private ;
struct TYPE_5__ {scalar_t__ operation; int length; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ PIMFOR_OP_ERROR ; 
 int /*<<< orphan*/  PIMFOR_OP_GET ; 
 scalar_t__ PRV_STATE_INIT ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct islpci_mgmtframe*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int,struct islpci_mgmtframe**) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int
FUNC6(struct net_device *ndev, struct iw_request_info *info,
		      struct iw_point *data, char *extra)
{
	islpci_private *priv = FUNC4(ndev);
	struct islpci_mgmtframe *response;
	int ret = -EIO;

	FUNC5("%s: get_oid 0x%08X\n", ndev->name, priv->priv_oid);
	data->length = 0;

	if (FUNC0(priv) >= PRV_STATE_INIT) {
		ret =
		    FUNC2(priv->ndev, PIMFOR_OP_GET,
					   priv->priv_oid, extra, 256,
					   &response);
		FUNC5("%s: ret: %i\n", ndev->name, ret);
		if (ret || !response
		    || response->header->operation == PIMFOR_OP_ERROR) {
			if (response) {
				FUNC1(response);
			}
			FUNC5("%s: EIO\n", ndev->name);
			ret = -EIO;
		}
		if (!ret) {
			data->length = response->header->length;
			FUNC3(extra, response->data, data->length);
			FUNC1(response);
			FUNC5("%s: len: %i\n", ndev->name, data->length);
		}
	}

	return ret;
}