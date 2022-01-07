
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_ioctl_data {int reg_num; int val_in; int phy_id; int val_out; } ;
struct mii_if_info {int reg_num_mask; int force_media; unsigned int full_duplex; int advertising; int dev; int (* mdio_write ) (int ,int ,int,int) ;int phy_id; int (* mdio_read ) (int ,int ,int) ;int phy_id_mask; } ;


 int BMCR_ANENABLE ;
 int BMCR_FULLDPLX ;
 int BMCR_RESET ;
 int EOPNOTSUPP ;





 int stub1 (int ,int ,int) ;
 int stub2 (int ,int ,int,int) ;

int generic_mii_ioctl(struct mii_if_info *mii_if,
        struct mii_ioctl_data *mii_data, int cmd,
        unsigned int *duplex_chg_out)
{
 int rc = 0;
 unsigned int duplex_changed = 0;

 if (duplex_chg_out)
  *duplex_chg_out = 0;

 mii_data->phy_id &= mii_if->phy_id_mask;
 mii_data->reg_num &= mii_if->reg_num_mask;

 switch(cmd) {
 case 130:
  mii_data->phy_id = mii_if->phy_id;


 case 129:
  mii_data->val_out =
   mii_if->mdio_read(mii_if->dev, mii_data->phy_id,
       mii_data->reg_num);
  break;

 case 128: {
  u16 val = mii_data->val_in;

  if (mii_data->phy_id == mii_if->phy_id) {
   switch(mii_data->reg_num) {
   case 131: {
    unsigned int new_duplex = 0;
    if (val & (BMCR_RESET|BMCR_ANENABLE))
     mii_if->force_media = 0;
    else
     mii_if->force_media = 1;
    if (mii_if->force_media &&
        (val & BMCR_FULLDPLX))
     new_duplex = 1;
    if (mii_if->full_duplex != new_duplex) {
     duplex_changed = 1;
     mii_if->full_duplex = new_duplex;
    }
    break;
   }
   case 132:
    mii_if->advertising = val;
    break;
   default:

    break;
   }
  }

  mii_if->mdio_write(mii_if->dev, mii_data->phy_id,
       mii_data->reg_num, val);
  break;
 }

 default:
  rc = -EOPNOTSUPP;
  break;
 }

 if ((rc == 0) && (duplex_chg_out) && (duplex_changed))
  *duplex_chg_out = 1;

 return rc;
}
