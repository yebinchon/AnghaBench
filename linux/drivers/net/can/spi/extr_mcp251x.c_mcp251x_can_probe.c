
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct spi_device {int bits_per_word; int max_speed_hz; int dev; } ;
struct net_device {int flags; int * netdev_ops; } ;
struct TYPE_4__ {int freq; } ;
struct TYPE_5__ {int ctrlmode_supported; TYPE_1__ clock; int do_set_mode; int * bittiming_const; } ;
struct mcp251x_priv {int model; struct clk* power; void* spi_rx_buf; void* spi_tx_buf; int mcp_lock; struct spi_device* spi; struct clk* transceiver; struct clk* clk; struct net_device* net; TYPE_2__ can; } ;
struct mcp251x_platform_data {int oscillator_frequency; } ;
struct clk {int dummy; } ;
typedef enum mcp251x_model { ____Placeholder_mcp251x_model } mcp251x_model ;
struct TYPE_6__ {int driver_data; } ;


 int CAN_CTRLMODE_3_SAMPLES ;
 int CAN_CTRLMODE_LISTENONLY ;
 int CAN_CTRLMODE_LOOPBACK ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int ERANGE ;
 int GFP_KERNEL ;
 int IFF_ECHO ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int SPI_TRANSFER_BUF_LEN ;
 int TX_ECHO_SKB_MAX ;
 struct net_device* alloc_candev (int,int ) ;
 int clk_disable_unprepare (struct clk*) ;
 int clk_get_rate (struct clk*) ;
 int clk_prepare_enable (struct clk*) ;
 int dev_err (int *,char*,int) ;
 struct mcp251x_platform_data* dev_get_platdata (int *) ;
 void* device_get_match_data (int *) ;
 int devm_can_led_init (struct net_device*) ;
 struct clk* devm_clk_get_optional (int *,int *) ;
 void* devm_kzalloc (int *,int ,int ) ;
 void* devm_regulator_get_optional (int *,char*) ;
 int free_candev (struct net_device*) ;
 int mcp251x_bittiming_const ;
 int mcp251x_do_set_mode ;
 int mcp251x_hw_probe (struct spi_device*) ;
 int mcp251x_hw_sleep (struct spi_device*) ;
 scalar_t__ mcp251x_is_2510 (struct spi_device*) ;
 int mcp251x_netdev_ops ;
 int mcp251x_power_enable (struct clk*,int) ;
 int mutex_init (int *) ;
 int netdev_info (struct net_device*,char*,int) ;
 struct mcp251x_priv* netdev_priv (struct net_device*) ;
 int register_candev (struct net_device*) ;
 TYPE_3__* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct mcp251x_priv*) ;
 int spi_setup (struct spi_device*) ;

__attribute__((used)) static int mcp251x_can_probe(struct spi_device *spi)
{
 const void *match = device_get_match_data(&spi->dev);
 struct mcp251x_platform_data *pdata = dev_get_platdata(&spi->dev);
 struct net_device *net;
 struct mcp251x_priv *priv;
 struct clk *clk;
 int freq, ret;

 clk = devm_clk_get_optional(&spi->dev, ((void*)0));
 if (IS_ERR(clk))
  return PTR_ERR(clk);

 freq = clk_get_rate(clk);
 if (freq == 0 && pdata)
  freq = pdata->oscillator_frequency;


 if (freq < 1000000 || freq > 25000000)
  return -ERANGE;


 net = alloc_candev(sizeof(struct mcp251x_priv), TX_ECHO_SKB_MAX);
 if (!net)
  return -ENOMEM;

 ret = clk_prepare_enable(clk);
 if (ret)
  goto out_free;

 net->netdev_ops = &mcp251x_netdev_ops;
 net->flags |= IFF_ECHO;

 priv = netdev_priv(net);
 priv->can.bittiming_const = &mcp251x_bittiming_const;
 priv->can.do_set_mode = mcp251x_do_set_mode;
 priv->can.clock.freq = freq / 2;
 priv->can.ctrlmode_supported = CAN_CTRLMODE_3_SAMPLES |
  CAN_CTRLMODE_LOOPBACK | CAN_CTRLMODE_LISTENONLY;
 if (match)
  priv->model = (enum mcp251x_model)match;
 else
  priv->model = spi_get_device_id(spi)->driver_data;
 priv->net = net;
 priv->clk = clk;

 spi_set_drvdata(spi, priv);


 spi->bits_per_word = 8;
 if (mcp251x_is_2510(spi))
  spi->max_speed_hz = spi->max_speed_hz ? : 5 * 1000 * 1000;
 else
  spi->max_speed_hz = spi->max_speed_hz ? : 10 * 1000 * 1000;
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

 ret = mcp251x_power_enable(priv->power, 1);
 if (ret)
  goto out_clk;

 priv->spi = spi;
 mutex_init(&priv->mcp_lock);

 priv->spi_tx_buf = devm_kzalloc(&spi->dev, SPI_TRANSFER_BUF_LEN,
     GFP_KERNEL);
 if (!priv->spi_tx_buf) {
  ret = -ENOMEM;
  goto error_probe;
 }

 priv->spi_rx_buf = devm_kzalloc(&spi->dev, SPI_TRANSFER_BUF_LEN,
     GFP_KERNEL);
 if (!priv->spi_rx_buf) {
  ret = -ENOMEM;
  goto error_probe;
 }

 SET_NETDEV_DEV(net, &spi->dev);


 ret = mcp251x_hw_probe(spi);
 if (ret) {
  if (ret == -ENODEV)
   dev_err(&spi->dev, "Cannot initialize MCP%x. Wrong wiring?\n",
    priv->model);
  goto error_probe;
 }

 mcp251x_hw_sleep(spi);

 ret = register_candev(net);
 if (ret)
  goto error_probe;

 devm_can_led_init(net);

 netdev_info(net, "MCP%x successfully initialized.\n", priv->model);
 return 0;

error_probe:
 mcp251x_power_enable(priv->power, 0);

out_clk:
 clk_disable_unprepare(clk);

out_free:
 free_candev(net);

 dev_err(&spi->dev, "Probe failed, err=%d\n", -ret);
 return ret;
}
