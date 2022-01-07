
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_10__ {int dst; int src; } ;
struct TYPE_8__ {int dst; int src; } ;
struct TYPE_9__ {TYPE_2__ v4addrs; } ;
struct TYPE_7__ {int ip_proto; } ;
struct flow_keys {TYPE_4__ ports; TYPE_3__ addrs; TYPE_1__ basic; } ;
struct TYPE_11__ {int flags; void* dst_port; void* src_port; void* dst_addr; void* src_addr; int protocol; } ;
struct TYPE_12__ {TYPE_5__ ipv4; } ;
struct filter {TYPE_6__ u; int type; } ;
struct enic {int devcmd_lock; int vdev; } ;


 int CLSF_ADD ;
 int EPROTONOSUPPORT ;
 int FILTER_FIELDS_IPV4_5TUPLE ;
 int FILTER_IPV4_5TUPLE ;


 int PROTO_TCP ;
 int PROTO_UDP ;
 void* ntohl (int ) ;
 void* ntohs (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int vnic_dev_classifier (int ,int ,int*,struct filter*) ;

int enic_addfltr_5t(struct enic *enic, struct flow_keys *keys, u16 rq)
{
 int res;
 struct filter data;

 switch (keys->basic.ip_proto) {
 case 129:
  data.u.ipv4.protocol = PROTO_TCP;
  break;
 case 128:
  data.u.ipv4.protocol = PROTO_UDP;
  break;
 default:
  return -EPROTONOSUPPORT;
 }

 data.type = FILTER_IPV4_5TUPLE;
 data.u.ipv4.src_addr = ntohl(keys->addrs.v4addrs.src);
 data.u.ipv4.dst_addr = ntohl(keys->addrs.v4addrs.dst);
 data.u.ipv4.src_port = ntohs(keys->ports.src);
 data.u.ipv4.dst_port = ntohs(keys->ports.dst);
 data.u.ipv4.flags = FILTER_FIELDS_IPV4_5TUPLE;

 spin_lock_bh(&enic->devcmd_lock);
 res = vnic_dev_classifier(enic->vdev, CLSF_ADD, &rq, &data);
 spin_unlock_bh(&enic->devcmd_lock);
 res = (res == 0) ? rq : res;

 return res;
}
