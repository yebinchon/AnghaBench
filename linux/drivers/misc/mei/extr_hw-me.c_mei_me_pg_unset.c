
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_me_hw {int dummy; } ;
struct mei_device {int dev; } ;


 int H_HPG_CSR ;
 int H_HPG_CSR_PGI ;
 int H_HPG_CSR_PGIHEXR ;
 int WARN (int,char*) ;
 int mei_me_reg_read (struct mei_me_hw*,int ) ;
 int mei_me_reg_write (struct mei_me_hw*,int ,int) ;
 struct mei_me_hw* to_me_hw (struct mei_device*) ;
 int trace_mei_reg_read (int ,char*,int ,int) ;
 int trace_mei_reg_write (int ,char*,int ,int) ;

__attribute__((used)) static void mei_me_pg_unset(struct mei_device *dev)
{
 struct mei_me_hw *hw = to_me_hw(dev);
 u32 reg;

 reg = mei_me_reg_read(hw, H_HPG_CSR);
 trace_mei_reg_read(dev->dev, "H_HPG_CSR", H_HPG_CSR, reg);

 WARN(!(reg & H_HPG_CSR_PGI), "PGI is not set\n");

 reg |= H_HPG_CSR_PGIHEXR;

 trace_mei_reg_write(dev->dev, "H_HPG_CSR", H_HPG_CSR, reg);
 mei_me_reg_write(hw, H_HPG_CSR, reg);
}
