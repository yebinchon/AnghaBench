
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
typedef size_t u16 ;
struct niu_tcam_entry {int* key; int assoc_data; int valid; } ;
struct niu_parent {int index; struct niu_tcam_entry* tcam; } ;
struct niu {int dev; struct niu_parent* parent; } ;
struct ethtool_rx_flow_spec {int flow_type; int ring_cookie; scalar_t__ location; } ;
struct ethtool_rxnfc {int data; struct ethtool_rx_flow_spec fs; } ;




 int EINVAL ;


 scalar_t__ IPPROTO_ESP ;

 int RX_CLS_FLOW_DISC ;


 int TCAM_ASSOCDATA_DISC ;
 int TCAM_ASSOCDATA_OFFSET ;
 int TCAM_ASSOCDATA_OFFSET_SHIFT ;
 int TCAM_V4KEY0_CLASS_CODE ;
 int TCAM_V4KEY0_CLASS_CODE_SHIFT ;
 scalar_t__ TCAM_V4KEY2_PROTO ;
 scalar_t__ TCAM_V4KEY2_PROTO_SHIFT ;




 int netdev_info (int ,char*,int ,...) ;
 int niu_class_to_ethflow (int,int*) ;
 int niu_get_ip4fs_from_tcam_key (struct niu_tcam_entry*,struct ethtool_rx_flow_spec*) ;
 size_t tcam_get_index (struct niu*,size_t) ;
 int tcam_get_size (struct niu*) ;

__attribute__((used)) static int niu_get_ethtool_tcam_entry(struct niu *np,
          struct ethtool_rxnfc *nfc)
{
 struct niu_parent *parent = np->parent;
 struct niu_tcam_entry *tp;
 struct ethtool_rx_flow_spec *fsp = &nfc->fs;
 u16 idx;
 u64 class;
 int ret = 0;

 idx = tcam_get_index(np, (u16)nfc->fs.location);

 tp = &parent->tcam[idx];
 if (!tp->valid) {
  netdev_info(np->dev, "niu%d: entry [%d] invalid for idx[%d]\n",
       parent->index, (u16)nfc->fs.location, idx);
  return -EINVAL;
 }


 class = (tp->key[0] & TCAM_V4KEY0_CLASS_CODE) >>
  TCAM_V4KEY0_CLASS_CODE_SHIFT;
 ret = niu_class_to_ethflow(class, &fsp->flow_type);
 if (ret < 0) {
  netdev_info(np->dev, "niu%d: niu_class_to_ethflow failed\n",
       parent->index);
  goto out;
 }

 if (fsp->flow_type == 138 || fsp->flow_type == 137) {
  u32 proto = (tp->key[2] & TCAM_V4KEY2_PROTO) >>
   TCAM_V4KEY2_PROTO_SHIFT;
  if (proto == IPPROTO_ESP) {
   if (fsp->flow_type == 138)
    fsp->flow_type = 136;
   else
    fsp->flow_type = 135;
  }
 }

 switch (fsp->flow_type) {
 case 131:
 case 129:
 case 133:
 case 138:
 case 136:
  niu_get_ip4fs_from_tcam_key(tp, fsp);
  break;
 case 130:
 case 128:
 case 132:
 case 137:
 case 135:

  ret = -EINVAL;
  break;
 case 134:
  niu_get_ip4fs_from_tcam_key(tp, fsp);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 if (ret < 0)
  goto out;

 if (tp->assoc_data & TCAM_ASSOCDATA_DISC)
  fsp->ring_cookie = RX_CLS_FLOW_DISC;
 else
  fsp->ring_cookie = (tp->assoc_data & TCAM_ASSOCDATA_OFFSET) >>
   TCAM_ASSOCDATA_OFFSET_SHIFT;


 nfc->data = tcam_get_size(np);
out:
 return ret;
}
