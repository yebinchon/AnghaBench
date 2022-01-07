
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int board_id; } ;
struct ath10k_qmi {struct ath10k* ar; TYPE_3__ board_info; } ;
struct TYPE_10__ {int dir; } ;
struct TYPE_9__ {TYPE_5__ fw; } ;
struct TYPE_7__ {int qmi_ids_valid; int qmi_board_id; } ;
struct TYPE_6__ {int bus; } ;
struct ath10k {TYPE_4__ hw_params; TYPE_2__ id; TYPE_1__ hif; } ;


 int ATH10K_BD_IE_BOARD ;
 int ATH10K_BUS_SNOC ;
 int WCN3990_HW_1_0_FW_DIR ;
 int ath10k_core_fetch_board_file (struct ath10k*,int ) ;

__attribute__((used)) static int ath10k_qmi_fetch_board_file(struct ath10k_qmi *qmi)
{
 struct ath10k *ar = qmi->ar;

 ar->hif.bus = ATH10K_BUS_SNOC;
 ar->id.qmi_ids_valid = 1;
 ar->id.qmi_board_id = qmi->board_info.board_id;
 ar->hw_params.fw.dir = WCN3990_HW_1_0_FW_DIR;

 return ath10k_core_fetch_board_file(qmi->ar, ATH10K_BD_IE_BOARD);
}
