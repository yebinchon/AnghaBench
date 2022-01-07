
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_cec {int tx_done; int rx_done; scalar_t__ rx_buf_cnt; int adap; int rx_buf; int tx_status; } ;
struct device {int dummy; } ;
struct cec_msg {scalar_t__ len; int msg; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int cec_received_msg (int ,struct cec_msg*) ;
 int cec_transmit_attempt_done (int ,int ) ;
 struct tegra_cec* dev_get_drvdata (struct device*) ;
 int memcpy (int ,int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t tegra_cec_irq_thread_handler(int irq, void *data)
{
 struct device *dev = data;
 struct tegra_cec *cec = dev_get_drvdata(dev);

 if (cec->tx_done) {
  cec_transmit_attempt_done(cec->adap, cec->tx_status);
  cec->tx_done = 0;
 }
 if (cec->rx_done) {
  struct cec_msg msg = {};

  msg.len = cec->rx_buf_cnt;
  memcpy(msg.msg, cec->rx_buf, msg.len);
  cec_received_msg(cec->adap, &msg);
  cec->rx_done = 0;
  cec->rx_buf_cnt = 0;
 }
 return IRQ_HANDLED;
}
