
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_hw {struct adm8211_priv* priv; } ;
struct adm8211_priv {int soft_rx_crc; int mode; int nar; TYPE_1__* pdev; } ;
struct TYPE_2__ {int revision; } ;


 int ADM8211_IDLE () ;
 int ADM8211_NAR_EA ;
 int ADM8211_NAR_PR ;
 int ADM8211_NAR_SR ;
 int ADM8211_NAR_ST ;
 int ADM8211_RESTORE () ;
 int ADM8211_REV_BA ;




__attribute__((used)) static void adm8211_update_mode(struct ieee80211_hw *dev)
{
 struct adm8211_priv *priv = dev->priv;

 ADM8211_IDLE();

 priv->soft_rx_crc = 0;
 switch (priv->mode) {
 case 128:
  priv->nar &= ~(ADM8211_NAR_PR | ADM8211_NAR_EA);
  priv->nar |= ADM8211_NAR_ST | ADM8211_NAR_SR;
  break;
 case 130:
  priv->nar &= ~ADM8211_NAR_PR;
  priv->nar |= ADM8211_NAR_EA | ADM8211_NAR_ST | ADM8211_NAR_SR;


  if (priv->pdev->revision >= ADM8211_REV_BA)
   priv->soft_rx_crc = 1;
  break;
 case 129:
  priv->nar &= ~(ADM8211_NAR_EA | ADM8211_NAR_ST);
  priv->nar |= ADM8211_NAR_PR | ADM8211_NAR_SR;
  break;
 }

 ADM8211_RESTORE();
}
