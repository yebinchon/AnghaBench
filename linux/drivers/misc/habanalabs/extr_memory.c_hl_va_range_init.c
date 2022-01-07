
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hl_va_range {int start_addr; int end_addr; int list; } ;
struct hl_device {int dev; } ;


 int EFAULT ;
 int INIT_LIST_HEAD (int *) ;
 int PAGE_MASK ;
 int PAGE_SIZE ;
 int add_va_block (struct hl_device*,struct hl_va_range*,int,int) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int hl_va_range_init(struct hl_device *hdev,
  struct hl_va_range *va_range, u64 start, u64 end)
{
 int rc;

 INIT_LIST_HEAD(&va_range->list);



 if (start & (PAGE_SIZE - 1)) {
  start &= PAGE_MASK;
  start += PAGE_SIZE;
 }

 if (end & (PAGE_SIZE - 1))
  end &= PAGE_MASK;

 if (start >= end) {
  dev_err(hdev->dev, "too small vm range for va list\n");
  return -EFAULT;
 }

 rc = add_va_block(hdev, va_range, start, end);

 if (rc) {
  dev_err(hdev->dev, "Failed to init host va list\n");
  return rc;
 }

 va_range->start_addr = start;
 va_range->end_addr = end;

 return 0;
}
