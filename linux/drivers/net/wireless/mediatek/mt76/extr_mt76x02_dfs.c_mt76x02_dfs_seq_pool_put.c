
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt76x02_dfs_sequence {int head; } ;
struct TYPE_2__ {int seq_len; int seq_pool_len; } ;
struct mt76x02_dfs_pattern_detector {TYPE_1__ seq_stats; int seq_pool; } ;
struct mt76x02_dev {struct mt76x02_dfs_pattern_detector dfs_pd; } ;


 int list_add (int *,int *) ;

__attribute__((used)) static void mt76x02_dfs_seq_pool_put(struct mt76x02_dev *dev,
         struct mt76x02_dfs_sequence *seq)
{
 struct mt76x02_dfs_pattern_detector *dfs_pd = &dev->dfs_pd;

 list_add(&seq->head, &dfs_pd->seq_pool);

 dfs_pd->seq_stats.seq_pool_len++;
 dfs_pd->seq_stats.seq_len--;
}
