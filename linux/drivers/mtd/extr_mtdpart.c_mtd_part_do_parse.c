
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_partitions {int nr_parts; struct mtd_part_parser* parser; int parts; } ;
struct mtd_part_parser_data {int dummy; } ;
struct mtd_part_parser {int (* parse_fn ) (struct mtd_info*,int *,struct mtd_part_parser_data*) ;int name; } ;
struct mtd_info {int name; } ;


 int pr_debug (char*,int ,int ,int) ;
 int pr_notice (char*,int,int ,int ) ;
 int stub1 (struct mtd_info*,int *,struct mtd_part_parser_data*) ;

__attribute__((used)) static int mtd_part_do_parse(struct mtd_part_parser *parser,
        struct mtd_info *master,
        struct mtd_partitions *pparts,
        struct mtd_part_parser_data *data)
{
 int ret;

 ret = (*parser->parse_fn)(master, &pparts->parts, data);
 pr_debug("%s: parser %s: %i\n", master->name, parser->name, ret);
 if (ret <= 0)
  return ret;

 pr_notice("%d %s partitions found on MTD device %s\n", ret,
    parser->name, master->name);

 pparts->nr_parts = ret;
 pparts->parser = parser;

 return ret;
}
