
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct device_node {int dummy; } ;
typedef int __be32 ;


 int EINVAL ;
 int * of_get_address (struct device_node*,int ,scalar_t__*,int *) ;
 int of_n_addr_cells (struct device_node*) ;
 scalar_t__ of_read_number (int const*,int ) ;

__attribute__((used)) static int read_handle(struct device_node *np, u64 *handle)
{
 const __be32 *prop;
 u64 size;


 prop = of_get_address(np, 0, &size, ((void*)0));
 if (size)
  return -EINVAL;


 *handle = of_read_number(prop, of_n_addr_cells(np));
 return 0;
}
