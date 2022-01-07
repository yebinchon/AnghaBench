
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct switchdev_obj_port_vlan {int flags; int vid_begin; int vid_end; } ;
struct ksz_device {int dummy; } ;
struct dsa_switch {struct ksz_device* priv; } ;


 int BIT (int) ;
 int BRIDGE_VLAN_INFO_PVID ;
 int BRIDGE_VLAN_INFO_UNTAGGED ;
 int PORT_REMOVE_TAG ;
 int P_TAG_CTRL ;
 int REG_PORT_CTRL_VID ;
 int ksz8795_from_vlan (int,int*,int*,int*) ;
 int ksz8795_r_vlan_table (struct ksz_device*,int,int*) ;
 int ksz8795_to_vlan (int,int,int,int*) ;
 int ksz8795_w_vlan_table (struct ksz_device*,int,int) ;
 int ksz_port_cfg (struct ksz_device*,int,int ,int ,int) ;
 int ksz_pread16 (struct ksz_device*,int,int ,int*) ;
 int ksz_pwrite16 (struct ksz_device*,int,int ,int) ;

__attribute__((used)) static void ksz8795_port_vlan_add(struct dsa_switch *ds, int port,
      const struct switchdev_obj_port_vlan *vlan)
{
 bool untagged = vlan->flags & BRIDGE_VLAN_INFO_UNTAGGED;
 struct ksz_device *dev = ds->priv;
 u16 data, vid, new_pvid = 0;
 u8 fid, member, valid;

 ksz_port_cfg(dev, port, P_TAG_CTRL, PORT_REMOVE_TAG, untagged);

 for (vid = vlan->vid_begin; vid <= vlan->vid_end; vid++) {
  ksz8795_r_vlan_table(dev, vid, &data);
  ksz8795_from_vlan(data, &fid, &member, &valid);


  if (!valid) {

   fid = 1;
   valid = 1;
  }
  member |= BIT(port);

  ksz8795_to_vlan(fid, member, valid, &data);
  ksz8795_w_vlan_table(dev, vid, data);


  if (vlan->flags & BRIDGE_VLAN_INFO_PVID)
   new_pvid = vid;
 }

 if (new_pvid) {
  ksz_pread16(dev, port, REG_PORT_CTRL_VID, &vid);
  vid &= 0xfff;
  vid |= new_pvid;
  ksz_pwrite16(dev, port, REG_PORT_CTRL_VID, vid);
 }
}
