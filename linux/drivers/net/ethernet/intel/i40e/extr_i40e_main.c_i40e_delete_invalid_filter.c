
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_pf {int fd_ip4_filter_cnt; int fd_sctp4_filter_cnt; int fd_udp4_filter_cnt; int fd_tcp4_filter_cnt; scalar_t__ fd_inv; int fdir_pf_active_filters; } ;
struct i40e_fdir_filter {int flow_type; int fdir_node; int ip4_proto; } ;
 int hlist_del (int *) ;
 int kfree (struct i40e_fdir_filter*) ;

__attribute__((used)) static void i40e_delete_invalid_filter(struct i40e_pf *pf,
           struct i40e_fdir_filter *filter)
{

 pf->fdir_pf_active_filters--;
 pf->fd_inv = 0;

 switch (filter->flow_type) {
 case 129:
  pf->fd_tcp4_filter_cnt--;
  break;
 case 128:
  pf->fd_udp4_filter_cnt--;
  break;
 case 130:
  pf->fd_sctp4_filter_cnt--;
  break;
 case 131:
  switch (filter->ip4_proto) {
  case 133:
   pf->fd_tcp4_filter_cnt--;
   break;
  case 132:
   pf->fd_udp4_filter_cnt--;
   break;
  case 134:
   pf->fd_sctp4_filter_cnt--;
   break;
  case 135:
   pf->fd_ip4_filter_cnt--;
   break;
  }
  break;
 }


 hlist_del(&filter->fdir_node);
 kfree(filter);
}
