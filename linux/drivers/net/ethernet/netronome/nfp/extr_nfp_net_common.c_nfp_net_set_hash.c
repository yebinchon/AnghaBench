
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_meta_parsed {int hash; int hash_type; } ;
struct net_device {int features; } ;
typedef int __be32 ;


 int NETIF_F_RXHASH ;



 int PKT_HASH_TYPE_L3 ;
 int PKT_HASH_TYPE_L4 ;
 int get_unaligned_be32 (int *) ;

__attribute__((used)) static void
nfp_net_set_hash(struct net_device *netdev, struct nfp_meta_parsed *meta,
   unsigned int type, __be32 *hash)
{
 if (!(netdev->features & NETIF_F_RXHASH))
  return;

 switch (type) {
 case 130:
 case 129:
 case 128:
  meta->hash_type = PKT_HASH_TYPE_L3;
  break;
 default:
  meta->hash_type = PKT_HASH_TYPE_L4;
  break;
 }

 meta->hash = get_unaligned_be32(hash);
}
