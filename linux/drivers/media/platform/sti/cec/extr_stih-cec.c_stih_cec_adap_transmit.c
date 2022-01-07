
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct stih_cec {scalar_t__ regs; } ;
struct cec_msg {int len; int * msg; } ;
struct cec_adapter {int dummy; } ;


 scalar_t__ CEC_TX_ARRAY_CTRL ;
 int CEC_TX_AUTO_EOM_EN ;
 int CEC_TX_AUTO_SOM_EN ;
 scalar_t__ CEC_TX_DATA_BASE ;
 int CEC_TX_START ;
 struct stih_cec* cec_get_drvdata (struct cec_adapter*) ;
 int writeb (int ,scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int stih_cec_adap_transmit(struct cec_adapter *adap, u8 attempts,
      u32 signal_free_time, struct cec_msg *msg)
{
 struct stih_cec *cec = cec_get_drvdata(adap);
 int i;


 for (i = 0; i < msg->len; i++)
  writeb(msg->msg[i], cec->regs + CEC_TX_DATA_BASE + i);





 writel(CEC_TX_AUTO_SOM_EN | CEC_TX_AUTO_EOM_EN | CEC_TX_START |
        msg->len, cec->regs + CEC_TX_ARRAY_CTRL);

 return 0;
}
