
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_partitions {int nr_parts; int parts; } ;
struct mtd_part_parser_data {int dummy; } ;
struct mtd_part_parser {char const* name; } ;
struct mtd_info {int name; } ;


 int add_mtd_partitions (struct mtd_info*,int ,int) ;
 char** default_mtd_part_types ;
 char** default_subpartition_types ;
 scalar_t__ mtd_is_partition (struct mtd_info*) ;
 int mtd_part_do_parse (struct mtd_part_parser*,struct mtd_info*,struct mtd_partitions*,struct mtd_part_parser_data*) ;
 int mtd_part_of_parse (struct mtd_info*,struct mtd_partitions*) ;
 int mtd_part_parser_cleanup (struct mtd_partitions*) ;
 struct mtd_part_parser* mtd_part_parser_get (char const* const) ;
 int mtd_part_parser_put (struct mtd_part_parser*) ;
 int pr_debug (char*,int ,char const*) ;
 int request_module (char*,char const* const) ;
 int strcmp (char const* const,char*) ;

int parse_mtd_partitions(struct mtd_info *master, const char *const *types,
    struct mtd_part_parser_data *data)
{
 struct mtd_partitions pparts = { };
 struct mtd_part_parser *parser;
 int ret, err = 0;

 if (!types)
  types = mtd_is_partition(master) ? default_subpartition_types :
   default_mtd_part_types;

 for ( ; *types; types++) {





  if (!strcmp(*types, "ofpart")) {
   ret = mtd_part_of_parse(master, &pparts);
  } else {
   pr_debug("%s: parsing partitions %s\n", master->name,
     *types);
   parser = mtd_part_parser_get(*types);
   if (!parser && !request_module("%s", *types))
    parser = mtd_part_parser_get(*types);
   pr_debug("%s: got parser %s\n", master->name,
    parser ? parser->name : ((void*)0));
   if (!parser)
    continue;
   ret = mtd_part_do_parse(parser, master, &pparts, data);
   if (ret <= 0)
    mtd_part_parser_put(parser);
  }

  if (ret > 0) {
   err = add_mtd_partitions(master, pparts.parts,
       pparts.nr_parts);
   mtd_part_parser_cleanup(&pparts);
   return err ? err : pparts.nr_parts;
  }




  if (ret < 0 && !err)
   err = ret;
 }
 return err;
}
