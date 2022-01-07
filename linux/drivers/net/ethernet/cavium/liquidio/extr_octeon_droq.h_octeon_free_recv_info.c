
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_recv_info {int dummy; } ;


 int kfree (struct octeon_recv_info*) ;

__attribute__((used)) static inline void octeon_free_recv_info(struct octeon_recv_info *recv_info)
{
 kfree(recv_info);
}
