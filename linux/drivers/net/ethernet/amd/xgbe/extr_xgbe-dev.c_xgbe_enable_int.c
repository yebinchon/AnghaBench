
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_channel {int curr_ier; int saved_ier; } ;
typedef enum xgbe_int { ____Placeholder_xgbe_int } xgbe_int ;


 int DMA_CH_IER ;
 int FBEE ;
 int RBUE ;
 int RIE ;
 int RSE ;
 int TBUE ;
 int TIE ;
 int TXSE ;
 int XGMAC_DMA_IOWRITE (struct xgbe_channel*,int ,int ) ;
 int XGMAC_SET_BITS (int ,int ,int ,int) ;

__attribute__((used)) static int xgbe_enable_int(struct xgbe_channel *channel,
      enum xgbe_int int_id)
{
 switch (int_id) {
 case 130:
  XGMAC_SET_BITS(channel->curr_ier, DMA_CH_IER, TIE, 1);
  break;
 case 128:
  XGMAC_SET_BITS(channel->curr_ier, DMA_CH_IER, TXSE, 1);
  break;
 case 131:
  XGMAC_SET_BITS(channel->curr_ier, DMA_CH_IER, TBUE, 1);
  break;
 case 133:
  XGMAC_SET_BITS(channel->curr_ier, DMA_CH_IER, RIE, 1);
  break;
 case 134:
  XGMAC_SET_BITS(channel->curr_ier, DMA_CH_IER, RBUE, 1);
  break;
 case 132:
  XGMAC_SET_BITS(channel->curr_ier, DMA_CH_IER, RSE, 1);
  break;
 case 129:
  XGMAC_SET_BITS(channel->curr_ier, DMA_CH_IER, TIE, 1);
  XGMAC_SET_BITS(channel->curr_ier, DMA_CH_IER, RIE, 1);
  break;
 case 135:
  XGMAC_SET_BITS(channel->curr_ier, DMA_CH_IER, FBEE, 1);
  break;
 case 136:
  channel->curr_ier |= channel->saved_ier;
  break;
 default:
  return -1;
 }

 XGMAC_DMA_IOWRITE(channel, DMA_CH_IER, channel->curr_ier);

 return 0;
}
