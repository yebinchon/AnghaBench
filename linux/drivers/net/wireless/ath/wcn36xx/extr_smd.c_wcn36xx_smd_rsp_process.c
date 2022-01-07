
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wcn36xx_hal_msg_header {int msg_type; } ;
struct wcn36xx_hal_ind_msg {int msg_len; int list; int msg; } ;
struct wcn36xx {int hal_rsp_len; int hal_ind_lock; int hal_ind_work; int hal_ind_wq; int hal_ind_queue; int hal_rsp_compl; int hal_buf; } ;
struct rpmsg_device {int dummy; } ;
struct ieee80211_hw {struct wcn36xx* priv; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int WCN36XX_DBG_HAL ;
 int WCN36XX_DBG_SMD_DUMP ;
 int complete (int *) ;
 struct wcn36xx_hal_ind_msg* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,void*,int) ;
 int queue_work (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wcn36xx_dbg (int ,char*) ;
 int wcn36xx_dbg_dump (int ,char*,void*,int) ;
 int wcn36xx_err (char*,int) ;

int wcn36xx_smd_rsp_process(struct rpmsg_device *rpdev,
       void *buf, int len, void *priv, u32 addr)
{
 const struct wcn36xx_hal_msg_header *msg_header = buf;
 struct ieee80211_hw *hw = priv;
 struct wcn36xx *wcn = hw->priv;
 struct wcn36xx_hal_ind_msg *msg_ind;
 wcn36xx_dbg_dump(WCN36XX_DBG_SMD_DUMP, "SMD <<< ", buf, len);

 switch (msg_header->msg_type) {
 case 136:
 case 165:
 case 166:
 case 170:
 case 133:
 case 159:
 case 162:
 case 151:
 case 134:
 case 156:
 case 152:
 case 158:
 case 164:
 case 141:
 case 139:
 case 129:
 case 140:
 case 137:
 case 143:
 case 144:
 case 155:
 case 138:
 case 154:
 case 149:
 case 157:
 case 171:
 case 172:
 case 160:
 case 131:
 case 130:
 case 150:
 case 128:
 case 168:
 case 145:
 case 153:
 case 173:
 case 135:
 case 132:
  memcpy(wcn->hal_buf, buf, len);
  wcn->hal_rsp_len = len;
  complete(&wcn->hal_rsp_compl);
  break;

 case 167:
 case 169:
 case 161:
 case 147:
 case 148:
 case 163:
 case 146:
 case 142:
  msg_ind = kmalloc(sizeof(*msg_ind) + len, GFP_ATOMIC);
  if (!msg_ind) {
   wcn36xx_err("Run out of memory while handling SMD_EVENT (%d)\n",
        msg_header->msg_type);
   return -ENOMEM;
  }

  msg_ind->msg_len = len;
  memcpy(msg_ind->msg, buf, len);

  spin_lock(&wcn->hal_ind_lock);
  list_add_tail(&msg_ind->list, &wcn->hal_ind_queue);
  queue_work(wcn->hal_ind_wq, &wcn->hal_ind_work);
  spin_unlock(&wcn->hal_ind_lock);
  wcn36xx_dbg(WCN36XX_DBG_HAL, "indication arrived\n");
  break;
 default:
  wcn36xx_err("SMD_EVENT (%d) not supported\n",
         msg_header->msg_type);
 }

 return 0;
}
