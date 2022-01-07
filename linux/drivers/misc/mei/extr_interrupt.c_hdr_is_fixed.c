
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_msg_hdr {scalar_t__ host_addr; scalar_t__ me_addr; } ;



__attribute__((used)) static inline bool hdr_is_fixed(struct mei_msg_hdr *mei_hdr)
{
 return mei_hdr->host_addr == 0 && mei_hdr->me_addr != 0;
}
