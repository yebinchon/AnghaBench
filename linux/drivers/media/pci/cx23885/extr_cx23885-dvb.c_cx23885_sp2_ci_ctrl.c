
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cx23885_tsport {struct cx23885_dev* dev; } ;
struct cx23885_dev {int gpio_lock; } ;


 int EREMOTEIO ;
 int MC417_OEN ;
 int MC417_RWD ;
 int SP2_ACK ;
 int SP2_ADHI ;
 int SP2_ADLO ;
 int SP2_CS0 ;
 int SP2_CTRL_OFF ;
 int SP2_DATA ;
 int SP2_EN_ALL ;
 int SP2_RD ;
 int SP2_WR ;
 int cx_clear (int ,int) ;
 int cx_read (int ) ;
 int cx_set (int ,int) ;
 int cx_write (int ,int) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int time_after (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int cx23885_sp2_ci_ctrl(void *priv, u8 read, int addr,
    u8 data, int *mem)
{
 struct cx23885_tsport *port = priv;
 struct cx23885_dev *dev = port->dev;
 int ret;
 int tmp = 0;
 unsigned long timeout;

 mutex_lock(&dev->gpio_lock);


 cx_write(MC417_OEN, 0x00001000);
 cx_write(MC417_RWD, (0x00000200 | 0x00000100 | 0x00008000 | 0x00004000) |
    0x00000400 | (0xff & addr));
 cx_clear(MC417_RWD, 0x00000400);
 cx_write(MC417_RWD, (0x00000200 | 0x00000100 | 0x00008000 | 0x00004000) |
    0x00000800 | (0xff & (addr >> 8)));
 cx_clear(MC417_RWD, 0x00000800);

 if (read)

  cx_write(MC417_OEN, 0x00001000 | 0x000000ff);
 else

  cx_write(MC417_RWD, (0x00000200 | 0x00000100 | 0x00008000 | 0x00004000) | data);


 cx_clear(MC417_RWD, 0x00000100);


 cx_clear(MC417_RWD, (read) ? 0x00004000 : 0x00008000);


 timeout = jiffies + msecs_to_jiffies(1);
 while (!time_after(jiffies, timeout)) {
  tmp = cx_read(MC417_RWD);
  if ((tmp & 0x00001000) == 0)
   break;
  usleep_range(50, 100);
 }

 cx_set(MC417_RWD, (0x00000200 | 0x00000100 | 0x00008000 | 0x00004000));
 *mem = tmp & 0xff;

 mutex_unlock(&dev->gpio_lock);

 if (!read) {
  if (*mem < 0) {
   ret = -EREMOTEIO;
   goto err;
  }
 }

 return 0;
err:
 return ret;
}
