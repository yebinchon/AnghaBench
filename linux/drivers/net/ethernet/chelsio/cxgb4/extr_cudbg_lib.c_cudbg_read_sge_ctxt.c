
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cudbg_init {struct adapter* adap; } ;
struct adapter {int mbox; } ;
typedef enum ctxt_type { ____Placeholder_ctxt_type } ctxt_type ;


 scalar_t__ is_fw_attached (struct cudbg_init*) ;
 int t4_sge_ctxt_rd (struct adapter*,int ,int ,int,int *) ;
 int t4_sge_ctxt_rd_bd (struct adapter*,int ,int,int *) ;

__attribute__((used)) static void cudbg_read_sge_ctxt(struct cudbg_init *pdbg_init, u32 cid,
    enum ctxt_type ctype, u32 *data)
{
 struct adapter *padap = pdbg_init->adap;
 int rc = -1;
 if (is_fw_attached(pdbg_init))
  rc = t4_sge_ctxt_rd(padap, padap->mbox, cid, ctype, data);
 if (rc)
  t4_sge_ctxt_rd_bd(padap, cid, ctype, data);
}
