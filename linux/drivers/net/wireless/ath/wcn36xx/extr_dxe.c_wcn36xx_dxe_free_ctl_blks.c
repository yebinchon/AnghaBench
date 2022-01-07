
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx {int dxe_rx_h_ch; int dxe_rx_l_ch; int dxe_tx_h_ch; int dxe_tx_l_ch; } ;


 int wcn36xx_dxe_free_ctl_block (int *) ;

void wcn36xx_dxe_free_ctl_blks(struct wcn36xx *wcn)
{
 wcn36xx_dxe_free_ctl_block(&wcn->dxe_tx_l_ch);
 wcn36xx_dxe_free_ctl_block(&wcn->dxe_tx_h_ch);
 wcn36xx_dxe_free_ctl_block(&wcn->dxe_rx_l_ch);
 wcn36xx_dxe_free_ctl_block(&wcn->dxe_rx_h_ch);
}
