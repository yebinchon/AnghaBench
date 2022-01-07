
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {int group; int owner; int dev; } ;
struct net {int user_ns; } ;
struct cred {int euid; } ;


 int CAP_NET_ADMIN ;
 struct cred* current_cred () ;
 struct net* dev_net (int ) ;
 scalar_t__ gid_valid (int ) ;
 int in_egroup_p (int ) ;
 int ns_capable (int ,int ) ;
 int uid_eq (int ,int ) ;
 scalar_t__ uid_valid (int ) ;

__attribute__((used)) static inline bool tun_not_capable(struct tun_struct *tun)
{
 const struct cred *cred = current_cred();
 struct net *net = dev_net(tun->dev);

 return ((uid_valid(tun->owner) && !uid_eq(cred->euid, tun->owner)) ||
    (gid_valid(tun->group) && !in_egroup_p(tun->group))) &&
  !ns_capable(net->user_ns, CAP_NET_ADMIN);
}
