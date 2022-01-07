; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_ResetAdapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_ResetAdapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"[fddi: ResetAdapter]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*)* @ResetAdapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ResetAdapter(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  %3 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %5 = call i32 @card_stop(%struct.s_smc* %4)
  %6 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %7 = call i32 @mac_drv_clear_tx_queue(%struct.s_smc* %6)
  %8 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %9 = call i32 @mac_drv_clear_rx_queue(%struct.s_smc* %8)
  %10 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %11 = call i32 @smt_reset_defaults(%struct.s_smc* %10, i32 1)
  %12 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %13 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %14 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @init_smt(%struct.s_smc* %12, i32 %18)
  %20 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %21 = call i32 @smt_online(%struct.s_smc* %20, i32 1)
  %22 = call i32 (...) @STI_FBI()
  %23 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %24 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = call i32 @skfp_ctl_set_multicast_list_wo_lock(%struct.TYPE_4__* %26)
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @card_stop(%struct.s_smc*) #1

declare dso_local i32 @mac_drv_clear_tx_queue(%struct.s_smc*) #1

declare dso_local i32 @mac_drv_clear_rx_queue(%struct.s_smc*) #1

declare dso_local i32 @smt_reset_defaults(%struct.s_smc*, i32) #1

declare dso_local i32 @init_smt(%struct.s_smc*, i32) #1

declare dso_local i32 @smt_online(%struct.s_smc*, i32) #1

declare dso_local i32 @STI_FBI(...) #1

declare dso_local i32 @skfp_ctl_set_multicast_list_wo_lock(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
