
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct enetc_hw {int dummy; } ;
struct enetc_si {TYPE_1__* pdev; struct enetc_hw hw; } ;
struct enetc_pf {struct enetc_msg_swbd* rxmsg; } ;
struct enetc_msg_swbd {int dma; int vaddr; int size; } ;
struct TYPE_2__ {int dev; } ;


 int ENETC_PSIVMSGRCVAR0 (int) ;
 int ENETC_PSIVMSGRCVAR1 (int) ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 struct enetc_pf* enetc_si_priv (struct enetc_si*) ;
 int enetc_wr (struct enetc_hw*,int ,int ) ;
 int memset (struct enetc_msg_swbd*,int ,int) ;

__attribute__((used)) static void enetc_msg_free_mbx(struct enetc_si *si, int idx)
{
 struct enetc_pf *pf = enetc_si_priv(si);
 struct enetc_hw *hw = &si->hw;
 struct enetc_msg_swbd *msg;

 msg = &pf->rxmsg[idx];
 dma_free_coherent(&si->pdev->dev, msg->size, msg->vaddr, msg->dma);
 memset(msg, 0, sizeof(*msg));

 enetc_wr(hw, ENETC_PSIVMSGRCVAR0(idx), 0);
 enetc_wr(hw, ENETC_PSIVMSGRCVAR1(idx), 0);
}
