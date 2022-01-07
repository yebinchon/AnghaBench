
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txdb {int wptr; int rptr; int size; } ;



__attribute__((used)) static inline int bdx_tx_db_size(struct txdb *db)
{
 int taken = db->wptr - db->rptr;
 if (taken < 0)
  taken = db->size + 1 + taken;

 return db->size - taken;
}
