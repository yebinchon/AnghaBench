
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enetc_hw {int dummy; } ;


 int ENETC_SICBDRMR ;
 int enetc_wr (struct enetc_hw*,int ,int ) ;

__attribute__((used)) static void enetc_clear_cbdr(struct enetc_hw *hw)
{
 enetc_wr(hw, ENETC_SICBDRMR, 0);
}
