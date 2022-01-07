
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ cap_size; int mask; int type; } ;
struct qlcnic_dump_entry {TYPE_1__ hdr; } ;
struct device {int dummy; } ;


 int dev_err (struct device*,char*,int ,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static int qlcnic_valid_dump_entry(struct device *dev,
       struct qlcnic_dump_entry *entry, u32 size)
{
 int ret = 1;
 if (size != entry->hdr.cap_size) {
  dev_err(dev,
   "Invalid entry, Type:%d\tMask:%d\tSize:%dCap_size:%d\n",
   entry->hdr.type, entry->hdr.mask, size,
   entry->hdr.cap_size);
  ret = 0;
 }
 return ret;
}
