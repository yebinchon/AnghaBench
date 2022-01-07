
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ionic_cq_info {struct ionic_admin_comp* cq_desc; } ;
struct ionic_cq {int bound_q; int done_color; } ;
struct ionic_admin_comp {int comp_index; int color; } ;


 int color_match (int ,int ) ;
 int ionic_q_service (int ,struct ionic_cq_info*,int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static bool ionic_adminq_service(struct ionic_cq *cq,
     struct ionic_cq_info *cq_info)
{
 struct ionic_admin_comp *comp = cq_info->cq_desc;

 if (!color_match(comp->color, cq->done_color))
  return 0;

 ionic_q_service(cq->bound_q, cq_info, le16_to_cpu(comp->comp_index));

 return 1;
}
