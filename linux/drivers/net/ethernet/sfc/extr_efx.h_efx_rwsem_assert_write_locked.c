
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rw_semaphore {int dummy; } ;


 scalar_t__ WARN_ON (int ) ;
 int down_read_trylock (struct rw_semaphore*) ;
 int up_read (struct rw_semaphore*) ;

__attribute__((used)) static inline bool efx_rwsem_assert_write_locked(struct rw_semaphore *sem)
{
 if (WARN_ON(down_read_trylock(sem))) {
  up_read(sem);
  return 0;
 }
 return 1;
}
