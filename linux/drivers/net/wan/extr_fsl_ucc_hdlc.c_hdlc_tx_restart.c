
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ucc_hdlc_private {TYPE_2__* ut_info; } ;
struct TYPE_3__ {int ucc_num; } ;
struct TYPE_4__ {TYPE_1__ uf_info; } ;


 int QE_CR_PROTOCOL_UNSPECIFIED ;
 int QE_RESTART_TX ;
 int qe_issue_cmd (int ,int ,int ,int ) ;
 int ucc_fast_get_qe_cr_subblock (int ) ;

__attribute__((used)) static int hdlc_tx_restart(struct ucc_hdlc_private *priv)
{
 u32 cecr_subblock;

 cecr_subblock =
  ucc_fast_get_qe_cr_subblock(priv->ut_info->uf_info.ucc_num);

 qe_issue_cmd(QE_RESTART_TX, cecr_subblock,
       QE_CR_PROTOCOL_UNSPECIFIED, 0);
 return 0;
}
