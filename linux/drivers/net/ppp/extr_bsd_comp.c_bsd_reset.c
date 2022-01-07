
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsd_db {scalar_t__ clear_count; scalar_t__ seqno; } ;


 int bsd_clear (struct bsd_db*) ;

__attribute__((used)) static void bsd_reset (void *state)
  {
    struct bsd_db *db = (struct bsd_db *) state;

    bsd_clear(db);

    db->seqno = 0;
    db->clear_count = 0;
  }
