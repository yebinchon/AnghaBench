
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ error; } ;
struct mmci_host {TYPE_1__ stop_abort; } ;


 int mmci_start_command (struct mmci_host*,TYPE_1__*,int ) ;

__attribute__((used)) static void mmci_stop_command(struct mmci_host *host)
{
 host->stop_abort.error = 0;
 mmci_start_command(host, &host->stop_abort, 0);
}
