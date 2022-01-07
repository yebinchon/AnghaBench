
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_2__ {int v4_addr; int v6_addr; } ;
struct iscsi_path {int ip_addr_len; int pmtu; int vlan_id; TYPE_1__ dst; scalar_t__ handle; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct cnic_ulp_ops {int (* iscsi_nl_send_msg ) (int ,scalar_t__,char*,int) ;} ;
struct cnic_uio_dev {int uio_dev; } ;
struct cnic_sock {int mtu; int vlan_id; int * dst_ip; int flags; scalar_t__ l5_cid; } ;
struct cnic_local {int * ulp_handle; int * ulp_ops; struct cnic_uio_dev* udev; } ;
typedef int path_req ;


 size_t CNIC_ULP_ISCSI ;
 int ENODEV ;
 scalar_t__ ISCSI_KEVENT_IF_DOWN ;
 scalar_t__ ISCSI_KEVENT_PATH_REQ ;
 int SK_F_IPV6 ;
 int memcpy (int *,int *,int) ;
 int memset (struct iscsi_path*,int ,int) ;
 int msleep (int) ;
 struct cnic_ulp_ops* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (int ,scalar_t__,char*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int cnic_send_nlmsg(struct cnic_local *cp, u32 type,
      struct cnic_sock *csk)
{
 struct iscsi_path path_req;
 char *buf = ((void*)0);
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
  memset(&path_req, 0, len);

  msg_type = ISCSI_KEVENT_PATH_REQ;
  path_req.handle = (u64) csk->l5_cid;
  if (test_bit(SK_F_IPV6, &csk->flags)) {
   memcpy(&path_req.dst.v6_addr, &csk->dst_ip[0],
          sizeof(struct in6_addr));
   path_req.ip_addr_len = 16;
  } else {
   memcpy(&path_req.dst.v4_addr, &csk->dst_ip[0],
          sizeof(struct in_addr));
   path_req.ip_addr_len = 4;
  }
  path_req.vlan_id = csk->vlan_id;
  path_req.pmtu = csk->mtu;
 }

 while (retry < 3) {
  rc = 0;
  rcu_read_lock();
  ulp_ops = rcu_dereference(cp->ulp_ops[CNIC_ULP_ISCSI]);
  if (ulp_ops)
   rc = ulp_ops->iscsi_nl_send_msg(
    cp->ulp_handle[CNIC_ULP_ISCSI],
    msg_type, buf, len);
  rcu_read_unlock();
  if (rc == 0 || msg_type != ISCSI_KEVENT_PATH_REQ)
   break;

  msleep(100);
  retry++;
 }
 return rc;
}
