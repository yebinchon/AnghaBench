
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int delay; } ;
struct TYPE_5__ {int op_data; } ;
union init_op {int callback; TYPE_3__ delay; int if_phase; int if_mode; int read; int write; TYPE_2__ raw; } ;
typedef size_t u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int * unzip_buf; struct qed_dev* cdev; } ;
struct qed_dev {TYPE_1__* fw_data; } ;
struct TYPE_4__ {size_t init_ops_size; union init_op* init_ops; } ;


 int ENOMEM ;
 int GET_FIELD (size_t,int ) ;
 int GFP_ATOMIC ;
 int INIT_CALLBACK_OP_OP ;
 int INIT_IF_PHASE_OP_DMAE_ENABLE ;






 int MAX_ZIPPED_SIZE ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 size_t le32_to_cpu (int ) ;
 int qed_init_cmd_cb (struct qed_hwfn*,struct qed_ptt*,int *) ;
 size_t qed_init_cmd_mode (struct qed_hwfn*,int *,int) ;
 size_t qed_init_cmd_phase (struct qed_hwfn*,int *,int,int) ;
 int qed_init_cmd_rd (struct qed_hwfn*,struct qed_ptt*,int *) ;
 int qed_init_cmd_wr (struct qed_hwfn*,struct qed_ptt*,int *,int) ;
 int udelay (size_t) ;

int qed_init_run(struct qed_hwfn *p_hwfn,
   struct qed_ptt *p_ptt, int phase, int phase_id, int modes)
{
 struct qed_dev *cdev = p_hwfn->cdev;
 u32 cmd_num, num_init_ops;
 union init_op *init_ops;
 bool b_dmae = 0;
 int rc = 0;

 num_init_ops = cdev->fw_data->init_ops_size;
 init_ops = cdev->fw_data->init_ops;

 p_hwfn->unzip_buf = kzalloc(MAX_ZIPPED_SIZE * 4, GFP_ATOMIC);
 if (!p_hwfn->unzip_buf)
  return -ENOMEM;

 for (cmd_num = 0; cmd_num < num_init_ops; cmd_num++) {
  union init_op *cmd = &init_ops[cmd_num];
  u32 data = le32_to_cpu(cmd->raw.op_data);

  switch (GET_FIELD(data, INIT_CALLBACK_OP_OP)) {
  case 128:
   rc = qed_init_cmd_wr(p_hwfn, p_ptt, &cmd->write,
          b_dmae);
   break;
  case 129:
   qed_init_cmd_rd(p_hwfn, p_ptt, &cmd->read);
   break;
  case 131:
   cmd_num += qed_init_cmd_mode(p_hwfn, &cmd->if_mode,
           modes);
   break;
  case 130:
   cmd_num += qed_init_cmd_phase(p_hwfn, &cmd->if_phase,
            phase, phase_id);
   b_dmae = GET_FIELD(data, INIT_IF_PHASE_OP_DMAE_ENABLE);
   break;
  case 132:



   udelay(le32_to_cpu(cmd->delay.delay));
   break;

  case 133:
   rc = qed_init_cmd_cb(p_hwfn, p_ptt, &cmd->callback);
   break;
  }

  if (rc)
   break;
 }

 kfree(p_hwfn->unzip_buf);
 p_hwfn->unzip_buf = ((void*)0);
 return rc;
}
