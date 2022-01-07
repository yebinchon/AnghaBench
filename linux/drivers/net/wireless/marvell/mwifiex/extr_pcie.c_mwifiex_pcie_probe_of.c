
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int of_node; } ;


 int EINVAL ;
 int dev_err (struct device*,char*) ;
 int mwifiex_pcie_of_match_table ;
 int of_match_node (int ,int ) ;

__attribute__((used)) static int mwifiex_pcie_probe_of(struct device *dev)
{
 if (!of_match_node(mwifiex_pcie_of_match_table, dev->of_node)) {
  dev_err(dev, "required compatible string missing\n");
  return -EINVAL;
 }

 return 0;
}
