
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_ccm {int tag_alloc_next; int tag_allocator; int app; } ;


 int EAGAIN ;
 int WARN_ON (int ) ;
 int __test_and_set_bit (int ,int ) ;
 int ccm_warn (int ,char*) ;
 int nfp_ccm_all_tags_busy (struct nfp_ccm*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int nfp_ccm_alloc_tag(struct nfp_ccm *ccm)
{




 if (unlikely(nfp_ccm_all_tags_busy(ccm))) {
  ccm_warn(ccm->app, "all FW request contexts busy!\n");
  return -EAGAIN;
 }

 WARN_ON(__test_and_set_bit(ccm->tag_alloc_next, ccm->tag_allocator));
 return ccm->tag_alloc_next++;
}
