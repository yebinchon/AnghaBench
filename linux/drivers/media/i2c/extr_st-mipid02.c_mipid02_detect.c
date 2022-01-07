
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mipid02_dev {int dummy; } ;


 int MIPID02_CLK_LANE_WR_REG1 ;
 int mipid02_read_reg (struct mipid02_dev*,int ,int *) ;

__attribute__((used)) static int mipid02_detect(struct mipid02_dev *bridge)
{
 u8 reg;





 return mipid02_read_reg(bridge, MIPID02_CLK_LANE_WR_REG1, &reg);
}
