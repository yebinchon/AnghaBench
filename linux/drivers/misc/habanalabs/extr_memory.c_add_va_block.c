
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hl_va_range {int lock; int list; } ;
struct hl_device {int dummy; } ;


 int add_va_block_locked (struct hl_device*,int *,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static inline int add_va_block(struct hl_device *hdev,
  struct hl_va_range *va_range, u64 start, u64 end)
{
 int rc;

 mutex_lock(&va_range->lock);
 rc = add_va_block_locked(hdev, &va_range->list, start, end);
 mutex_unlock(&va_range->lock);

 return rc;
}
