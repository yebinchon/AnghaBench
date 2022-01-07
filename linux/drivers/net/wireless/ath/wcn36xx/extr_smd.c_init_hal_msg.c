
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx_hal_msg_header {int msg_type; size_t len; int msg_version; } ;
typedef enum wcn36xx_hal_host_msg_type { ____Placeholder_wcn36xx_hal_host_msg_type } wcn36xx_hal_host_msg_type ;


 int WCN36XX_HAL_MSG_VERSION0 ;
 int memset (struct wcn36xx_hal_msg_header*,int ,size_t) ;

__attribute__((used)) static void init_hal_msg(struct wcn36xx_hal_msg_header *hdr,
    enum wcn36xx_hal_host_msg_type msg_type,
    size_t msg_size)
{
 memset(hdr, 0, msg_size + sizeof(*hdr));
 hdr->msg_type = msg_type;
 hdr->msg_version = WCN36XX_HAL_MSG_VERSION0;
 hdr->len = msg_size + sizeof(*hdr);
}
