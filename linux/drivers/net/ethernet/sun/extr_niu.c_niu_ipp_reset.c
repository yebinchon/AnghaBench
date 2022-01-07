
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int dummy; } ;


 int IPP_CFIG ;
 int IPP_CFIG_SOFT_RST ;
 int niu_set_and_wait_clear_ipp (struct niu*,int ,int ,int,int,char*) ;

__attribute__((used)) static int niu_ipp_reset(struct niu *np)
{
 return niu_set_and_wait_clear_ipp(np, IPP_CFIG, IPP_CFIG_SOFT_RST,
       1000, 100, "IPP_CFIG");
}
