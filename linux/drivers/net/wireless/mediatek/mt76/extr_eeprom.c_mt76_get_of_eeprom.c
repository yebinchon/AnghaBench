
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtd_info {int dummy; } ;
struct TYPE_4__ {int data; } ;
struct mt76_dev {TYPE_2__ eeprom; TYPE_1__* dev; } ;
struct device_node {char* name; } ;
typedef void* phandle ;
typedef int __be32 ;
struct TYPE_3__ {struct device_node* of_node; } ;


 int EINVAL ;
 int ENOENT ;
 scalar_t__ IS_ERR (struct mtd_info*) ;
 int PTR_ERR (struct mtd_info*) ;
 void* be32_to_cpup (int const*) ;
 struct mtd_info* get_mtd_device_nm (char const*) ;
 int mtd_read (struct mtd_info*,int,int,size_t*,int ) ;
 struct device_node* of_find_node_by_phandle (void*) ;
 void* of_get_property (struct device_node*,char*,int*) ;
 int of_node_put (struct device_node*) ;
 int put_mtd_device (struct mtd_info*) ;

__attribute__((used)) static int
mt76_get_of_eeprom(struct mt76_dev *dev, int len)
{
 return -ENOENT;

}
