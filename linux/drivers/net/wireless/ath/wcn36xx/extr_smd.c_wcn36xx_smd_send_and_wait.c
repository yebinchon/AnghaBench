
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wcn36xx_hal_msg_header {int msg_type; } ;
struct wcn36xx {int hal_rsp_compl; scalar_t__ hal_buf; int smd_channel; } ;


 int ETIME ;
 int HAL_MSG_TIMEOUT ;
 int WCN36XX_DBG_SMD ;
 int WCN36XX_DBG_SMD_DUMP ;
 int init_completion (int *) ;
 unsigned long jiffies ;
 int jiffies_to_msecs (unsigned long) ;
 int msecs_to_jiffies (int ) ;
 int rpmsg_send (int ,scalar_t__,size_t) ;
 scalar_t__ wait_for_completion_timeout (int *,int ) ;
 int wcn36xx_dbg (int ,char*,int ,int ,int ) ;
 int wcn36xx_dbg_dump (int ,char*,scalar_t__,size_t) ;
 int wcn36xx_err (char*,int ,...) ;

__attribute__((used)) static int wcn36xx_smd_send_and_wait(struct wcn36xx *wcn, size_t len)
{
 int ret;
 unsigned long start;
 struct wcn36xx_hal_msg_header *hdr =
  (struct wcn36xx_hal_msg_header *)wcn->hal_buf;
 u16 req_type = hdr->msg_type;

 wcn36xx_dbg_dump(WCN36XX_DBG_SMD_DUMP, "HAL >>> ", wcn->hal_buf, len);

 init_completion(&wcn->hal_rsp_compl);
 start = jiffies;
 ret = rpmsg_send(wcn->smd_channel, wcn->hal_buf, len);
 if (ret) {
  wcn36xx_err("HAL TX failed for req %d\n", req_type);
  goto out;
 }
 if (wait_for_completion_timeout(&wcn->hal_rsp_compl,
  msecs_to_jiffies(HAL_MSG_TIMEOUT)) <= 0) {
  wcn36xx_err("Timeout! No SMD response to req %d in %dms\n",
       req_type, HAL_MSG_TIMEOUT);
  ret = -ETIME;
  goto out;
 }
 wcn36xx_dbg(WCN36XX_DBG_SMD,
      "SMD command (req %d, rsp %d) completed in %dms\n",
      req_type, hdr->msg_type,
      jiffies_to_msecs(jiffies - start));
out:
 return ret;
}
