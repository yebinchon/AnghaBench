
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct altera_tse_private {int dummy; } ;


 int SGMII_PCS_SCRATCH ;
 scalar_t__ sgmii_pcs_read (struct altera_tse_private*,int ) ;
 int sgmii_pcs_write (struct altera_tse_private*,int ,scalar_t__) ;

__attribute__((used)) static int sgmii_pcs_scratch_test(struct altera_tse_private *priv, u16 value)
{
 sgmii_pcs_write(priv, SGMII_PCS_SCRATCH, value);
 return (sgmii_pcs_read(priv, SGMII_PCS_SCRATCH) == value);
}
