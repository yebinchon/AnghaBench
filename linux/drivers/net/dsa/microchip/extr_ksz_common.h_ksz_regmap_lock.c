
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mutex {int dummy; } ;


 int mutex_lock (struct mutex*) ;

__attribute__((used)) static inline void ksz_regmap_lock(void *__mtx)
{
 struct mutex *mtx = __mtx;
 mutex_lock(mtx);
}
