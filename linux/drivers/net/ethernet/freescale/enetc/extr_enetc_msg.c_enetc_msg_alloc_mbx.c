
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct enetc_hw {int dummy; } ;
struct enetc_si {struct enetc_hw hw; TYPE_1__* pdev; } ;
struct enetc_pf {struct enetc_msg_swbd* rxmsg; } ;
struct enetc_msg_swbd {int dma; int size; int vaddr; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int ENETC_DEFAULT_MSG_SIZE ;
 int ENETC_PSIVMSGRCVAR0 (int) ;
 int ENETC_PSIVMSGRCVAR1 (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (struct device*,char*,int ) ;
 int dma_alloc_coherent (struct device*,int ,int *,int ) ;
 struct enetc_pf* enetc_si_priv (struct enetc_si*) ;
 int enetc_wr (struct enetc_hw*,int ,int ) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int enetc_msg_alloc_mbx(struct enetc_si *si, int idx)
{
 struct enetc_pf *pf = enetc_si_priv(si);
 struct device *dev = &si->pdev->dev;
 struct enetc_hw *hw = &si->hw;
 struct enetc_msg_swbd *msg;
 u32 val;

 msg = &pf->rxmsg[idx];

 msg->size = ENETC_DEFAULT_MSG_SIZE;

 msg->vaddr = dma_alloc_coherent(dev, msg->size, &msg->dma,
     GFP_KERNEL);
 if (!msg->vaddr) {
  dev_err(dev, "msg: fail to alloc dma buffer of size: %d\n",
   msg->size);
  return -ENOMEM;
 }


 val = lower_32_bits(msg->dma);
 enetc_wr(hw, ENETC_PSIVMSGRCVAR0(idx), val);
 val = upper_32_bits(msg->dma);
 enetc_wr(hw, ENETC_PSIVMSGRCVAR1(idx), val);

 return 0;
}
