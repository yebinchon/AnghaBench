
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_data_s {int rx_count; scalar_t__ rx_chnl; int * rx_skb; int rx_state; } ;


 int ST_W4_DATA ;
 int ST_W4_PACKET_TYPE ;
 int kfree_skb (int *) ;
 int pr_debug (char*,int,int) ;
 int pr_err (char*,int,int) ;
 int skb_tailroom (int *) ;
 int st_send_frame (unsigned char,struct st_data_s*) ;

__attribute__((used)) static inline int st_check_data_len(struct st_data_s *st_gdata,
 unsigned char chnl_id, int len)
{
 int room = skb_tailroom(st_gdata->rx_skb);

 pr_debug("len %d room %d", len, room);

 if (!len) {




  st_send_frame(chnl_id, st_gdata);

 } else if (len > room) {



  pr_err("Data length is too large len %d room %d", len,
      room);
  kfree_skb(st_gdata->rx_skb);
 } else {



  st_gdata->rx_state = ST_W4_DATA;
  st_gdata->rx_count = len;
  return len;
 }



 st_gdata->rx_state = ST_W4_PACKET_TYPE;
 st_gdata->rx_skb = ((void*)0);
 st_gdata->rx_count = 0;
 st_gdata->rx_chnl = 0;

 return 0;
}
