
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_dev {int ref_count; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline void cnic_hold(struct cnic_dev *dev)
{
 atomic_inc(&dev->ref_count);
}
