
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct ispif_device {scalar_t__ base; } ;
typedef enum ispif_intf { ____Placeholder_ispif_intf } ispif_intf ;


 scalar_t__ ISPIF_VFE_m_RDI_INTF_n_PACK_CFG_0 (int,int) ;
 scalar_t__ ISPIF_VFE_m_RDI_INTF_n_PACK_CFG_0_CID_c_PLAIN (int) ;
 scalar_t__ ISPIF_VFE_m_RDI_INTF_n_PACK_CFG_1 (int,int) ;
 scalar_t__ MEDIA_BUS_FMT_SBGGR10_2X8_PADHI_LE ;
 scalar_t__ MEDIA_BUS_FMT_Y10_2X8_PADHI_LE ;



 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static void ispif_config_pack(struct ispif_device *ispif, u32 code,
         enum ispif_intf intf, u8 cid, u8 vfe, u8 enable)
{
 u32 addr, val;

 if (code != MEDIA_BUS_FMT_SBGGR10_2X8_PADHI_LE &&
     code != MEDIA_BUS_FMT_Y10_2X8_PADHI_LE)
  return;

 switch (intf) {
 case 130:
  if (cid < 8)
   addr = ISPIF_VFE_m_RDI_INTF_n_PACK_CFG_0(vfe, 0);
  else
   addr = ISPIF_VFE_m_RDI_INTF_n_PACK_CFG_1(vfe, 0);
  break;
 case 129:
  if (cid < 8)
   addr = ISPIF_VFE_m_RDI_INTF_n_PACK_CFG_0(vfe, 1);
  else
   addr = ISPIF_VFE_m_RDI_INTF_n_PACK_CFG_1(vfe, 1);
  break;
 case 128:
  if (cid < 8)
   addr = ISPIF_VFE_m_RDI_INTF_n_PACK_CFG_0(vfe, 2);
  else
   addr = ISPIF_VFE_m_RDI_INTF_n_PACK_CFG_1(vfe, 2);
  break;
 default:
  return;
 }

 if (enable)
  val = ISPIF_VFE_m_RDI_INTF_n_PACK_CFG_0_CID_c_PLAIN(cid);
 else
  val = 0;

 writel_relaxed(val, ispif->base + addr);
}
