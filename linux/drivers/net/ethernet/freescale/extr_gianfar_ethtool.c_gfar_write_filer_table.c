
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct gfar_private {int dummy; } ;
struct filer_table {int index; TYPE_1__* fe; } ;
struct TYPE_2__ {int ctrl; int prop; } ;


 int EBUSY ;
 int MAX_FILER_IDX ;
 int gfar_write_filer (struct gfar_private*,int,int,int) ;

__attribute__((used)) static int gfar_write_filer_table(struct gfar_private *priv,
      struct filer_table *tab)
{
 u32 i = 0;
 if (tab->index > MAX_FILER_IDX - 1)
  return -EBUSY;


 for (; i < MAX_FILER_IDX && (tab->fe[i].ctrl | tab->fe[i].prop); i++)
  gfar_write_filer(priv, i, tab->fe[i].ctrl, tab->fe[i].prop);

 for (; i < MAX_FILER_IDX; i++)
  gfar_write_filer(priv, i, 0x60, 0xFFFFFFFF);



 gfar_write_filer(priv, i, 0x20, 0x0);

 return 0;
}
