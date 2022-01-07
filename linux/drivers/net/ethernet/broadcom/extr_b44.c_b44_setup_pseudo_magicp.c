
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct b44 {TYPE_1__* dev; } ;
struct TYPE_2__ {int dev_addr; } ;


 int B44_DEVCTRL ;
 int B44_ETHIPV4UDP_HLEN ;
 int B44_ETHIPV6UDP_HLEN ;
 int B44_PATTERN_BASE ;
 int B44_PATTERN_SIZE ;
 int B44_PMASK_BASE ;
 int B44_PMASK_SIZE ;
 int B44_WKUP_LEN ;
 int DEVCTRL_PFE ;
 int ETH_HLEN ;
 int GFP_KERNEL ;
 int WKUP_LEN_ENABLE_THREE ;
 int b44_magic_pattern (int ,int *,int *,int ) ;
 int br32 (struct b44*,int ) ;
 int bw32 (struct b44*,int ,int) ;
 int bwfilter_table (struct b44*,int *,int,int) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void b44_setup_pseudo_magicp(struct b44 *bp)
{

 u32 val;
 int plen0, plen1, plen2;
 u8 *pwol_pattern;
 u8 pwol_mask[B44_PMASK_SIZE];

 pwol_pattern = kzalloc(B44_PATTERN_SIZE, GFP_KERNEL);
 if (!pwol_pattern)
  return;


 memset(pwol_mask, 0, B44_PMASK_SIZE);
 plen0 = b44_magic_pattern(bp->dev->dev_addr, pwol_pattern, pwol_mask,
      B44_ETHIPV4UDP_HLEN);

    bwfilter_table(bp, pwol_pattern, B44_PATTERN_SIZE, B44_PATTERN_BASE);
    bwfilter_table(bp, pwol_mask, B44_PMASK_SIZE, B44_PMASK_BASE);


 memset(pwol_pattern, 0, B44_PATTERN_SIZE);
 memset(pwol_mask, 0, B44_PMASK_SIZE);
 plen1 = b44_magic_pattern(bp->dev->dev_addr, pwol_pattern, pwol_mask,
      ETH_HLEN);

    bwfilter_table(bp, pwol_pattern, B44_PATTERN_SIZE,
         B44_PATTERN_BASE + B44_PATTERN_SIZE);
   bwfilter_table(bp, pwol_mask, B44_PMASK_SIZE,
         B44_PMASK_BASE + B44_PMASK_SIZE);


 memset(pwol_pattern, 0, B44_PATTERN_SIZE);
 memset(pwol_mask, 0, B44_PMASK_SIZE);
 plen2 = b44_magic_pattern(bp->dev->dev_addr, pwol_pattern, pwol_mask,
      B44_ETHIPV6UDP_HLEN);

    bwfilter_table(bp, pwol_pattern, B44_PATTERN_SIZE,
         B44_PATTERN_BASE + B44_PATTERN_SIZE + B44_PATTERN_SIZE);
   bwfilter_table(bp, pwol_mask, B44_PMASK_SIZE,
         B44_PMASK_BASE + B44_PMASK_SIZE + B44_PMASK_SIZE);

 kfree(pwol_pattern);


 val = plen0 | (plen1 << 8) | (plen2 << 16) | WKUP_LEN_ENABLE_THREE;
 bw32(bp, B44_WKUP_LEN, val);


 val = br32(bp, B44_DEVCTRL);
 bw32(bp, B44_DEVCTRL, val | DEVCTRL_PFE);

}
