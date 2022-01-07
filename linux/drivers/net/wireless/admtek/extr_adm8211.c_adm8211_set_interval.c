
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned short u32 ;
struct ieee80211_hw {struct adm8211_priv* priv; } ;
struct adm8211_priv {int dummy; } ;


 int ADM8211_CSR_WRITE (int ,unsigned short) ;
 int BPLI ;

__attribute__((used)) static void adm8211_set_interval(struct ieee80211_hw *dev,
     unsigned short bi, unsigned short li)
{
 struct adm8211_priv *priv = dev->priv;
 u32 reg;



 reg = (bi << 16) | li;
 ADM8211_CSR_WRITE(BPLI, reg);
}
