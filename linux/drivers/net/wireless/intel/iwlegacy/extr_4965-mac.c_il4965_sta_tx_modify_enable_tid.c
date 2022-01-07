
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct il_priv {int sta_lock; TYPE_2__* stations; int mutex; } ;
struct il_addsta_cmd {int dummy; } ;
struct TYPE_4__ {int modify_mask; } ;
struct TYPE_6__ {int mode; int tid_disable_tx; TYPE_1__ sta; } ;
struct TYPE_5__ {TYPE_3__ sta; } ;


 int CMD_SYNC ;
 int STA_CONTROL_MODIFY_MSK ;
 int STA_MODIFY_TID_DISABLE_TX ;
 int cpu_to_le16 (int) ;
 int il_send_add_sta (struct il_priv*,struct il_addsta_cmd*,int ) ;
 int lockdep_assert_held (int *) ;
 int memcpy (struct il_addsta_cmd*,TYPE_3__*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
il4965_sta_tx_modify_enable_tid(struct il_priv *il, int sta_id, int tid)
{
 unsigned long flags;
 struct il_addsta_cmd sta_cmd;

 lockdep_assert_held(&il->mutex);


 spin_lock_irqsave(&il->sta_lock, flags);
 il->stations[sta_id].sta.sta.modify_mask = STA_MODIFY_TID_DISABLE_TX;
 il->stations[sta_id].sta.tid_disable_tx &= cpu_to_le16(~(1 << tid));
 il->stations[sta_id].sta.mode = STA_CONTROL_MODIFY_MSK;
 memcpy(&sta_cmd, &il->stations[sta_id].sta,
        sizeof(struct il_addsta_cmd));
 spin_unlock_irqrestore(&il->sta_lock, flags);

 return il_send_add_sta(il, &sta_cmd, CMD_SYNC);
}
