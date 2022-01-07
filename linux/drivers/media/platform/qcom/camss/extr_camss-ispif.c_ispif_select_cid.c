
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ispif_device {int base; } ;
typedef enum ispif_intf { ____Placeholder_ispif_intf } ispif_intf ;


 int ISPIF_VFE_m_PIX_INTF_n_CID_MASK (int,int) ;
 int ISPIF_VFE_m_RDI_INTF_n_CID_MASK (int,int) ;





 int readl_relaxed (int) ;
 int writel (int,int) ;

__attribute__((used)) static void ispif_select_cid(struct ispif_device *ispif, enum ispif_intf intf,
        u8 cid, u8 vfe, u8 enable)
{
 u32 cid_mask = 1 << cid;
 u32 addr = 0;
 u32 val;

 switch (intf) {
 case 132:
  addr = ISPIF_VFE_m_PIX_INTF_n_CID_MASK(vfe, 0);
  break;
 case 130:
  addr = ISPIF_VFE_m_RDI_INTF_n_CID_MASK(vfe, 0);
  break;
 case 131:
  addr = ISPIF_VFE_m_PIX_INTF_n_CID_MASK(vfe, 1);
  break;
 case 129:
  addr = ISPIF_VFE_m_RDI_INTF_n_CID_MASK(vfe, 1);
  break;
 case 128:
  addr = ISPIF_VFE_m_RDI_INTF_n_CID_MASK(vfe, 2);
  break;
 }

 val = readl_relaxed(ispif->base + addr);
 if (enable)
  val |= cid_mask;
 else
  val &= ~cid_mask;

 writel(val, ispif->base + addr);
}
