
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cudbg_init {struct adapter* adap; } ;
struct adapter {int flags; scalar_t__ use_bd; } ;


 int CXGB4_FW_OK ;

__attribute__((used)) static int is_fw_attached(struct cudbg_init *pdbg_init)
{
 struct adapter *padap = pdbg_init->adap;

 if (!(padap->flags & CXGB4_FW_OK) || padap->use_bd)
  return 0;

 return 1;
}
