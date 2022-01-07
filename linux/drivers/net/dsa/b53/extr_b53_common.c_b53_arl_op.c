
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct b53_device {int dummy; } ;
struct b53_arl_entry {int port; int is_valid; int is_static; int mac; int vid; } ;
typedef int ent ;


 int B53_ARLIO_PAGE ;
 int B53_ARLTBL_DATA_ENTRY (int) ;
 int B53_ARLTBL_MAC_VID_ENTRY (int) ;
 int B53_MAC_ADDR_IDX ;
 int B53_VLAN_ID_IDX ;
 int ETH_ALEN ;
 int b53_arl_from_entry (int *,scalar_t__*,struct b53_arl_entry*) ;
 int b53_arl_read (struct b53_device*,int ,int ,struct b53_arl_entry*,int*,int) ;
 int b53_arl_rw_op (struct b53_device*,int) ;
 int b53_write16 (struct b53_device*,int ,int ,int ) ;
 int b53_write32 (struct b53_device*,int ,int ,scalar_t__) ;
 int b53_write48 (struct b53_device*,int ,int ,int ) ;
 int b53_write64 (struct b53_device*,int ,int ,int ) ;
 int ether_addr_to_u64 (unsigned char const*) ;
 int memcpy (int ,unsigned char const*,int ) ;
 int memset (struct b53_arl_entry*,int ,int) ;

__attribute__((used)) static int b53_arl_op(struct b53_device *dev, int op, int port,
        const unsigned char *addr, u16 vid, bool is_valid)
{
 struct b53_arl_entry ent;
 u32 fwd_entry;
 u64 mac, mac_vid = 0;
 u8 idx = 0;
 int ret;


 mac = ether_addr_to_u64(addr);


 b53_write48(dev, B53_ARLIO_PAGE, B53_MAC_ADDR_IDX, mac);
 b53_write16(dev, B53_ARLIO_PAGE, B53_VLAN_ID_IDX, vid);


 ret = b53_arl_rw_op(dev, 1);
 if (ret)
  return ret;

 ret = b53_arl_read(dev, mac, vid, &ent, &idx, is_valid);

 if (op)
  return ret;


 if (ret) {
  fwd_entry = 0;
  idx = 1;
 }

 memset(&ent, 0, sizeof(ent));
 ent.port = port;
 ent.is_valid = is_valid;
 ent.vid = vid;
 ent.is_static = 1;
 memcpy(ent.mac, addr, ETH_ALEN);
 b53_arl_from_entry(&mac_vid, &fwd_entry, &ent);

 b53_write64(dev, B53_ARLIO_PAGE,
      B53_ARLTBL_MAC_VID_ENTRY(idx), mac_vid);
 b53_write32(dev, B53_ARLIO_PAGE,
      B53_ARLTBL_DATA_ENTRY(idx), fwd_entry);

 return b53_arl_rw_op(dev, 0);
}
