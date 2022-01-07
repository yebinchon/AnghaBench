
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ksz_hw {int all_multi; } ;
struct dev_priv {int multicast; } ;


 int hw_set_multicast (struct ksz_hw*,int) ;

__attribute__((used)) static void dev_set_multicast(struct dev_priv *priv, struct ksz_hw *hw,
 int multicast)
{
 if (multicast != priv->multicast) {
  u8 all_multi = hw->all_multi;

  if (multicast)
   ++hw->all_multi;
  else
   --hw->all_multi;
  priv->multicast = multicast;


  if (hw->all_multi <= 1 && all_multi <= 1)
   hw_set_multicast(hw, hw->all_multi);
 }
}
