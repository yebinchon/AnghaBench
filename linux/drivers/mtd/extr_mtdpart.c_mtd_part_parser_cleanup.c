
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_partitions {int nr_parts; int parts; struct mtd_part_parser* parser; } ;
struct mtd_part_parser {int (* cleanup ) (int ,int ) ;} ;


 int mtd_part_parser_put (struct mtd_part_parser const*) ;
 int stub1 (int ,int ) ;

void mtd_part_parser_cleanup(struct mtd_partitions *parts)
{
 const struct mtd_part_parser *parser;

 if (!parts)
  return;

 parser = parts->parser;
 if (parser) {
  if (parser->cleanup)
   parser->cleanup(parts->parts, parts->nr_parts);

  mtd_part_parser_put(parser);
 }
}
