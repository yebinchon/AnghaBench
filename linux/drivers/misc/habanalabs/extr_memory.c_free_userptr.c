
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_userptr {int dummy; } ;
struct hl_device {int dummy; } ;


 int hl_unpin_host_memory (struct hl_device*,struct hl_userptr*) ;
 int kfree (struct hl_userptr*) ;

__attribute__((used)) static void free_userptr(struct hl_device *hdev, struct hl_userptr *userptr)
{
 hl_unpin_host_memory(hdev, userptr);
 kfree(userptr);
}
