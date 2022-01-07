
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nfp_ccm {scalar_t__ tag_alloc_last; scalar_t__ tag_alloc_next; int tag_allocator; } ;


 int WARN_ON (int) ;
 int __test_and_clear_bit (int ,int ) ;
 int test_bit (scalar_t__,int ) ;

__attribute__((used)) static void nfp_ccm_free_tag(struct nfp_ccm *ccm, u16 tag)
{
 WARN_ON(!__test_and_clear_bit(tag, ccm->tag_allocator));

 while (!test_bit(ccm->tag_alloc_last, ccm->tag_allocator) &&
        ccm->tag_alloc_last != ccm->tag_alloc_next)
  ccm->tag_alloc_last++;
}
