
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
typedef long u32 ;
typedef long s32 ;


 int EIO ;
 int ENODATA ;
 long get_unaligned_be32 (char*) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char*) ;
 int strncasecmp (char*,char*,int ) ;

__attribute__((used)) static int altera_get_note(u8 *p, s32 program_size,
   s32 *offset, char *key, char *value, int length)
{
 int status = -ENODATA;
 u32 note_strings = 0L;
 u32 note_table = 0L;
 u32 note_count = 0L;
 u32 first_word = 0L;
 int version = 0;
 int delta = 0;
 char *key_ptr;
 char *value_ptr;
 int i;


 if (program_size > 52L) {
  first_word = get_unaligned_be32(&p[0]);
  version = (first_word & 1L);
  delta = version * 8;

  note_strings = get_unaligned_be32(&p[8 + delta]);
  note_table = get_unaligned_be32(&p[12 + delta]);
  note_count = get_unaligned_be32(&p[44 + (2 * delta)]);
 }

 if ((first_word != 0x4A414D00L) && (first_word != 0x4A414D01L))
  return -EIO;

 if (note_count <= 0L)
  return status;

 if (offset == ((void*)0)) {




  for (i = 0; (i < note_count) &&
      (status != 0); ++i) {
   key_ptr = &p[note_strings +
     get_unaligned_be32(
     &p[note_table + (8 * i)])];
   if (key && !strncasecmp(key, key_ptr, strlen(key_ptr))) {
    status = 0;

    value_ptr = &p[note_strings +
      get_unaligned_be32(
      &p[note_table + (8 * i) + 4])];

    if (value != ((void*)0))
     strlcpy(value, value_ptr, length);

   }
  }
 } else {





  i = *offset;

  if ((i >= 0) && (i < note_count)) {
   status = 0;

   if (key != ((void*)0))
    strlcpy(key, &p[note_strings +
      get_unaligned_be32(
      &p[note_table + (8 * i)])],
     length);

   if (value != ((void*)0))
    strlcpy(value, &p[note_strings +
      get_unaligned_be32(
      &p[note_table + (8 * i) + 4])],
     length);

   *offset = i + 1;
  }
 }

 return status;
}
