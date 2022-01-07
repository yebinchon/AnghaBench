
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmballoon {int batch_max_pages; int * batch_page; } ;


 int free_page (unsigned long) ;
 int static_branch_disable (int *) ;
 int vmw_balloon_batching ;

__attribute__((used)) static void vmballoon_deinit_batching(struct vmballoon *b)
{
 free_page((unsigned long)b->batch_page);
 b->batch_page = ((void*)0);
 static_branch_disable(&vmw_balloon_batching);
 b->batch_max_pages = 1;
}
