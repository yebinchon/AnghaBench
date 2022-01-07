
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si476x_core {scalar_t__ diversity_mode; } ;


 scalar_t__ SI476X_PHDIV_SECONDARY_ANTENNA ;
 scalar_t__ SI476X_PHDIV_SECONDARY_COMBINING ;
 scalar_t__ si476x_core_has_diversity (struct si476x_core*) ;

bool si476x_core_is_a_secondary_tuner(struct si476x_core *core)
{
 return si476x_core_has_diversity(core) &&
  (core->diversity_mode == SI476X_PHDIV_SECONDARY_ANTENNA ||
   core->diversity_mode == SI476X_PHDIV_SECONDARY_COMBINING);
}
