
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2 {int dummy; } ;


 int MVPP2_PRS_TCAM_DATA_REG (int ) ;
 int MVPP2_PRS_TCAM_IDX_REG ;
 int MVPP2_PRS_TCAM_INV_MASK ;
 int MVPP2_PRS_TCAM_INV_WORD ;
 int mvpp2_write (struct mvpp2*,int ,int) ;

__attribute__((used)) static void mvpp2_prs_hw_inv(struct mvpp2 *priv, int index)
{

 mvpp2_write(priv, MVPP2_PRS_TCAM_IDX_REG, index);
 mvpp2_write(priv, MVPP2_PRS_TCAM_DATA_REG(MVPP2_PRS_TCAM_INV_WORD),
      MVPP2_PRS_TCAM_INV_MASK);
}
