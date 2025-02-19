
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bsd_db {scalar_t__ maxbits; int* lens; int hsize; int unit; int debug; scalar_t__ mru; TYPE_1__* dict; } ;
struct TYPE_2__ {scalar_t__ cptr; int codem1; } ;


 int BADCODEM1 ;
 scalar_t__ BSD_CURRENT_VERSION ;
 scalar_t__ BSD_NBITS (unsigned char) ;
 scalar_t__ BSD_VERSION (unsigned char) ;
 unsigned char CI_BSD_COMPRESS ;
 int LAST ;
 int bsd_reset (struct bsd_db*) ;

__attribute__((used)) static int bsd_init (void *state, unsigned char *options,
       int opt_len, int unit, int debug, int decomp)
  {
    struct bsd_db *db = state;
    int indx;

    if ((opt_len != 3) || (options[0] != CI_BSD_COMPRESS) || (options[1] != 3)
 || (BSD_VERSION(options[2]) != BSD_CURRENT_VERSION)
 || (BSD_NBITS(options[2]) != db->maxbits)
 || (decomp && db->lens == ((void*)0)))
      {
 return 0;
      }

    if (decomp)
      {
 indx = LAST;
 do
   {
     db->lens[indx] = 1;
   }
 while (indx-- > 0);
      }

    indx = db->hsize;
    while (indx-- != 0)
      {
 db->dict[indx].codem1 = BADCODEM1;
 db->dict[indx].cptr = 0;
      }

    db->unit = unit;
    db->mru = 0;

    if (debug)

      db->debug = 1;

    bsd_reset(db);

    return 1;
  }
