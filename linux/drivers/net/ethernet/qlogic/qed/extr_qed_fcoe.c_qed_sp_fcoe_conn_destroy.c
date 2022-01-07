
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int terminate_params_addr; } ;
struct fcoe_conn_terminate_ramrod_params {TYPE_3__ terminate_ramrod_data; } ;
struct TYPE_5__ {struct fcoe_conn_terminate_ramrod_params fcoe_conn_terminate; } ;
struct qed_spq_entry {TYPE_2__ ramrod; } ;
struct qed_spq_comp_cb {int dummy; } ;
struct qed_sp_init_data {int comp_mode; struct qed_spq_comp_cb* p_comp_data; int opaque_fid; int cid; } ;
struct TYPE_4__ {int opaque_fid; } ;
struct qed_hwfn {TYPE_1__ hw_info; } ;
struct qed_fcoe_conn {int terminate_params; int icid; } ;
typedef int init_data ;
typedef enum spq_mode { ____Placeholder_spq_mode } spq_mode ;


 int DMA_REGPAIR_LE (int ,int ) ;
 int FCOE_RAMROD_CMD_ID_TERMINATE_CONN ;
 int PROTOCOLID_FCOE ;
 int memset (struct qed_sp_init_data*,int ,int) ;
 int qed_sp_init_request (struct qed_hwfn*,struct qed_spq_entry**,int ,int ,struct qed_sp_init_data*) ;
 int qed_spq_post (struct qed_hwfn*,struct qed_spq_entry*,int *) ;

__attribute__((used)) static int
qed_sp_fcoe_conn_destroy(struct qed_hwfn *p_hwfn,
    struct qed_fcoe_conn *p_conn,
    enum spq_mode comp_mode,
    struct qed_spq_comp_cb *p_comp_addr)
{
 struct fcoe_conn_terminate_ramrod_params *p_ramrod = ((void*)0);
 struct qed_spq_entry *p_ent = ((void*)0);
 struct qed_sp_init_data init_data;
 int rc = 0;


 memset(&init_data, 0, sizeof(init_data));
 init_data.cid = p_conn->icid;
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = comp_mode;
 init_data.p_comp_data = p_comp_addr;

 rc = qed_sp_init_request(p_hwfn, &p_ent,
     FCOE_RAMROD_CMD_ID_TERMINATE_CONN,
     PROTOCOLID_FCOE, &init_data);
 if (rc)
  return rc;

 p_ramrod = &p_ent->ramrod.fcoe_conn_terminate;
 DMA_REGPAIR_LE(p_ramrod->terminate_ramrod_data.terminate_params_addr,
         p_conn->terminate_params);

 return qed_spq_post(p_hwfn, p_ent, ((void*)0));
}
