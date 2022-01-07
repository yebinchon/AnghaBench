
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int dev; struct iproc_mdiomux_desc* priv; } ;
struct iproc_mdiomux_desc {int base; } ;


 int MDIO_CTRL_READ_OP ;
 int dev_err (int *,char*) ;
 int start_miim_ops (int ,int,int,int ,int ) ;

__attribute__((used)) static int iproc_mdiomux_read(struct mii_bus *bus, int phyid, int reg)
{
 struct iproc_mdiomux_desc *md = bus->priv;
 int ret;

 ret = start_miim_ops(md->base, phyid, reg, 0, MDIO_CTRL_READ_OP);
 if (ret < 0)
  dev_err(&bus->dev, "mdiomux read operation failed!!!");

 return ret;
}
