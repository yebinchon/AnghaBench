
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ath_hw {int dummy; } ;
struct ath_common {scalar_t__ priv; } ;
struct ath9k_htc_priv {TYPE_2__* wmi; } ;
struct TYPE_4__ {size_t multi_write_idx; int multi_write_mutex; TYPE_1__* multi_write; } ;
struct TYPE_3__ {void* val; void* reg; } ;


 size_t MAX_CMD_NUMBER ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_regwrite_multi (struct ath_common*) ;
 void* cpu_to_be32 (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ath9k_regwrite_buffer(void *hw_priv, u32 val, u32 reg_offset)
{
 struct ath_hw *ah = hw_priv;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_htc_priv *priv = (struct ath9k_htc_priv *) common->priv;

 mutex_lock(&priv->wmi->multi_write_mutex);


 priv->wmi->multi_write[priv->wmi->multi_write_idx].reg =
  cpu_to_be32(reg_offset);
 priv->wmi->multi_write[priv->wmi->multi_write_idx].val =
  cpu_to_be32(val);

 priv->wmi->multi_write_idx++;


 if (priv->wmi->multi_write_idx == MAX_CMD_NUMBER)
  ath9k_regwrite_multi(common);

 mutex_unlock(&priv->wmi->multi_write_mutex);
}
