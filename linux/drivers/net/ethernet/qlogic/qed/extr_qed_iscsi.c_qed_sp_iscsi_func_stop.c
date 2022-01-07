
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int op_code; } ;
struct iscsi_spe_func_dstry {TYPE_3__ hdr; } ;
struct TYPE_5__ {struct iscsi_spe_func_dstry iscsi_destroy; } ;
struct qed_spq_entry {TYPE_2__ ramrod; } ;
struct qed_spq_comp_cb {int dummy; } ;
struct qed_sp_init_data {int comp_mode; struct qed_spq_comp_cb* p_comp_data; int opaque_fid; int cid; } ;
struct TYPE_4__ {int opaque_fid; } ;
struct qed_hwfn {TYPE_1__ hw_info; } ;
typedef int init_data ;
typedef enum spq_mode { ____Placeholder_spq_mode } spq_mode ;


 int ISCSI_RAMROD_CMD_ID_DESTROY_FUNC ;
 int PROTOCOLID_ISCSI ;
 int memset (struct qed_sp_init_data*,int ,int) ;
 int qed_sp_init_request (struct qed_hwfn*,struct qed_spq_entry**,int ,int ,struct qed_sp_init_data*) ;
 int qed_spq_get_cid (struct qed_hwfn*) ;
 int qed_spq_post (struct qed_hwfn*,struct qed_spq_entry*,int *) ;
 int qed_spq_unregister_async_cb (struct qed_hwfn*,int ) ;

__attribute__((used)) static int qed_sp_iscsi_func_stop(struct qed_hwfn *p_hwfn,
      enum spq_mode comp_mode,
      struct qed_spq_comp_cb *p_comp_addr)
{
 struct iscsi_spe_func_dstry *p_ramrod = ((void*)0);
 struct qed_spq_entry *p_ent = ((void*)0);
 struct qed_sp_init_data init_data;
 int rc = 0;


 memset(&init_data, 0, sizeof(init_data));
 init_data.cid = qed_spq_get_cid(p_hwfn);
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = comp_mode;
 init_data.p_comp_data = p_comp_addr;

 rc = qed_sp_init_request(p_hwfn, &p_ent,
     ISCSI_RAMROD_CMD_ID_DESTROY_FUNC,
     PROTOCOLID_ISCSI, &init_data);
 if (rc)
  return rc;

 p_ramrod = &p_ent->ramrod.iscsi_destroy;
 p_ramrod->hdr.op_code = ISCSI_RAMROD_CMD_ID_DESTROY_FUNC;

 rc = qed_spq_post(p_hwfn, p_ent, ((void*)0));

 qed_spq_unregister_async_cb(p_hwfn, PROTOCOLID_ISCSI);
 return rc;
}
