
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H_REG_SUB_CRQ ;
 int PLPAR_HCALL_BUFSIZE ;
 long plpar_hcall (int ,unsigned long*,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static long h_reg_sub_crq(unsigned long unit_address, unsigned long token,
     unsigned long length, unsigned long *number,
     unsigned long *irq)
{
 unsigned long retbuf[PLPAR_HCALL_BUFSIZE];
 long rc;

 rc = plpar_hcall(H_REG_SUB_CRQ, retbuf, unit_address, token, length);
 *number = retbuf[0];
 *irq = retbuf[1];

 return rc;
}
