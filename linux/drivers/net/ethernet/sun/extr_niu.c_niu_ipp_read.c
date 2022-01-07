
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int dummy; } ;


 int IPP_DFIFO_RD0 ;
 int IPP_DFIFO_RD1 ;
 int IPP_DFIFO_RD2 ;
 int IPP_DFIFO_RD3 ;
 int IPP_DFIFO_RD4 ;
 int IPP_DFIFO_RD_PTR ;
 int nr64_ipp (int ) ;
 int nw64_ipp (int ,int) ;

__attribute__((used)) static void niu_ipp_read(struct niu *np, int index, u64 *data)
{
 nw64_ipp(IPP_DFIFO_RD_PTR, index);
 data[0] = nr64_ipp(IPP_DFIFO_RD0);
 data[1] = nr64_ipp(IPP_DFIFO_RD1);
 data[2] = nr64_ipp(IPP_DFIFO_RD2);
 data[3] = nr64_ipp(IPP_DFIFO_RD3);
 data[4] = nr64_ipp(IPP_DFIFO_RD4);
}
