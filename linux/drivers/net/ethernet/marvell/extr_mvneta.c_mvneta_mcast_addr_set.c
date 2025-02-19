
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvneta_port {int * mcast_count; int dev; } ;


 int EINVAL ;
 scalar_t__ memcmp (unsigned char*,char*,int) ;
 unsigned char mvneta_addr_crc (unsigned char*) ;
 int mvneta_set_other_mcast_addr (struct mvneta_port*,unsigned char,int) ;
 int mvneta_set_special_mcast_addr (struct mvneta_port*,unsigned char,int) ;
 int netdev_info (int ,char*,unsigned char,...) ;

__attribute__((used)) static int mvneta_mcast_addr_set(struct mvneta_port *pp, unsigned char *p_addr,
     int queue)
{
 unsigned char crc_result = 0;

 if (memcmp(p_addr, "\x01\x00\x5e\x00\x00", 5) == 0) {
  mvneta_set_special_mcast_addr(pp, p_addr[5], queue);
  return 0;
 }

 crc_result = mvneta_addr_crc(p_addr);
 if (queue == -1) {
  if (pp->mcast_count[crc_result] == 0) {
   netdev_info(pp->dev, "No valid Mcast for crc8=0x%02x\n",
        crc_result);
   return -EINVAL;
  }

  pp->mcast_count[crc_result]--;
  if (pp->mcast_count[crc_result] != 0) {
   netdev_info(pp->dev,
        "After delete there are %d valid Mcast for crc8=0x%02x\n",
        pp->mcast_count[crc_result], crc_result);
   return -EINVAL;
  }
 } else
  pp->mcast_count[crc_result]++;

 mvneta_set_other_mcast_addr(pp, crc_result, queue);

 return 0;
}
