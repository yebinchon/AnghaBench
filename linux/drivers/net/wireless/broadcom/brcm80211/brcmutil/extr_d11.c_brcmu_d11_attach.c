
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmu_d11inf {scalar_t__ io_type; int decchspec; int encchspec; } ;


 scalar_t__ BRCMU_D11N_IOTYPE ;
 int brcmu_d11ac_decchspec ;
 int brcmu_d11ac_encchspec ;
 int brcmu_d11n_decchspec ;
 int brcmu_d11n_encchspec ;

void brcmu_d11_attach(struct brcmu_d11inf *d11inf)
{
 if (d11inf->io_type == BRCMU_D11N_IOTYPE) {
  d11inf->encchspec = brcmu_d11n_encchspec;
  d11inf->decchspec = brcmu_d11n_decchspec;
 } else {
  d11inf->encchspec = brcmu_d11ac_encchspec;
  d11inf->decchspec = brcmu_d11ac_decchspec;
 }
}
