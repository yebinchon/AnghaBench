
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct xc5000_priv {int dummy; } ;


 int XREG_ADC_ENV ;
 int xc5000_readreg (struct xc5000_priv*,int ,int *) ;

__attribute__((used)) static int xc_get_adc_envelope(struct xc5000_priv *priv, u16 *adc_envelope)
{
 return xc5000_readreg(priv, XREG_ADC_ENV, adc_envelope);
}
