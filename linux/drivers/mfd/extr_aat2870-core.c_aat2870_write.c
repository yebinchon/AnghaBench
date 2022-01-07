
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct aat2870_data {int io_lock; } ;


 int __aat2870_write (struct aat2870_data*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int aat2870_write(struct aat2870_data *aat2870, u8 addr, u8 val)
{
 int ret;

 mutex_lock(&aat2870->io_lock);
 ret = __aat2870_write(aat2870, addr, val);
 mutex_unlock(&aat2870->io_lock);

 return ret;
}
