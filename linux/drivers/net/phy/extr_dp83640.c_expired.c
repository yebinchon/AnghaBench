
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxts {int tmo; } ;


 int jiffies ;
 int time_after (int ,int ) ;

__attribute__((used)) static int expired(struct rxts *rxts)
{
 return time_after(jiffies, rxts->tmo);
}
