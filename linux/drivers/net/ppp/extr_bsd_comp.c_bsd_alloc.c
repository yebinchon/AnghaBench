
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsd_dict {int dummy; } ;
struct bsd_db {int totlen; unsigned int hsize; unsigned int hshift; unsigned int maxmaxcode; int maxbits; int * lens; void* dict; } ;


 scalar_t__ BSD_CURRENT_VERSION ;
 int BSD_NBITS (unsigned char) ;
 scalar_t__ BSD_VERSION (unsigned char) ;
 unsigned char CI_BSD_COMPRESS ;
 int GFP_KERNEL ;
 unsigned int MAXCODE (int) ;
 int array_size (int,unsigned int) ;
 int bsd_free (struct bsd_db*) ;
 struct bsd_db* kzalloc (int,int ) ;
 void* vmalloc (int ) ;

__attribute__((used)) static void *bsd_alloc (unsigned char *options, int opt_len, int decomp)
  {
    int bits;
    unsigned int hsize, hshift, maxmaxcode;
    struct bsd_db *db;

    if (opt_len != 3 || options[0] != CI_BSD_COMPRESS || options[1] != 3
 || BSD_VERSION(options[2]) != BSD_CURRENT_VERSION)
      {
 return ((void*)0);
      }

    bits = BSD_NBITS(options[2]);

    switch (bits)
      {
    case 9:
    case 10:
    case 11:
    case 12:
 hsize = 5003;
 hshift = 4;
 break;
    case 13:
 hsize = 9001;
 hshift = 5;
 break;
    case 14:
 hsize = 18013;
 hshift = 6;
 break;
    case 15:
 hsize = 35023;
 hshift = 7;
 break;
    case 16:



    default:
 return ((void*)0);
      }



    maxmaxcode = MAXCODE(bits);
    db = kzalloc(sizeof (struct bsd_db),
         GFP_KERNEL);
    if (!db)
      {
 return ((void*)0);
      }





    db->dict = vmalloc(array_size(hsize, sizeof(struct bsd_dict)));
    if (!db->dict)
      {
 bsd_free (db);
 return ((void*)0);
      }




    if (!decomp)
      {
 db->lens = ((void*)0);
      }



    else
      {
        db->lens = vmalloc(array_size(sizeof(db->lens[0]), (maxmaxcode + 1)));
 if (!db->lens)
   {
     bsd_free (db);
     return ((void*)0);
   }
      }



    db->totlen = sizeof (struct bsd_db) +
            (sizeof (struct bsd_dict) * hsize);

    db->hsize = hsize;
    db->hshift = hshift;
    db->maxmaxcode = maxmaxcode;
    db->maxbits = bits;

    return (void *) db;
  }
