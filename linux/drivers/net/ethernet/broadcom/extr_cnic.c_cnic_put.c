
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_dev {int ref_count; } ;


 int atomic_dec (int *) ;

__attribute__((used)) static inline void cnic_put(struct cnic_dev *dev)
{
 atomic_dec(&dev->ref_count);
}
