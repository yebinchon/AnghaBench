
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_device {int features; } ;
struct dsa_switch {struct ksz_device* priv; } ;
typedef enum dsa_tag_protocol { ____Placeholder_dsa_tag_protocol } dsa_tag_protocol ;


 int DSA_TAG_PROTO_KSZ9477 ;
 int DSA_TAG_PROTO_KSZ9893 ;
 int IS_9893 ;

__attribute__((used)) static enum dsa_tag_protocol ksz9477_get_tag_protocol(struct dsa_switch *ds,
            int port)
{
 enum dsa_tag_protocol proto = DSA_TAG_PROTO_KSZ9477;
 struct ksz_device *dev = ds->priv;

 if (dev->features & IS_9893)
  proto = DSA_TAG_PROTO_KSZ9893;
 return proto;
}
