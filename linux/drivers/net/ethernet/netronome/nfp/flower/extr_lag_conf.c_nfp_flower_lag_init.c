
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_fl_lag {int retrans_skbs; int ida_handle; int lock; int group_list; int work; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int __skb_queue_head_init (int *) ;
 int ida_init (int *) ;
 int mutex_init (int *) ;
 int nfp_fl_increment_version (struct nfp_fl_lag*) ;
 int nfp_fl_lag_do_work ;

void nfp_flower_lag_init(struct nfp_fl_lag *lag)
{
 INIT_DELAYED_WORK(&lag->work, nfp_fl_lag_do_work);
 INIT_LIST_HEAD(&lag->group_list);
 mutex_init(&lag->lock);
 ida_init(&lag->ida_handle);

 __skb_queue_head_init(&lag->retrans_skbs);


 nfp_fl_increment_version(lag);
}
