
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_hecc_priv {int dummy; } ;
struct can_rx_offload {int dummy; } ;
struct can_frame {int can_id; int can_dlc; scalar_t__ data; } ;
typedef int __be32 ;


 int BIT (unsigned int) ;
 int CAN_EFF_FLAG ;
 int CAN_EFF_MASK ;
 int CAN_RTR_FLAG ;
 int CAN_SFF_MASK ;
 int ENOBUFS ;
 int HECC_CANMCF ;
 int HECC_CANMCF_RTR ;
 int HECC_CANMDH ;
 int HECC_CANMDL ;
 int HECC_CANMID ;
 int HECC_CANMID_IDE ;
 int HECC_CANRML ;
 int HECC_CANRMP ;
 unsigned int HECC_RX_LAST_MBOX ;
 int cpu_to_be32 (int) ;
 int get_can_dlc (int) ;
 int hecc_read (struct ti_hecc_priv*,int ) ;
 int hecc_read_mbx (struct ti_hecc_priv*,unsigned int,int ) ;
 int hecc_read_stamp (struct ti_hecc_priv*,unsigned int) ;
 int hecc_write (struct ti_hecc_priv*,int ,int) ;
 struct ti_hecc_priv* rx_offload_to_priv (struct can_rx_offload*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned int ti_hecc_mailbox_read(struct can_rx_offload *offload,
      struct can_frame *cf,
      u32 *timestamp, unsigned int mbxno)
{
 struct ti_hecc_priv *priv = rx_offload_to_priv(offload);
 u32 data, mbx_mask;
 int ret = 1;

 mbx_mask = BIT(mbxno);
 data = hecc_read_mbx(priv, mbxno, HECC_CANMID);
 if (data & HECC_CANMID_IDE)
  cf->can_id = (data & CAN_EFF_MASK) | CAN_EFF_FLAG;
 else
  cf->can_id = (data >> 18) & CAN_SFF_MASK;

 data = hecc_read_mbx(priv, mbxno, HECC_CANMCF);
 if (data & HECC_CANMCF_RTR)
  cf->can_id |= CAN_RTR_FLAG;
 cf->can_dlc = get_can_dlc(data & 0xF);

 data = hecc_read_mbx(priv, mbxno, HECC_CANMDL);
 *(__be32 *)(cf->data) = cpu_to_be32(data);
 if (cf->can_dlc > 4) {
  data = hecc_read_mbx(priv, mbxno, HECC_CANMDH);
  *(__be32 *)(cf->data + 4) = cpu_to_be32(data);
 }

 *timestamp = hecc_read_stamp(priv, mbxno);
 if (unlikely(mbxno == HECC_RX_LAST_MBOX &&
       hecc_read(priv, HECC_CANRML) & mbx_mask))
  ret = -ENOBUFS;

 hecc_write(priv, HECC_CANRMP, mbx_mask);

 return ret;
}
