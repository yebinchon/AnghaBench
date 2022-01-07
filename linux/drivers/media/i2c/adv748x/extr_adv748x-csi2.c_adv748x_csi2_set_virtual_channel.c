
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv748x_csi2 {int dummy; } ;


 int ADV748X_CSI_VC_REF ;
 unsigned int ADV748X_CSI_VC_REF_SHIFT ;
 int tx_write (struct adv748x_csi2*,int ,unsigned int) ;

__attribute__((used)) static int adv748x_csi2_set_virtual_channel(struct adv748x_csi2 *tx,
         unsigned int vc)
{
 return tx_write(tx, ADV748X_CSI_VC_REF, vc << ADV748X_CSI_VC_REF_SHIFT);
}
