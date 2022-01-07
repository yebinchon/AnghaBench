
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
struct spi_transfer {int len; char* rx_buf; int * tx_buf; } ;
struct spi_message {int dummy; } ;
struct ks8995_switch {int lock; int spi; } ;
typedef int cmd ;
typedef int __be16 ;


 int KS8995_CMD_READ ;
 int create_spi_cmd (struct ks8995_switch*,int ,unsigned int) ;
 int memset (struct spi_transfer**,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;

__attribute__((used)) static int ks8995_read(struct ks8995_switch *ks, char *buf,
   unsigned offset, size_t count)
{
 __be16 cmd;
 struct spi_transfer t[2];
 struct spi_message m;
 int err;

 cmd = create_spi_cmd(ks, KS8995_CMD_READ, offset);
 spi_message_init(&m);

 memset(&t, 0, sizeof(t));

 t[0].tx_buf = &cmd;
 t[0].len = sizeof(cmd);
 spi_message_add_tail(&t[0], &m);

 t[1].rx_buf = buf;
 t[1].len = count;
 spi_message_add_tail(&t[1], &m);

 mutex_lock(&ks->lock);
 err = spi_sync(ks->spi, &m);
 mutex_unlock(&ks->lock);

 return err ? err : count;
}
