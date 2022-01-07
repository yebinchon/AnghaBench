
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_general_params_entry {int replay_port; int egrmirrdei; int egrmirrpcp; int egrmirrvid; int queue_ts; int tpid2; int ignore2stf; int tpid; int vlmask; int vlmarker; int mirr_port; int host_port; int casc_port; int send_meta0; int send_meta1; int incl_srcpt0; int incl_srcpt1; int mac_flt0; int mac_flt1; int mac_fltres0; int mac_fltres1; int hostprio; int switchid; int mirr_ptacu; int vllupformat; } ;
typedef enum packing_op { ____Placeholder_packing_op } packing_op ;


 size_t SJA1105PQRS_SIZE_GENERAL_PARAMS_ENTRY ;
 int sja1105_packing (void*,int *,int,int,size_t const,int) ;

__attribute__((used)) static size_t
sja1105pqrs_general_params_entry_packing(void *buf, void *entry_ptr,
      enum packing_op op)
{
 const size_t size = SJA1105PQRS_SIZE_GENERAL_PARAMS_ENTRY;
 struct sja1105_general_params_entry *entry = entry_ptr;

 sja1105_packing(buf, &entry->vllupformat, 351, 351, size, op);
 sja1105_packing(buf, &entry->mirr_ptacu, 350, 350, size, op);
 sja1105_packing(buf, &entry->switchid, 349, 347, size, op);
 sja1105_packing(buf, &entry->hostprio, 346, 344, size, op);
 sja1105_packing(buf, &entry->mac_fltres1, 343, 296, size, op);
 sja1105_packing(buf, &entry->mac_fltres0, 295, 248, size, op);
 sja1105_packing(buf, &entry->mac_flt1, 247, 200, size, op);
 sja1105_packing(buf, &entry->mac_flt0, 199, 152, size, op);
 sja1105_packing(buf, &entry->incl_srcpt1, 151, 151, size, op);
 sja1105_packing(buf, &entry->incl_srcpt0, 150, 150, size, op);
 sja1105_packing(buf, &entry->send_meta1, 149, 149, size, op);
 sja1105_packing(buf, &entry->send_meta0, 148, 148, size, op);
 sja1105_packing(buf, &entry->casc_port, 147, 145, size, op);
 sja1105_packing(buf, &entry->host_port, 144, 142, size, op);
 sja1105_packing(buf, &entry->mirr_port, 141, 139, size, op);
 sja1105_packing(buf, &entry->vlmarker, 138, 107, size, op);
 sja1105_packing(buf, &entry->vlmask, 106, 75, size, op);
 sja1105_packing(buf, &entry->tpid, 74, 59, size, op);
 sja1105_packing(buf, &entry->ignore2stf, 58, 58, size, op);
 sja1105_packing(buf, &entry->tpid2, 57, 42, size, op);
 sja1105_packing(buf, &entry->queue_ts, 41, 41, size, op);
 sja1105_packing(buf, &entry->egrmirrvid, 40, 29, size, op);
 sja1105_packing(buf, &entry->egrmirrpcp, 28, 26, size, op);
 sja1105_packing(buf, &entry->egrmirrdei, 25, 25, size, op);
 sja1105_packing(buf, &entry->replay_port, 24, 22, size, op);
 return size;
}
