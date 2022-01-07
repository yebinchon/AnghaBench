
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int prefix ;


 int DUMP_PREFIX_OFFSET ;
 int GENWQE_DEVNAME ;
 int pci_name (struct pci_dev*) ;
 int print_hex_dump_debug (char*,int ,int,int,void const*,unsigned int,int) ;
 int scnprintf (char*,int,char*,int ,int ) ;

__attribute__((used)) static inline void genwqe_hexdump(struct pci_dev *pci_dev,
      const void *buff, unsigned int size)
{
 char prefix[32];

 scnprintf(prefix, sizeof(prefix), "%s %s: ",
    GENWQE_DEVNAME, pci_name(pci_dev));

 print_hex_dump_debug(prefix, DUMP_PREFIX_OFFSET, 16, 1, buff,
        size, 1);
}
