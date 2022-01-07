
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tbnet {int login_sent; int login_received; int login_work; int connection_lock; } ;


 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_delayed_work (int ,int *,int ) ;
 int system_long_wq ;

__attribute__((used)) static void start_login(struct tbnet *net)
{
 mutex_lock(&net->connection_lock);
 net->login_sent = 0;
 net->login_received = 0;
 mutex_unlock(&net->connection_lock);

 queue_delayed_work(system_long_wq, &net->login_work,
      msecs_to_jiffies(1000));
}
