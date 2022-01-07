
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sg; } ;
struct ubiblock_pdu {int work; TYPE_1__ usgl; } ;
struct request {int dummy; } ;
struct blk_mq_tag_set {int dummy; } ;


 int INIT_WORK (int *,int ) ;
 int UBI_MAX_SG_COUNT ;
 struct ubiblock_pdu* blk_mq_rq_to_pdu (struct request*) ;
 int sg_init_table (int ,int ) ;
 int ubiblock_do_work ;

__attribute__((used)) static int ubiblock_init_request(struct blk_mq_tag_set *set,
  struct request *req, unsigned int hctx_idx,
  unsigned int numa_node)
{
 struct ubiblock_pdu *pdu = blk_mq_rq_to_pdu(req);

 sg_init_table(pdu->usgl.sg, UBI_MAX_SG_COUNT);
 INIT_WORK(&pdu->work, ubiblock_do_work);

 return 0;
}
