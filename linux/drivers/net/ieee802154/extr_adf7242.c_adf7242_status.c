
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adf7242_local {int bmux; int buf_stat_rx; int stat_msg; int spi; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_sync (int ,int *) ;

__attribute__((used)) static int adf7242_status(struct adf7242_local *lp, u8 *stat)
{
 int status;

 mutex_lock(&lp->bmux);
 status = spi_sync(lp->spi, &lp->stat_msg);
 *stat = lp->buf_stat_rx;
 mutex_unlock(&lp->bmux);

 return status;
}
