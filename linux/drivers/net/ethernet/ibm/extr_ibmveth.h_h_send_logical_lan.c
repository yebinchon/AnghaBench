
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H_SEND_LOGICAL_LAN ;
 int PLPAR_HCALL9_BUFSIZE ;
 long plpar_hcall9 (int ,unsigned long*,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,...) ;

__attribute__((used)) static inline long h_send_logical_lan(unsigned long unit_address,
  unsigned long desc1, unsigned long desc2, unsigned long desc3,
  unsigned long desc4, unsigned long desc5, unsigned long desc6,
  unsigned long corellator_in, unsigned long *corellator_out,
  unsigned long mss, unsigned long large_send_support)
{
 long rc;
 unsigned long retbuf[PLPAR_HCALL9_BUFSIZE];

 if (large_send_support)
  rc = plpar_hcall9(H_SEND_LOGICAL_LAN, retbuf, unit_address,
      desc1, desc2, desc3, desc4, desc5, desc6,
      corellator_in, mss);
 else
  rc = plpar_hcall9(H_SEND_LOGICAL_LAN, retbuf, unit_address,
      desc1, desc2, desc3, desc4, desc5, desc6,
      corellator_in);

 *corellator_out = retbuf[0];

 return rc;
}
