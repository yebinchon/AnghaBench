#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  v4_addr; int /*<<< orphan*/  v6_addr; } ;
struct iscsi_path {int ip_addr_len; int /*<<< orphan*/  pmtu; int /*<<< orphan*/  vlan_id; TYPE_1__ dst; scalar_t__ handle; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct cnic_ulp_ops {int (* iscsi_nl_send_msg ) (int /*<<< orphan*/ ,scalar_t__,char*,int) ;} ;
struct cnic_uio_dev {int uio_dev; } ;
struct cnic_sock {int /*<<< orphan*/  mtu; int /*<<< orphan*/  vlan_id; int /*<<< orphan*/ * dst_ip; int /*<<< orphan*/  flags; scalar_t__ l5_cid; } ;
struct cnic_local {int /*<<< orphan*/ * ulp_handle; int /*<<< orphan*/ * ulp_ops; struct cnic_uio_dev* udev; } ;
typedef  int /*<<< orphan*/  path_req ;

/* Variables and functions */
 size_t CNIC_ULP_ISCSI ; 
 int ENODEV ; 
 scalar_t__ ISCSI_KEVENT_IF_DOWN ; 
 scalar_t__ ISCSI_KEVENT_PATH_REQ ; 
 int /*<<< orphan*/  SK_F_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_path*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct cnic_ulp_ops* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,char*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct cnic_local *cp, u32 type,
			   struct cnic_sock *csk)
{
	struct iscsi_path path_req;
	char *buf = NULL;
	u16 len = 0;
	u32 msg_type = ISCSI_KEVENT_IF_DOWN;
	struct cnic_ulp_ops *ulp_ops;
	struct cnic_uio_dev *udev = cp->udev;
	int rc = 0, retry = 0;

	if (!udev || udev->uio_dev == -1)
		return -ENODEV;

	if (csk) {
		len = sizeof(path_req);
		buf = (char *) &path_req;
		FUNC1(&path_req, 0, len);

		msg_type = ISCSI_KEVENT_PATH_REQ;
		path_req.handle = (u64) csk->l5_cid;
		if (FUNC7(SK_F_IPV6, &csk->flags)) {
			FUNC0(&path_req.dst.v6_addr, &csk->dst_ip[0],
			       sizeof(struct in6_addr));
			path_req.ip_addr_len = 16;
		} else {
			FUNC0(&path_req.dst.v4_addr, &csk->dst_ip[0],
			       sizeof(struct in_addr));
			path_req.ip_addr_len = 4;
		}
		path_req.vlan_id = csk->vlan_id;
		path_req.pmtu = csk->mtu;
	}

	while (retry < 3) {
		rc = 0;
		FUNC4();
		ulp_ops = FUNC3(cp->ulp_ops[CNIC_ULP_ISCSI]);
		if (ulp_ops)
			rc = ulp_ops->iscsi_nl_send_msg(
				cp->ulp_handle[CNIC_ULP_ISCSI],
				msg_type, buf, len);
		FUNC5();
		if (rc == 0 || msg_type != ISCSI_KEVENT_PATH_REQ)
			break;

		FUNC2(100);
		retry++;
	}
	return rc;
}