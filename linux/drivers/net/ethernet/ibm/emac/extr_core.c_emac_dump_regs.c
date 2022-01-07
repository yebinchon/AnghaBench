
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emac_regs {int dummy; } ;
struct emac_instance {int emacp; int cell_index; } ;
struct emac_ethtool_regs_subhdr {int version; int index; } ;


 int EMAC4SYNC_ETHTOOL_REGS_VER ;
 int EMAC4_ETHTOOL_REGS_VER ;
 int EMAC_ETHTOOL_REGS_VER ;
 int EMAC_FTR_EMAC4 ;
 int EMAC_FTR_EMAC4SYNC ;
 scalar_t__ emac_has_feature (struct emac_instance*,int ) ;
 int memcpy_fromio (struct emac_ethtool_regs_subhdr*,int ,int) ;

__attribute__((used)) static void *emac_dump_regs(struct emac_instance *dev, void *buf)
{
 struct emac_ethtool_regs_subhdr *hdr = buf;

 hdr->index = dev->cell_index;
 if (emac_has_feature(dev, EMAC_FTR_EMAC4SYNC)) {
  hdr->version = EMAC4SYNC_ETHTOOL_REGS_VER;
 } else if (emac_has_feature(dev, EMAC_FTR_EMAC4)) {
  hdr->version = EMAC4_ETHTOOL_REGS_VER;
 } else {
  hdr->version = EMAC_ETHTOOL_REGS_VER;
 }
 memcpy_fromio(hdr + 1, dev->emacp, sizeof(struct emac_regs));
 return (void *)(hdr + 1) + sizeof(struct emac_regs);
}
