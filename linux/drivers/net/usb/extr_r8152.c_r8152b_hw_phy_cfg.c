
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8152 {int flags; int eee_en; } ;


 int PHY_RESET ;
 int r8152_aldps_en (struct r8152*,int) ;
 int r8152b_enable_fc (struct r8152*) ;
 int rtl_eee_enable (struct r8152*,int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void r8152b_hw_phy_cfg(struct r8152 *tp)
{
 rtl_eee_enable(tp, tp->eee_en);
 r8152_aldps_en(tp, 1);
 r8152b_enable_fc(tp);

 set_bit(PHY_RESET, &tp->flags);
}
