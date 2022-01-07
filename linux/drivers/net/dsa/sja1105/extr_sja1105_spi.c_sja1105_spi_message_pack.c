
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_spi_message {int address; int read_count; int access; } ;


 int SJA1105_SIZE_SPI_MSG_HEADER ;
 int memset (void*,int ,int const) ;
 int sja1105_pack (void*,int *,int,int,int const) ;

__attribute__((used)) static void
sja1105_spi_message_pack(void *buf, const struct sja1105_spi_message *msg)
{
 const int size = SJA1105_SIZE_SPI_MSG_HEADER;

 memset(buf, 0, size);

 sja1105_pack(buf, &msg->access, 31, 31, size);
 sja1105_pack(buf, &msg->read_count, 30, 25, size);
 sja1105_pack(buf, &msg->address, 24, 4, size);
}
