
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_if {int pend_8021x_cnt; } ;


 int atomic_read (int *) ;

__attribute__((used)) static int brcmf_get_pend_8021x_cnt(struct brcmf_if *ifp)
{
 return atomic_read(&ifp->pend_8021x_cnt);
}
