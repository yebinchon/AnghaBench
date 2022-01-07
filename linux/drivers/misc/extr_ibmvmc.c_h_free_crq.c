
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 long H_BUSY ;
 int H_FREE_CRQ ;
 scalar_t__ H_IS_LONG_BUSY (long) ;
 int get_longbusy_msecs (long) ;
 int msleep (int ) ;
 long plpar_hcall_norets (int ,int ) ;

__attribute__((used)) static inline void h_free_crq(uint32_t unit_address)
{
 long rc = 0;

 do {
  if (H_IS_LONG_BUSY(rc))
   msleep(get_longbusy_msecs(rc));

  rc = plpar_hcall_norets(H_FREE_CRQ, unit_address);
 } while ((rc == H_BUSY) || (H_IS_LONG_BUSY(rc)));
}
