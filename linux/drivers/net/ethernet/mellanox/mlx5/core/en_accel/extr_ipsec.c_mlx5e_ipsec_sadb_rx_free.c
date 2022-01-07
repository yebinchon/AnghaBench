
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_ipsec_sa_entry {int handle; struct mlx5e_ipsec* ipsec; } ;
struct mlx5e_ipsec {int halloc; } ;


 int ida_simple_remove (int *,int ) ;

__attribute__((used)) static void mlx5e_ipsec_sadb_rx_free(struct mlx5e_ipsec_sa_entry *sa_entry)
{
 struct mlx5e_ipsec *ipsec = sa_entry->ipsec;



 ida_simple_remove(&ipsec->halloc, sa_entry->handle);
}
