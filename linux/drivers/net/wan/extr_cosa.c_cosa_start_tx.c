
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cosa_data {int txbitmap; int lock; int num; } ;
struct channel_data {char* txbuf; int txsize; int num; struct cosa_data* cosa; } ;


 int COSA_MTU ;
 int pr_cont (char*,...) ;
 int pr_info (char*,int ,int ,int) ;
 int put_driver_status (struct cosa_data*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cosa_start_tx(struct channel_data *chan, char *buf, int len)
{
 struct cosa_data *cosa = chan->cosa;
 unsigned long flags;
 spin_lock_irqsave(&cosa->lock, flags);
 chan->txbuf = buf;
 chan->txsize = len;
 if (len > COSA_MTU)
  chan->txsize = COSA_MTU;
 spin_unlock_irqrestore(&cosa->lock, flags);


 set_bit(chan->num, &cosa->txbitmap);
 put_driver_status(cosa);

 return 0;
}
