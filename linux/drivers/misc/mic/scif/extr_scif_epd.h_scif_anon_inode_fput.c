
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* scif_epd_t ;
struct TYPE_3__ {int * anon; } ;


 int fput (int *) ;

__attribute__((used)) static inline void scif_anon_inode_fput(scif_epd_t epd)
{
 if (epd->anon) {
  fput(epd->anon);
  epd->anon = ((void*)0);
 }
}
