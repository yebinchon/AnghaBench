; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_scc.c_t_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_scc.c_t_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_channel = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.timer_list = type { i32 }

@tx_wdog = common dso_local global i32 0, align 4
@TXS_IDLE = common dso_local global i32 0, align 4
@scc = common dso_local global %struct.scc_channel* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @t_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t_busy(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.scc_channel*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %5 = ptrtoint %struct.scc_channel* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @tx_wdog, align 4
  %8 = call %struct.scc_channel* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.scc_channel* %8, %struct.scc_channel** %3, align 8
  %9 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %10 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %9, i32 0, i32 2
  %11 = call i32 @del_timer(i32* %10)
  %12 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %13 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @netif_stop_queue(i32 %14)
  %16 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %17 = call i32 @scc_discard_buffers(%struct.scc_channel* %16)
  %18 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %19 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @TXS_IDLE, align 4
  %24 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %25 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %28 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @netif_wake_queue(i32 %29)
  ret void
}

declare dso_local %struct.scc_channel* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @scc_discard_buffers(%struct.scc_channel*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
