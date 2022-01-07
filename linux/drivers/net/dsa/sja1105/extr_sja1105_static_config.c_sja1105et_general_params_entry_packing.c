
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_general_params_entry {int tpid2; int ignore2stf; int tpid; int vlmask; int vlmarker; int mirr_port; int host_port; int casc_port; int send_meta0; int send_meta1; int incl_srcpt0; int incl_srcpt1; int mac_flt0; int mac_flt1; int mac_fltres0; int mac_fltres1; int hostprio; int switchid; int mirr_ptacu; int vllupformat; } ;
typedef enum packing_op { ____Placeholder_packing_op } packing_op ;


 size_t SJA1105ET_SIZE_GENERAL_PARAMS_ENTRY ;
 int sja1105_packing (void*,int *,int,int,size_t const,int) ;

__attribute__((used)) static size_t sja1105et_general_params_entry_packing(void *buf, void *entry_ptr,
           enum packing_op op)
{
 const size_t size = SJA1105ET_SIZE_GENERAL_PARAMS_ENTRY;
 struct sja1105_general_params_entry *entry = entry_ptr;

 sja1105_packing(buf, &entry->vllupformat, 319, 319, size, op);
 sja1105_packing(buf, &entry->mirr_ptacu, 318, 318, size, op);
 sja1105_packing(buf, &entry->switchid, 317, 315, size, op);
 sja1105_packing(buf, &entry->hostprio, 314, 312, size, op);
 sja1105_packing(buf, &entry->mac_fltres1, 311, 264, size, op);
 sja1105_packing(buf, &entry->mac_fltres0, 263, 216, size, op);
 sja1105_packing(buf, &entry->mac_flt1, 215, 168, size, op);
 sja1105_packing(buf, &entry->mac_flt0, 167, 120, size, op);
 sja1105_packing(buf, &entry->incl_srcpt1, 119, 119, size, op);
 sja1105_packing(buf, &entry->incl_srcpt0, 118, 118, size, op);
 sja1105_packing(buf, &entry->send_meta1, 117, 117, size, op);
 sja1105_packing(buf, &entry->send_meta0, 116, 116, size, op);
 sja1105_packing(buf, &entry->casc_port, 115, 113, size, op);
 sja1105_packing(buf, &entry->host_port, 112, 110, size, op);
 sja1105_packing(buf, &entry->mirr_port, 109, 107, size, op);
 sja1105_packing(buf, &entry->vlmarker, 106, 75, size, op);
 sja1105_packing(buf, &entry->vlmask, 74, 43, size, op);
 sja1105_packing(buf, &entry->tpid, 42, 27, size, op);
 sja1105_packing(buf, &entry->ignore2stf, 26, 26, size, op);
 sja1105_packing(buf, &entry->tpid2, 25, 10, size, op);
 return size;
}
