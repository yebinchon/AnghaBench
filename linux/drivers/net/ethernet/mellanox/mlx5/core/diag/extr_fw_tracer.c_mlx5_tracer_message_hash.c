
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MESSAGE_HASH_SIZE ;
 int jhash_1word (int ,int ) ;

__attribute__((used)) static int mlx5_tracer_message_hash(u32 message_id)
{
 return jhash_1word(message_id, 0) & (MESSAGE_HASH_SIZE - 1);
}
