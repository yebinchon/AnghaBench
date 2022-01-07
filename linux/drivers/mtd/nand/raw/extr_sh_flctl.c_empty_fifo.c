
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_flctl {int flintdmacr_base; } ;


 int AC0CLR ;
 int AC1CLR ;
 int FLINTDMACR (struct sh_flctl*) ;
 int writel (int,int ) ;

__attribute__((used)) static void empty_fifo(struct sh_flctl *flctl)
{
 writel(flctl->flintdmacr_base | AC1CLR | AC0CLR, FLINTDMACR(flctl));
 writel(flctl->flintdmacr_base, FLINTDMACR(flctl));
}
