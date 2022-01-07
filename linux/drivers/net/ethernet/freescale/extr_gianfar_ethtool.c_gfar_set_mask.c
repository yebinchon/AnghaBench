
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct filer_table {size_t index; TYPE_1__* fe; } ;
struct TYPE_2__ {int ctrl; int prop; } ;


 int RQFCR_AND ;
 int RQFCR_CMP_EXACT ;
 int RQFCR_PID_MASK ;

__attribute__((used)) static void gfar_set_mask(u32 mask, struct filer_table *tab)
{
 tab->fe[tab->index].ctrl = RQFCR_AND | RQFCR_PID_MASK | RQFCR_CMP_EXACT;
 tab->fe[tab->index].prop = mask;
 tab->index++;
}
