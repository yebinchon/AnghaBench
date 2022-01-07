
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {int dummy; } ;
typedef int map_word ;


 int PFOW_QUERY_STRING_F ;
 int PFOW_QUERY_STRING_O ;
 int PFOW_QUERY_STRING_P ;
 int PFOW_QUERY_STRING_W ;
 int build_map_word (char) ;
 int lpdd2_nvm_mutex ;
 int map_read (struct map_info*,int ) ;
 int map_word_equal (struct map_info*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ow_disable (struct map_info*) ;
 int ow_enable (struct map_info*) ;
 int ow_reg_add (struct map_info*,int ) ;

__attribute__((used)) static int lpddr2_nvm_pfow_present(struct map_info *map)
{
 map_word pfow_val[4];
 unsigned int found = 1;

 mutex_lock(&lpdd2_nvm_mutex);

 ow_enable(map);


 pfow_val[0] = map_read(map, ow_reg_add(map, PFOW_QUERY_STRING_P));
 pfow_val[1] = map_read(map, ow_reg_add(map, PFOW_QUERY_STRING_F));
 pfow_val[2] = map_read(map, ow_reg_add(map, PFOW_QUERY_STRING_O));
 pfow_val[3] = map_read(map, ow_reg_add(map, PFOW_QUERY_STRING_W));


 if (!map_word_equal(map, build_map_word('P'), pfow_val[0]))
  found = 0;
 if (!map_word_equal(map, build_map_word('F'), pfow_val[1]))
  found = 0;
 if (!map_word_equal(map, build_map_word('O'), pfow_val[2]))
  found = 0;
 if (!map_word_equal(map, build_map_word('W'), pfow_val[3]))
  found = 0;

 ow_disable(map);

 mutex_unlock(&lpdd2_nvm_mutex);

 return found;
}
