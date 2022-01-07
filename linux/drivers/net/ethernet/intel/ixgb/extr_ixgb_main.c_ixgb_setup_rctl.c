
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int mc_filter_type; } ;
struct ixgb_adapter {scalar_t__ rx_buffer_len; TYPE_1__ hw; } ;


 int IXGB_RCTL_BAM ;
 int IXGB_RCTL_BSIZE_16384 ;
 int IXGB_RCTL_BSIZE_2048 ;
 int IXGB_RCTL_BSIZE_4096 ;
 int IXGB_RCTL_BSIZE_8192 ;
 int IXGB_RCTL_CFF ;
 int IXGB_RCTL_MO_SHIFT ;
 int IXGB_RCTL_RDMTS_1_2 ;
 int IXGB_RCTL_RXEN ;
 int IXGB_RCTL_SECRC ;
 int IXGB_READ_REG (TYPE_1__*,int ) ;
 scalar_t__ IXGB_RXBUFFER_16384 ;
 scalar_t__ IXGB_RXBUFFER_2048 ;
 scalar_t__ IXGB_RXBUFFER_4096 ;
 scalar_t__ IXGB_RXBUFFER_8192 ;
 int IXGB_WRITE_REG (TYPE_1__*,int ,int) ;
 int RCTL ;

__attribute__((used)) static void
ixgb_setup_rctl(struct ixgb_adapter *adapter)
{
 u32 rctl;

 rctl = IXGB_READ_REG(&adapter->hw, RCTL);

 rctl &= ~(3 << IXGB_RCTL_MO_SHIFT);

 rctl |=
  IXGB_RCTL_BAM | IXGB_RCTL_RDMTS_1_2 |
  IXGB_RCTL_RXEN | IXGB_RCTL_CFF |
  (adapter->hw.mc_filter_type << IXGB_RCTL_MO_SHIFT);

 rctl |= IXGB_RCTL_SECRC;

 if (adapter->rx_buffer_len <= IXGB_RXBUFFER_2048)
  rctl |= IXGB_RCTL_BSIZE_2048;
 else if (adapter->rx_buffer_len <= IXGB_RXBUFFER_4096)
  rctl |= IXGB_RCTL_BSIZE_4096;
 else if (adapter->rx_buffer_len <= IXGB_RXBUFFER_8192)
  rctl |= IXGB_RCTL_BSIZE_8192;
 else if (adapter->rx_buffer_len <= IXGB_RXBUFFER_16384)
  rctl |= IXGB_RCTL_BSIZE_16384;

 IXGB_WRITE_REG(&adapter->hw, RCTL, rctl);
}
