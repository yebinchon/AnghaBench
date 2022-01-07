
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_endpoint_test {scalar_t__* bar; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 pci_endpoint_test_bar_readl(struct pci_endpoint_test *test,
           int bar, int offset)
{
 return readl(test->bar[bar] + offset);
}
