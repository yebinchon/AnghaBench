
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct ipw_priv {int rates_mask; TYPE_1__* ieee; } ;
struct ipw_fixed_rate {int tx_rates; } ;
struct TYPE_2__ {int freq_band; } ;


 int IEEE_B ;
 int IPW_DEBUG_WX (char*) ;
 int IPW_MEM_FIXED_OVERRIDE ;

 int LIBIPW_CCK_RATES_MASK ;
 int LIBIPW_OFDM_RATES_MASK ;
 int LIBIPW_OFDM_RATE_12MB_MASK ;
 int LIBIPW_OFDM_RATE_6MB_MASK ;
 int LIBIPW_OFDM_RATE_9MB_MASK ;
 int LIBIPW_OFDM_SHIFT_MASK_A ;
 int cpu_to_le16 (int) ;
 int ipw_read32 (struct ipw_priv*,int ) ;
 int ipw_write_reg32 (struct ipw_priv*,int ,int ) ;

__attribute__((used)) static void ipw_set_fixed_rate(struct ipw_priv *priv, int mode)
{

 struct ipw_fixed_rate fr;
 u32 reg;
 u16 mask = 0;
 u16 new_tx_rates = priv->rates_mask;




 switch (priv->ieee->freq_band) {
 case 128:

  if (priv->rates_mask & ~LIBIPW_OFDM_RATES_MASK) {

   IPW_DEBUG_WX
       ("invalid fixed rate mask in ipw_set_fixed_rate\n");
   new_tx_rates = 0;
   break;
  }

  new_tx_rates >>= LIBIPW_OFDM_SHIFT_MASK_A;
  break;

 default:

  if (mode == IEEE_B) {
   if (new_tx_rates & ~LIBIPW_CCK_RATES_MASK) {

    IPW_DEBUG_WX
        ("invalid fixed rate mask in ipw_set_fixed_rate\n");
    new_tx_rates = 0;
   }
   break;
  }


  if (new_tx_rates & ~(LIBIPW_CCK_RATES_MASK |
        LIBIPW_OFDM_RATES_MASK)) {

   IPW_DEBUG_WX
       ("invalid fixed rate mask in ipw_set_fixed_rate\n");
   new_tx_rates = 0;
   break;
  }

  if (LIBIPW_OFDM_RATE_6MB_MASK & new_tx_rates) {
   mask |= (LIBIPW_OFDM_RATE_6MB_MASK >> 1);
   new_tx_rates &= ~LIBIPW_OFDM_RATE_6MB_MASK;
  }

  if (LIBIPW_OFDM_RATE_9MB_MASK & new_tx_rates) {
   mask |= (LIBIPW_OFDM_RATE_9MB_MASK >> 1);
   new_tx_rates &= ~LIBIPW_OFDM_RATE_9MB_MASK;
  }

  if (LIBIPW_OFDM_RATE_12MB_MASK & new_tx_rates) {
   mask |= (LIBIPW_OFDM_RATE_12MB_MASK >> 1);
   new_tx_rates &= ~LIBIPW_OFDM_RATE_12MB_MASK;
  }

  new_tx_rates |= mask;
  break;
 }

 fr.tx_rates = cpu_to_le16(new_tx_rates);

 reg = ipw_read32(priv, IPW_MEM_FIXED_OVERRIDE);
 ipw_write_reg32(priv, reg, *(u32 *) & fr);
}
