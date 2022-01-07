
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_if {int dummy; } ;


 int brcmf_fws_del_interface (struct brcmf_if*) ;

__attribute__((used)) static void
brcmf_proto_bcdc_del_if(struct brcmf_if *ifp)
{
 brcmf_fws_del_interface(ifp);
}
