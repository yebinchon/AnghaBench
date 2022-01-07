
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct niu {int flags; } ;


 int NIU_FLAGS_XMAC ;
 int niu_load_hash_bmac (struct niu*,int *) ;
 int niu_load_hash_xmac (struct niu*,int *) ;

__attribute__((used)) static void niu_load_hash(struct niu *np, u16 *hash)
{
 if (np->flags & NIU_FLAGS_XMAC)
  niu_load_hash_xmac(np, hash);
 else
  niu_load_hash_bmac(np, hash);
}
