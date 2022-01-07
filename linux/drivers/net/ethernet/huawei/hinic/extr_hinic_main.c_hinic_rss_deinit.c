
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_dev {int rss_tmpl_idx; } ;


 int hinic_rss_cfg (struct hinic_dev*,int ,int ) ;

__attribute__((used)) static void hinic_rss_deinit(struct hinic_dev *nic_dev)
{
 hinic_rss_cfg(nic_dev, 0, nic_dev->rss_tmpl_idx);
}
