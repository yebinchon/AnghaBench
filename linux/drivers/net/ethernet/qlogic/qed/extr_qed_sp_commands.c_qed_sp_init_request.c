
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
struct TYPE_8__ {int * function; TYPE_3__* cookie; } ;
struct TYPE_7__ {scalar_t__ done; } ;
struct TYPE_5__ {void* protocol_id; void* cmd_id; int cid; } ;
struct TYPE_6__ {TYPE_1__ hdr; } ;
struct qed_spq_entry {int comp_mode; int ramrod; TYPE_4__ comp_cb; TYPE_3__ comp_done; int priority; TYPE_2__ elem; } ;
struct qed_sp_init_data {int opaque_fid; int cid; int comp_mode; TYPE_4__* p_comp_data; } ;
struct qed_hwfn {int dummy; } ;


 int DP_NOTICE (struct qed_hwfn*,char*,int) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int,void*,void*,unsigned long,int ) ;
 int D_TRINE (int,int const,int const,char*,char*,char*) ;
 int EINVAL ;
 int ENOMEM ;
 int QED_MSG_SPQ ;



 int QED_SPQ_PRIORITY_NORMAL ;
 int cpu_to_le32 (int) ;
 int memset (int *,int ,int) ;
 int qed_sp_destroy_request (struct qed_hwfn*,struct qed_spq_entry*) ;
 int qed_spq_get_entry (struct qed_hwfn*,struct qed_spq_entry**) ;

int qed_sp_init_request(struct qed_hwfn *p_hwfn,
   struct qed_spq_entry **pp_ent,
   u8 cmd, u8 protocol, struct qed_sp_init_data *p_data)
{
 u32 opaque_cid = p_data->opaque_fid << 16 | p_data->cid;
 struct qed_spq_entry *p_ent = ((void*)0);
 int rc;

 if (!pp_ent)
  return -ENOMEM;

 rc = qed_spq_get_entry(p_hwfn, pp_ent);

 if (rc)
  return rc;

 p_ent = *pp_ent;

 p_ent->elem.hdr.cid = cpu_to_le32(opaque_cid);
 p_ent->elem.hdr.cmd_id = cmd;
 p_ent->elem.hdr.protocol_id = protocol;

 p_ent->priority = QED_SPQ_PRIORITY_NORMAL;
 p_ent->comp_mode = p_data->comp_mode;
 p_ent->comp_done.done = 0;

 switch (p_ent->comp_mode) {
 case 128:
  p_ent->comp_cb.cookie = &p_ent->comp_done;
  break;

 case 130:
  if (!p_data->p_comp_data)
   goto err;

  p_ent->comp_cb.cookie = p_data->p_comp_data->cookie;
  break;

 case 129:
  if (!p_data->p_comp_data)
   p_ent->comp_cb.function = ((void*)0);
  else
   p_ent->comp_cb = *p_data->p_comp_data;
  break;

 default:
  DP_NOTICE(p_hwfn, "Unknown SPQE completion mode %d\n",
     p_ent->comp_mode);
  goto err;
 }

 DP_VERBOSE(p_hwfn, QED_MSG_SPQ,
     "Initialized: CID %08x cmd %02x protocol %02x data_addr %lu comp_mode [%s]\n",
     opaque_cid, cmd, protocol,
     (unsigned long)&p_ent->ramrod,
     D_TRINE(p_ent->comp_mode, 128,
      130, "MODE_EBLOCK", "MODE_BLOCK",
      "MODE_CB"));

 memset(&p_ent->ramrod, 0, sizeof(p_ent->ramrod));

 return 0;

err:
 qed_sp_destroy_request(p_hwfn, p_ent);

 return -EINVAL;
}
