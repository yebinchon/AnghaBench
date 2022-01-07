
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mem_block_size; } ;
struct ar9170 {int mem_free_blocks; TYPE_1__ fw; } ;


 scalar_t__ DIV_ROUND_UP (int ,int ) ;
 int IEEE80211_MAX_FRAME_LEN ;
 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static bool is_mem_full(struct ar9170 *ar)
{
 return (DIV_ROUND_UP(IEEE80211_MAX_FRAME_LEN, ar->fw.mem_block_size) >
  atomic_read(&ar->mem_free_blocks));
}
