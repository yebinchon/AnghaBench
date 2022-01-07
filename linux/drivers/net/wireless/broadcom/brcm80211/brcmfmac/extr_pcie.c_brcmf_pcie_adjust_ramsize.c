
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct brcmf_pciedev_info {TYPE_1__* ci; } ;
typedef int __le32 ;
struct TYPE_2__ {int ramsize; } ;


 scalar_t__ BRCMF_RAMSIZE_MAGIC ;
 int BRCMF_RAMSIZE_OFFSET ;
 int PCIE ;
 int brcmf_dbg (int ,char*,int) ;
 scalar_t__ le32_to_cpup (int *) ;

__attribute__((used)) static void
brcmf_pcie_adjust_ramsize(struct brcmf_pciedev_info *devinfo, u8 *data,
     u32 data_len)
{
 __le32 *field;
 u32 newsize;

 if (data_len < BRCMF_RAMSIZE_OFFSET + 8)
  return;

 field = (__le32 *)&data[BRCMF_RAMSIZE_OFFSET];
 if (le32_to_cpup(field) != BRCMF_RAMSIZE_MAGIC)
  return;
 field++;
 newsize = le32_to_cpup(field);

 brcmf_dbg(PCIE, "Found ramsize info in FW, adjusting to 0x%x\n",
    newsize);
 devinfo->ci->ramsize = newsize;
}
