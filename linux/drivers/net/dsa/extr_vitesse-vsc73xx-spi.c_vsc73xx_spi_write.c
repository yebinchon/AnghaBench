
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int t ;
struct vsc73xx_spi {int lock; int spi; } ;
struct vsc73xx {struct vsc73xx_spi* priv; } ;
struct spi_transfer {int* tx_buf; int len; } ;
struct spi_message {int dummy; } ;
typedef int cmd ;
typedef int buf ;


 int EINVAL ;
 int VSC73XX_CMD_SPI_MODE_WRITE ;
 int memset (struct spi_transfer**,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;
 int vsc73xx_is_addr_valid (int,int) ;
 int vsc73xx_make_addr (int ,int,int) ;

__attribute__((used)) static int vsc73xx_spi_write(struct vsc73xx *vsc, u8 block, u8 subblock, u8 reg,
        u32 val)
{
 struct vsc73xx_spi *vsc_spi = vsc->priv;
 struct spi_transfer t[2];
 struct spi_message m;
 u8 cmd[2];
 u8 buf[4];
 int ret;

 if (!vsc73xx_is_addr_valid(block, subblock))
  return -EINVAL;

 spi_message_init(&m);

 memset(&t, 0, sizeof(t));

 t[0].tx_buf = cmd;
 t[0].len = sizeof(cmd);
 spi_message_add_tail(&t[0], &m);

 t[1].tx_buf = buf;
 t[1].len = sizeof(buf);
 spi_message_add_tail(&t[1], &m);

 cmd[0] = vsc73xx_make_addr(VSC73XX_CMD_SPI_MODE_WRITE, block, subblock);
 cmd[1] = reg;

 buf[0] = (val >> 24) & 0xff;
 buf[1] = (val >> 16) & 0xff;
 buf[2] = (val >> 8) & 0xff;
 buf[3] = val & 0xff;

 mutex_lock(&vsc_spi->lock);
 ret = spi_sync(vsc_spi->spi, &m);
 mutex_unlock(&vsc_spi->lock);

 return ret;
}
