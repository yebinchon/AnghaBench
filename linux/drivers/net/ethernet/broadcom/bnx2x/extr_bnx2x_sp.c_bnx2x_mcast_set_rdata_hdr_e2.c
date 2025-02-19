
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int rule_cnt; int echo; } ;
struct eth_multicast_rules_ramrod_data {TYPE_2__ header; } ;
struct bnx2x_raw_obj {int cid; scalar_t__ rdata; } ;
struct bnx2x_mcast_ramrod_params {TYPE_1__* mcast_obj; } ;
struct bnx2x {int dummy; } ;
struct TYPE_3__ {struct bnx2x_raw_obj raw; } ;


 int BNX2X_FILTER_MCAST_PENDING ;
 int BNX2X_SWCID_MASK ;
 int BNX2X_SWCID_SHIFT ;
 int cpu_to_le32 (int) ;

__attribute__((used)) static inline void bnx2x_mcast_set_rdata_hdr_e2(struct bnx2x *bp,
     struct bnx2x_mcast_ramrod_params *p,
     u8 len)
{
 struct bnx2x_raw_obj *r = &p->mcast_obj->raw;
 struct eth_multicast_rules_ramrod_data *data =
  (struct eth_multicast_rules_ramrod_data *)(r->rdata);

 data->header.echo = cpu_to_le32((r->cid & BNX2X_SWCID_MASK) |
     (BNX2X_FILTER_MCAST_PENDING <<
      BNX2X_SWCID_SHIFT));
 data->header.rule_cnt = len;
}
