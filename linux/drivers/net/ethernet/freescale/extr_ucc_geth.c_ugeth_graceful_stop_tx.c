
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ucc_geth_private {TYPE_1__* ug_info; struct ucc_fast_private* uccf; } ;
struct ucc_fast_private {int stopped_tx; int p_ucce; int p_uccm; } ;
struct TYPE_4__ {int ucc_num; } ;
struct TYPE_3__ {TYPE_2__ uf_info; } ;


 int QE_CR_PROTOCOL_ETHERNET ;
 int QE_GRACEFUL_STOP_TX ;
 int UCC_GETH_UCCE_GRA ;
 int clrbits32 (int ,int) ;
 int in_be32 (int ) ;
 int msleep (int) ;
 int out_be32 (int ,int) ;
 int qe_issue_cmd (int ,int,int ,int ) ;
 int ucc_fast_get_qe_cr_subblock (int ) ;

__attribute__((used)) static int ugeth_graceful_stop_tx(struct ucc_geth_private *ugeth)
{
 struct ucc_fast_private *uccf;
 u32 cecr_subblock;
 u32 temp;
 int i = 10;

 uccf = ugeth->uccf;


 clrbits32(uccf->p_uccm, UCC_GETH_UCCE_GRA);
 out_be32(uccf->p_ucce, UCC_GETH_UCCE_GRA);


 cecr_subblock =
     ucc_fast_get_qe_cr_subblock(ugeth->ug_info->uf_info.ucc_num);
 qe_issue_cmd(QE_GRACEFUL_STOP_TX, cecr_subblock,
       QE_CR_PROTOCOL_ETHERNET, 0);


 do {
  msleep(10);
  temp = in_be32(uccf->p_ucce);
 } while (!(temp & UCC_GETH_UCCE_GRA) && --i);

 uccf->stopped_tx = 1;

 return 0;
}
