
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kim_data_s {int rx_count; int * rx_skb; int rx_state; } ;


 int ST_W4_DATA ;
 int ST_W4_PACKET_TYPE ;
 int kfree_skb (int *) ;
 int pr_debug (char*,int,int) ;
 int pr_err (char*,int,int) ;
 int skb_tailroom (int *) ;
 int validate_firmware_response (struct kim_data_s*) ;

__attribute__((used)) static inline int kim_check_data_len(struct kim_data_s *kim_gdata, int len)
{
 register int room = skb_tailroom(kim_gdata->rx_skb);

 pr_debug("len %d room %d", len, room);

 if (!len) {
  validate_firmware_response(kim_gdata);
 } else if (len > room) {



  pr_err("Data length is too large len %d room %d", len,
      room);
  kfree_skb(kim_gdata->rx_skb);
 } else {



  kim_gdata->rx_state = ST_W4_DATA;
  kim_gdata->rx_count = len;
  return len;
 }



 kim_gdata->rx_state = ST_W4_PACKET_TYPE;
 kim_gdata->rx_skb = ((void*)0);
 kim_gdata->rx_count = 0;

 return 0;
}
