
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct dst_entry {int dummy; } ;
struct rtable {struct dst_entry dst; } ;


 int ENETUNREACH ;
 int IS_ERR (struct rtable*) ;
 int PTR_ERR (struct rtable*) ;
 int init_net ;
 struct rtable* ip_route_output (int *,int ,int ,int ,int ) ;

__attribute__((used)) static int cnic_get_v4_route(struct sockaddr_in *dst_addr,
        struct dst_entry **dst)
{
 return -ENETUNREACH;

}
