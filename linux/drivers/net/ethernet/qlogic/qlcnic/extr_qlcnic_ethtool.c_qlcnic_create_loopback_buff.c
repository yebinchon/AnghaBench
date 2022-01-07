
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
typedef int random_data ;


 int ETH_ALEN ;
 int QLCNIC_ILB_PKT_SIZE ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int,int ) ;

__attribute__((used)) static void qlcnic_create_loopback_buff(unsigned char *data, u8 mac[])
{
 unsigned char random_data[] = {0xa8, 0x06, 0x45, 0x00};

 memset(data, 0x4e, QLCNIC_ILB_PKT_SIZE);

 memcpy(data, mac, ETH_ALEN);
 memcpy(data + ETH_ALEN, mac, ETH_ALEN);

 memcpy(data + 2 * ETH_ALEN, random_data, sizeof(random_data));
}
