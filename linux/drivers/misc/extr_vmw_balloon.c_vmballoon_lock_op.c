
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct vmballoon {int page; int batch_page; int comm_lock; } ;
typedef enum vmballoon_page_size_type { ____Placeholder_vmballoon_page_size_type } vmballoon_page_size_type ;
typedef enum vmballoon_op { ____Placeholder_vmballoon_op } vmballoon_op ;


 unsigned long PHYS_PFN (int ) ;
 int VMW_BALLOON_2M_PAGE ;
 unsigned long VMW_BALLOON_CMD_BATCHED_2M_LOCK ;
 unsigned long VMW_BALLOON_CMD_BATCHED_2M_UNLOCK ;
 unsigned long VMW_BALLOON_CMD_BATCHED_LOCK ;
 unsigned long VMW_BALLOON_CMD_BATCHED_UNLOCK ;
 unsigned long VMW_BALLOON_CMD_LOCK ;
 unsigned long VMW_BALLOON_CMD_UNLOCK ;
 unsigned long VMW_BALLOON_ERROR_PPN_INVALID ;
 int VMW_BALLOON_INFLATE ;
 int lockdep_assert_held (int *) ;
 unsigned long page_to_pfn (int ) ;
 scalar_t__ static_branch_likely (int *) ;
 scalar_t__ unlikely (int) ;
 int virt_to_phys (int ) ;
 unsigned long vmballoon_cmd (struct vmballoon*,unsigned long,unsigned long,unsigned int) ;
 int vmw_balloon_batching ;

__attribute__((used)) static unsigned long vmballoon_lock_op(struct vmballoon *b,
           unsigned int num_pages,
           enum vmballoon_page_size_type page_size,
           enum vmballoon_op op)
{
 unsigned long cmd, pfn;

 lockdep_assert_held(&b->comm_lock);

 if (static_branch_likely(&vmw_balloon_batching)) {
  if (op == VMW_BALLOON_INFLATE)
   cmd = page_size == VMW_BALLOON_2M_PAGE ?
    VMW_BALLOON_CMD_BATCHED_2M_LOCK :
    VMW_BALLOON_CMD_BATCHED_LOCK;
  else
   cmd = page_size == VMW_BALLOON_2M_PAGE ?
    VMW_BALLOON_CMD_BATCHED_2M_UNLOCK :
    VMW_BALLOON_CMD_BATCHED_UNLOCK;

  pfn = PHYS_PFN(virt_to_phys(b->batch_page));
 } else {
  cmd = op == VMW_BALLOON_INFLATE ? VMW_BALLOON_CMD_LOCK :
        VMW_BALLOON_CMD_UNLOCK;
  pfn = page_to_pfn(b->page);


  if (unlikely(pfn != (u32)pfn))
   return VMW_BALLOON_ERROR_PPN_INVALID;
 }

 return vmballoon_cmd(b, cmd, pfn, num_pages);
}
