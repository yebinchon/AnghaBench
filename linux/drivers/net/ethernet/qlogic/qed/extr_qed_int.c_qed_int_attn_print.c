
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int p_dpc_ptt; } ;
struct dbg_attn_block_result {int dummy; } ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;
typedef enum dbg_attn_type { ____Placeholder_dbg_attn_type } dbg_attn_type ;
typedef enum block_id { ____Placeholder_block_id } block_id ;
typedef int attn_results ;


 int DBG_STATUS_OK ;
 int DP_NOTICE (struct qed_hwfn*,char*,int ) ;
 int memset (struct dbg_attn_block_result*,int ,int) ;
 int qed_dbg_get_status_str (int) ;
 int qed_dbg_parse_attn (struct qed_hwfn*,struct dbg_attn_block_result*) ;
 int qed_dbg_read_attn (struct qed_hwfn*,int ,int,int,int,struct dbg_attn_block_result*) ;

__attribute__((used)) static void qed_int_attn_print(struct qed_hwfn *p_hwfn,
          enum block_id id,
          enum dbg_attn_type type, bool b_clear)
{
 struct dbg_attn_block_result attn_results;
 enum dbg_status status;

 memset(&attn_results, 0, sizeof(attn_results));

 status = qed_dbg_read_attn(p_hwfn, p_hwfn->p_dpc_ptt, id, type,
       b_clear, &attn_results);
 if (status != DBG_STATUS_OK)
  DP_NOTICE(p_hwfn,
     "Failed to parse attention information [status: %s]\n",
     qed_dbg_get_status_str(status));
 else
  qed_dbg_parse_attn(p_hwfn, &attn_results);
}
