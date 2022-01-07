
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pegasus_t ;
typedef int __u8 ;
typedef int __u16 ;
typedef int __le16 ;


 int cpu_to_le16 (int ) ;
 int read_eprom_word (int *,int,int *) ;

__attribute__((used)) static inline void get_node_id(pegasus_t *pegasus, __u8 *id)
{
 int i;
 __u16 w16;

 for (i = 0; i < 3; i++) {
  read_eprom_word(pegasus, i, &w16);
  ((__le16 *) id)[i] = cpu_to_le16(w16);
 }
}
