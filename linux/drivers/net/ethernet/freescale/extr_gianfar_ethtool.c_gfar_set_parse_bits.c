
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
 int RQFCR_PID_PARSE ;
 int gfar_set_mask (int ,struct filer_table*) ;

__attribute__((used)) static void gfar_set_parse_bits(u32 value, u32 mask, struct filer_table *tab)
{
 gfar_set_mask(mask, tab);
 tab->fe[tab->index].ctrl = RQFCR_CMP_EXACT | RQFCR_PID_PARSE |
       RQFCR_AND;
 tab->fe[tab->index].prop = value;
 tab->index++;
}
