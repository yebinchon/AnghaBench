
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct blk_mq_tag_set {int driver_data; } ;


 int GFP_KERNEL ;
 int __mmc_init_request (int ,struct request*,int ) ;

__attribute__((used)) static int mmc_mq_init_request(struct blk_mq_tag_set *set, struct request *req,
          unsigned int hctx_idx, unsigned int numa_node)
{
 return __mmc_init_request(set->driver_data, req, GFP_KERNEL);
}
