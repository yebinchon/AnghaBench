
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct vfpf_port_phys_id_resp_tlv {int id; } ;
struct bnx2x_virtf {int dummy; } ;
struct bnx2x {int flags; int phys_port_id; } ;


 int CHANNEL_TLV_PHYS_PORT_ID ;
 int ETH_ALEN ;
 int HAS_PHYS_PORT_ID ;
 int bnx2x_add_tlv (struct bnx2x*,void*,int,int ,int) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void bnx2x_vf_mbx_resp_phys_port(struct bnx2x *bp,
     struct bnx2x_virtf *vf,
     void *buffer,
     u16 *offset)
{
 struct vfpf_port_phys_id_resp_tlv *port_id;

 if (!(bp->flags & HAS_PHYS_PORT_ID))
  return;

 bnx2x_add_tlv(bp, buffer, *offset, CHANNEL_TLV_PHYS_PORT_ID,
        sizeof(struct vfpf_port_phys_id_resp_tlv));

 port_id = (struct vfpf_port_phys_id_resp_tlv *)
    (((u8 *)buffer) + *offset);
 memcpy(port_id->id, bp->phys_port_id, ETH_ALEN);




 *offset += sizeof(struct vfpf_port_phys_id_resp_tlv);
}
