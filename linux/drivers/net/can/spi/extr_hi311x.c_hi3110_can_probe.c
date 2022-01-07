
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct spi_device {int bits_per_word; int dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct net_device {int flags; int * netdev_ops; } ;
struct TYPE_4__ {int freq; } ;
struct TYPE_5__ {int ctrlmode_supported; TYPE_1__ clock; int do_get_berr_counter; int do_set_mode; int * bittiming_const; } ;
struct hi3110_priv {int model; struct clk* power; void* spi_rx_buf; void* spi_tx_buf; int hi3110_lock; struct spi_device* spi; struct clk* transceiver; struct clk* clk; struct net_device* net; TYPE_2__ can; } ;
struct clk {int dummy; } ;
typedef enum hi3110_model { ____Placeholder_hi3110_model } hi3110_model ;
struct TYPE_6__ {int driver_data; } ;


 int CAN_CTRLMODE_3_SAMPLES ;
 int CAN_CTRLMODE_BERR_REPORTING ;
 int CAN_CTRLMODE_LISTENONLY ;
 int CAN_CTRLMODE_LOOPBACK ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int ERANGE ;
 int GFP_KERNEL ;
 int HI3110_RX_BUF_LEN ;
 int HI3110_TX_ECHO_SKB_MAX ;
 int IFF_ECHO ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 struct net_device* alloc_candev (int,int ) ;
 int clk_disable_unprepare (struct clk*) ;
 int clk_get_rate (struct clk*) ;
 int clk_prepare_enable (struct clk*) ;
 int dev_err (int *,char*,...) ;
 int devm_can_led_init (struct net_device*) ;
 struct clk* devm_clk_get (int *,int *) ;
 void* devm_kzalloc (int *,int ,int ) ;
 void* devm_regulator_get_optional (int *,char*) ;
 int free_candev (struct net_device*) ;
 int hi3110_bittiming_const ;
 int hi3110_do_set_mode ;
 int hi3110_get_berr_counter ;
 int hi3110_hw_probe (struct spi_device*) ;
 int hi3110_hw_sleep (struct spi_device*) ;
 int hi3110_netdev_ops ;
 int hi3110_of_match ;
 int hi3110_power_enable (struct clk*,int) ;
 int mutex_init (int *) ;
 int netdev_info (struct net_device*,char*,int) ;
 struct hi3110_priv* netdev_priv (struct net_device*) ;
 struct of_device_id* of_match_device (int ,int *) ;
 int register_candev (struct net_device*) ;
 TYPE_3__* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct hi3110_priv*) ;
 int spi_setup (struct spi_device*) ;

__attribute__((used)) static int hi3110_can_probe(struct spi_device *spi)
{
 const struct of_device_id *of_id = of_match_device(hi3110_of_match,
          &spi->dev);
 struct net_device *net;
 struct hi3110_priv *priv;
 struct clk *clk;
 int freq, ret;

 clk = devm_clk_get(&spi->dev, ((void*)0));
 if (IS_ERR(clk)) {
  dev_err(&spi->dev, "no CAN clock source defined\n");
  return PTR_ERR(clk);
 }
 freq = clk_get_rate(clk);


 if (freq > 40000000)
  return -ERANGE;


 net = alloc_candev(sizeof(struct hi3110_priv), HI3110_TX_ECHO_SKB_MAX);
 if (!net)
  return -ENOMEM;

 if (!IS_ERR(clk)) {
  ret = clk_prepare_enable(clk);
  if (ret)
   goto out_free;
 }

 net->netdev_ops = &hi3110_netdev_ops;
 net->flags |= IFF_ECHO;

 priv = netdev_priv(net);
 priv->can.bittiming_const = &hi3110_bittiming_const;
 priv->can.do_set_mode = hi3110_do_set_mode;
 priv->can.do_get_berr_counter = hi3110_get_berr_counter;
 priv->can.clock.freq = freq / 2;
 priv->can.ctrlmode_supported = CAN_CTRLMODE_3_SAMPLES |
  CAN_CTRLMODE_LOOPBACK |
  CAN_CTRLMODE_LISTENONLY |
  CAN_CTRLMODE_BERR_REPORTING;

 if (of_id)
  priv->model = (enum hi3110_model)of_id->data;
 else
  priv->model = spi_get_device_id(spi)->driver_data;
 priv->net = net;
 priv->clk = clk;

 spi_set_drvdata(spi, priv);


 spi->bits_per_word = 8;
 ret = spi_setup(spi);
 if (ret)
  goto out_clk;

 priv->power = devm_regulator_get_optional(&spi->dev, "vdd");
 priv->transceiver = devm_regulator_get_optional(&spi->dev, "xceiver");
 if ((PTR_ERR(priv->power) == -EPROBE_DEFER) ||
     (PTR_ERR(priv->transceiver) == -EPROBE_DEFER)) {
  ret = -EPROBE_DEFER;
  goto out_clk;
 }

 ret = hi3110_power_enable(priv->power, 1);
 if (ret)
  goto out_clk;

 priv->spi = spi;
 mutex_init(&priv->hi3110_lock);

 priv->spi_tx_buf = devm_kzalloc(&spi->dev, HI3110_RX_BUF_LEN,
     GFP_KERNEL);
 if (!priv->spi_tx_buf) {
  ret = -ENOMEM;
  goto error_probe;
 }
 priv->spi_rx_buf = devm_kzalloc(&spi->dev, HI3110_RX_BUF_LEN,
     GFP_KERNEL);

 if (!priv->spi_rx_buf) {
  ret = -ENOMEM;
  goto error_probe;
 }

 SET_NETDEV_DEV(net, &spi->dev);

 ret = hi3110_hw_probe(spi);
 if (ret) {
  if (ret == -ENODEV)
   dev_err(&spi->dev, "Cannot initialize %x. Wrong wiring?\n",
    priv->model);
  goto error_probe;
 }
 hi3110_hw_sleep(spi);

 ret = register_candev(net);
 if (ret)
  goto error_probe;

 devm_can_led_init(net);
 netdev_info(net, "%x successfully initialized.\n", priv->model);

 return 0;

 error_probe:
 hi3110_power_enable(priv->power, 0);

 out_clk:
 if (!IS_ERR(clk))
  clk_disable_unprepare(clk);

 out_free:
 free_candev(net);

 dev_err(&spi->dev, "Probe failed, err=%d\n", -ret);
 return ret;
}
