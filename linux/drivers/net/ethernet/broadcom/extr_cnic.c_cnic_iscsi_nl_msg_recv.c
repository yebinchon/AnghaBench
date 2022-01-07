
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int v4_addr; int v6_addr; } ;
struct iscsi_path {TYPE_1__ src; int * mac_addr; int vlan_id; int handle; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct cnic_sock {int flags; int * ha; int * src_ip; int vlan_id; } ;
struct cnic_local {struct cnic_sock* csk_tbl; int * ulp_ops; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;


 size_t CNIC_ULP_L4 ;
 int EINVAL ;
 int ENODEV ;
 int ETH_ALEN ;

 int L4_KCQE_OPCODE_VALUE_CONNECT_COMPLETE ;
 int MAX_CM_SK_TBL_SZ ;
 int SK_F_CONNECT_START ;
 int SK_F_IPV6 ;
 int SK_F_OFFLD_COMPLETE ;
 int SK_F_OFFLD_SCHED ;
 int clear_bit (int ,int *) ;
 int cnic_cm_set_pg (struct cnic_sock*) ;
 int cnic_cm_upcall (struct cnic_local*,struct cnic_sock*,int ) ;
 int cnic_in_use (struct cnic_sock*) ;
 int csk_hold (struct cnic_sock*) ;
 int csk_put (struct cnic_sock*) ;
 int is_valid_ether_addr (int *) ;
 int memcpy (int *,int *,int) ;
 int rcu_access_pointer (int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int cnic_iscsi_nl_msg_recv(struct cnic_dev *dev, u32 msg_type,
      char *buf, u16 len)
{
 int rc = -EINVAL;

 switch (msg_type) {
 case 128: {
  struct cnic_local *cp;
  u32 l5_cid;
  struct cnic_sock *csk;
  struct iscsi_path *path_resp;

  if (len < sizeof(*path_resp))
   break;

  path_resp = (struct iscsi_path *) buf;
  cp = dev->cnic_priv;
  l5_cid = (u32) path_resp->handle;
  if (l5_cid >= MAX_CM_SK_TBL_SZ)
   break;

  if (!rcu_access_pointer(cp->ulp_ops[CNIC_ULP_L4])) {
   rc = -ENODEV;
   break;
  }
  csk = &cp->csk_tbl[l5_cid];
  csk_hold(csk);
  if (cnic_in_use(csk) &&
      test_bit(SK_F_CONNECT_START, &csk->flags)) {

   csk->vlan_id = path_resp->vlan_id;

   memcpy(csk->ha, path_resp->mac_addr, ETH_ALEN);
   if (test_bit(SK_F_IPV6, &csk->flags))
    memcpy(&csk->src_ip[0], &path_resp->src.v6_addr,
           sizeof(struct in6_addr));
   else
    memcpy(&csk->src_ip[0], &path_resp->src.v4_addr,
           sizeof(struct in_addr));

   if (is_valid_ether_addr(csk->ha)) {
    cnic_cm_set_pg(csk);
   } else if (!test_bit(SK_F_OFFLD_SCHED, &csk->flags) &&
    !test_bit(SK_F_OFFLD_COMPLETE, &csk->flags)) {

    cnic_cm_upcall(cp, csk,
     L4_KCQE_OPCODE_VALUE_CONNECT_COMPLETE);
    clear_bit(SK_F_CONNECT_START, &csk->flags);
   }
  }
  csk_put(csk);
  rc = 0;
 }
 }

 return rc;
}
