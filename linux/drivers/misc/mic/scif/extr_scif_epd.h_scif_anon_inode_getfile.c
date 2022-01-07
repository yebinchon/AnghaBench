
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* scif_epd_t ;
struct TYPE_3__ {int anon; } ;


 int PTR_ERR_OR_ZERO (int ) ;
 int anon_inode_getfile (char*,int *,int *,int ) ;
 int scif_anon_fops ;

__attribute__((used)) static inline int scif_anon_inode_getfile(scif_epd_t epd)
{
 epd->anon = anon_inode_getfile("scif", &scif_anon_fops, ((void*)0), 0);

 return PTR_ERR_OR_ZERO(epd->anon);
}
