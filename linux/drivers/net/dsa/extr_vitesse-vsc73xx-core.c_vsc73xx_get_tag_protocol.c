
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch {int dummy; } ;
typedef enum dsa_tag_protocol { ____Placeholder_dsa_tag_protocol } dsa_tag_protocol ;


 int DSA_TAG_PROTO_NONE ;

__attribute__((used)) static enum dsa_tag_protocol vsc73xx_get_tag_protocol(struct dsa_switch *ds,
            int port)
{
 return DSA_TAG_PROTO_NONE;
}
