
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct brcmf_pciedev_info {int * idxbuf; } ;



__attribute__((used)) static void
brcmf_pcie_write_idx(struct brcmf_pciedev_info *devinfo, u32 mem_offset,
       u16 value)
{
 u16 *address = devinfo->idxbuf + mem_offset;

 *(address) = value;
}
