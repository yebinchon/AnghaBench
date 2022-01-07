
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rcar_drif_sdr {int mdr1; int dev; } ;
struct fwnode_handle {int dummy; } ;


 int RCAR_DRIF_SIRMDR1_DTDL_1 ;
 int RCAR_DRIF_SIRMDR1_MSB_FIRST ;
 int RCAR_DRIF_SIRMDR1_SYNCAC_POL_HIGH ;
 int RCAR_DRIF_SIRMDR1_SYNCAC_POL_LOW ;
 int RCAR_DRIF_SIRMDR1_SYNCDL_0 ;
 int RCAR_DRIF_SIRMDR1_SYNCMD_LR ;
 int dev_dbg (int ,char*,int) ;
 int fwnode_property_read_u32 (struct fwnode_handle*,char*,scalar_t__*) ;

__attribute__((used)) static void rcar_drif_get_ep_properties(struct rcar_drif_sdr *sdr,
     struct fwnode_handle *fwnode)
{
 u32 val;


 sdr->mdr1 = RCAR_DRIF_SIRMDR1_SYNCMD_LR | RCAR_DRIF_SIRMDR1_MSB_FIRST |
  RCAR_DRIF_SIRMDR1_DTDL_1 | RCAR_DRIF_SIRMDR1_SYNCDL_0;


 if (!fwnode_property_read_u32(fwnode, "sync-active", &val))
  sdr->mdr1 |= val ? RCAR_DRIF_SIRMDR1_SYNCAC_POL_HIGH :
   RCAR_DRIF_SIRMDR1_SYNCAC_POL_LOW;
 else
  sdr->mdr1 |= RCAR_DRIF_SIRMDR1_SYNCAC_POL_HIGH;

 dev_dbg(sdr->dev, "mdr1 0x%08x\n", sdr->mdr1);
}
