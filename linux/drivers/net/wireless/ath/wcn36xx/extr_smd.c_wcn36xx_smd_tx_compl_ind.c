
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx_hal_tx_compl_ind_msg {int status; } ;
struct wcn36xx {int dummy; } ;


 int EIO ;
 int wcn36xx_dxe_tx_ack_ind (struct wcn36xx*,int ) ;
 int wcn36xx_warn (char*) ;

__attribute__((used)) static int wcn36xx_smd_tx_compl_ind(struct wcn36xx *wcn, void *buf, size_t len)
{
 struct wcn36xx_hal_tx_compl_ind_msg *rsp = buf;

 if (len != sizeof(*rsp)) {
  wcn36xx_warn("Bad TX complete indication\n");
  return -EIO;
 }

 wcn36xx_dxe_tx_ack_ind(wcn, rsp->status);

 return 0;
}
