
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2_cls_flow_entry {int dummy; } ;


 int EINVAL ;
 int MVPP2_FLOW_N_FIELDS ;
 int mvpp2_cls_flow_hek_num_get (struct mvpp2_cls_flow_entry*) ;
 int mvpp2_cls_flow_hek_num_set (struct mvpp2_cls_flow_entry*,int) ;
 int mvpp2_cls_flow_hek_set (struct mvpp2_cls_flow_entry*,int,int ) ;

__attribute__((used)) static int mvpp2_flow_add_hek_field(struct mvpp2_cls_flow_entry *fe,
        u32 field_id)
{
 int nb_fields = mvpp2_cls_flow_hek_num_get(fe);

 if (nb_fields == MVPP2_FLOW_N_FIELDS)
  return -EINVAL;

 mvpp2_cls_flow_hek_set(fe, nb_fields, field_id);

 mvpp2_cls_flow_hek_num_set(fe, nb_fields + 1);

 return 0;
}
