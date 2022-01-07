
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txdb {scalar_t__ rptr; scalar_t__ wptr; } ;


 int BDX_ASSERT (int) ;
 int __bdx_tx_db_ptr_next (struct txdb*,scalar_t__*) ;

__attribute__((used)) static inline void bdx_tx_db_inc_rptr(struct txdb *db)
{
 BDX_ASSERT(db->rptr == db->wptr);
 __bdx_tx_db_ptr_next(db, &db->rptr);
}
