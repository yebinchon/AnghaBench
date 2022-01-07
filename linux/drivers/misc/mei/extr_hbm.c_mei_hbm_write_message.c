
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_msg_hdr {int length; } ;
struct mei_device {int dummy; } ;


 int mei_write_message (struct mei_device*,struct mei_msg_hdr*,int,void const*,int ) ;

__attribute__((used)) static inline int mei_hbm_write_message(struct mei_device *dev,
     struct mei_msg_hdr *hdr,
     const void *data)
{
 return mei_write_message(dev, hdr, sizeof(*hdr), data, hdr->length);
}
