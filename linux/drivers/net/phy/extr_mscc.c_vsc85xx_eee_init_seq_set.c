
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_val {int member_0; int member_1; int val; int reg; } ;
struct phy_device {int lock; } ;


 unsigned int ARRAY_SIZE (struct reg_val const*) ;
 int MSCC_PHY_PAGE_TR ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int phy_restore_page (struct phy_device*,int,int) ;
 int phy_select_page (struct phy_device*,int ) ;
 int vsc85xx_tr_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static int vsc85xx_eee_init_seq_set(struct phy_device *phydev)
{
 const struct reg_val init_eee[] = {
  {0x0f82, 0x0012b00a},
  {0x1686, 0x00000004},
  {0x168c, 0x00d2c46f},
  {0x17a2, 0x00000620},
  {0x16a0, 0x00eeffdd},
  {0x16a6, 0x00071448},
  {0x16a4, 0x0013132f},
  {0x16a8, 0x00000000},
  {0x0ffc, 0x00c0a028},
  {0x0fe8, 0x0091b06c},
  {0x0fea, 0x00041600},
  {0x0f80, 0x00000af4},
  {0x0fec, 0x00901809},
  {0x0fee, 0x0000a6a1},
  {0x0ffe, 0x00b01007},
  {0x16b0, 0x00eeff00},
  {0x16b2, 0x00007000},
  {0x16b4, 0x00000814},
 };
 unsigned int i;
 int oldpage;

 mutex_lock(&phydev->lock);
 oldpage = phy_select_page(phydev, MSCC_PHY_PAGE_TR);
 if (oldpage < 0)
  goto out_unlock;

 for (i = 0; i < ARRAY_SIZE(init_eee); i++)
  vsc85xx_tr_write(phydev, init_eee[i].reg, init_eee[i].val);

out_unlock:
 oldpage = phy_restore_page(phydev, oldpage, oldpage);
 mutex_unlock(&phydev->lock);

 return oldpage;
}
