
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {struct net_device* dev; } ;
struct xfrm_state {TYPE_2__* aead; TYPE_1__ xso; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ alg_icv_len; unsigned char* alg_key; int alg_key_len; char* alg_name; } ;


 int EINVAL ;
 scalar_t__ IXGBE_IPSEC_AUTH_BITS ;
 int IXGBE_IPSEC_KEY_BITS ;
 int aes_gcm_name ;
 int memcpy (int *,unsigned char*,int) ;
 int netdev_err (struct net_device*,char*,...) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static int ixgbevf_ipsec_parse_proto_keys(struct xfrm_state *xs,
       u32 *mykey, u32 *mysalt)
{
 struct net_device *dev = xs->xso.dev;
 unsigned char *key_data;
 char *alg_name = ((void*)0);
 int key_len;

 if (!xs->aead) {
  netdev_err(dev, "Unsupported IPsec algorithm\n");
  return -EINVAL;
 }

 if (xs->aead->alg_icv_len != IXGBE_IPSEC_AUTH_BITS) {
  netdev_err(dev, "IPsec offload requires %d bit authentication\n",
      IXGBE_IPSEC_AUTH_BITS);
  return -EINVAL;
 }

 key_data = &xs->aead->alg_key[0];
 key_len = xs->aead->alg_key_len;
 alg_name = xs->aead->alg_name;

 if (strcmp(alg_name, aes_gcm_name)) {
  netdev_err(dev, "Unsupported IPsec algorithm - please use %s\n",
      aes_gcm_name);
  return -EINVAL;
 }





 if (key_len > IXGBE_IPSEC_KEY_BITS) {
  *mysalt = ((u32 *)key_data)[4];
 } else if (key_len == IXGBE_IPSEC_KEY_BITS) {
  *mysalt = 0;
 } else {
  netdev_err(dev, "IPsec hw offload only supports keys up to 128 bits with a 32 bit salt\n");
  return -EINVAL;
 }
 memcpy(mykey, key_data, 16);

 return 0;
}
