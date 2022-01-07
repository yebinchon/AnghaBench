
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sky2_hw {TYPE_1__* pdev; struct net_device** dev; } ;
struct net_device {int name; } ;
struct TYPE_2__ {int dev; } ;


 int BMU_CLR_IRQ_CHK ;
 int PREF_UNIT_GET_IDX ;
 int PREF_UNIT_PUT_IDX ;
 int Q_ADDR (scalar_t__,int ) ;
 int Q_CSR ;
 int Y2_QADDR (scalar_t__,int ) ;
 int dev_err (int *,char*,int ,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ sky2_read16 (struct sky2_hw*,int ) ;
 int sky2_write32 (struct sky2_hw*,int ,int ) ;

__attribute__((used)) static void sky2_le_error(struct sky2_hw *hw, unsigned port, u16 q)
{
 struct net_device *dev = hw->dev[port];
 u16 idx = sky2_read16(hw, Y2_QADDR(q, PREF_UNIT_GET_IDX));

 dev_err(&hw->pdev->dev, "%s: descriptor error q=%#x get=%u put=%u\n",
  dev->name, (unsigned) q, (unsigned) idx,
  (unsigned) sky2_read16(hw, Y2_QADDR(q, PREF_UNIT_PUT_IDX)));

 sky2_write32(hw, Q_ADDR(q, Q_CSR), BMU_CLR_IRQ_CHK);
}
