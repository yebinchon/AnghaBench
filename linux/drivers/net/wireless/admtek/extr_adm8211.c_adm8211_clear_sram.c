
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_hw {struct adm8211_priv* priv; } ;
struct adm8211_priv {int dummy; } ;


 int ADM8211_CSR_READ (int ) ;
 int ADM8211_CSR_WRITE (int ,int ) ;
 unsigned int ADM8211_SRAM_SIZE ;
 int WEPCTL ;
 int adm8211_write_sram (struct ieee80211_hw*,unsigned int,int ) ;

__attribute__((used)) static void adm8211_clear_sram(struct ieee80211_hw *dev)
{
 struct adm8211_priv *priv = dev->priv;
 u32 reg = ADM8211_CSR_READ(WEPCTL);
 unsigned int addr;

 for (addr = 0; addr < ADM8211_SRAM_SIZE; addr++)
  adm8211_write_sram(dev, addr, 0);

 ADM8211_CSR_WRITE(WEPCTL, reg);
}
