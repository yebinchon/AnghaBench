
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct lio {int msg_enable; } ;


 struct lio* GET_LIO (struct net_device*) ;

__attribute__((used)) static void lio_vf_set_msglevel(struct net_device *netdev, u32 msglvl)
{
 struct lio *lio = GET_LIO(netdev);

 lio->msg_enable = msglvl;
}
