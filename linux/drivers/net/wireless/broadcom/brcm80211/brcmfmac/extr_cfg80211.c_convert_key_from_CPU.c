
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lo; void* hi; } ;
struct brcmf_wsec_key_le {int ea; int data; void* iv_initialized; TYPE_1__ rxiv; void* flags; void* algo; void* len; void* index; } ;
struct TYPE_4__ {int lo; int hi; } ;
struct brcmf_wsec_key {int ea; int data; int iv_initialized; TYPE_2__ rxiv; int flags; int algo; int len; int index; } ;


 int cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void convert_key_from_CPU(struct brcmf_wsec_key *key,
     struct brcmf_wsec_key_le *key_le)
{
 key_le->index = cpu_to_le32(key->index);
 key_le->len = cpu_to_le32(key->len);
 key_le->algo = cpu_to_le32(key->algo);
 key_le->flags = cpu_to_le32(key->flags);
 key_le->rxiv.hi = cpu_to_le32(key->rxiv.hi);
 key_le->rxiv.lo = cpu_to_le16(key->rxiv.lo);
 key_le->iv_initialized = cpu_to_le32(key->iv_initialized);
 memcpy(key_le->data, key->data, sizeof(key->data));
 memcpy(key_le->ea, key->ea, sizeof(key->ea));
}
