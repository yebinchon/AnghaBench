; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_cleanup_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_cleanup_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spider_net_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.timer_list = type { i32 }

@tx_timer = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@card = common dso_local global %struct.spider_net_card* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @spider_net_cleanup_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spider_net_cleanup_tx_ring(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.spider_net_card*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %5 = ptrtoint %struct.spider_net_card* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @tx_timer, align 4
  %8 = call %struct.spider_net_card* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.spider_net_card* %8, %struct.spider_net_card** %3, align 8
  %9 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %10 = call i64 @spider_net_release_tx_chain(%struct.spider_net_card* %9, i32 0)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %14 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IFF_UP, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %12
  %22 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %23 = call i32 @spider_net_kick_tx_dma(%struct.spider_net_card* %22)
  %24 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %25 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = call i32 @netif_wake_queue(%struct.TYPE_2__* %26)
  br label %28

28:                                               ; preds = %21, %12, %1
  ret void
}

declare dso_local %struct.spider_net_card* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @spider_net_release_tx_chain(%struct.spider_net_card*, i32) #1

declare dso_local i32 @spider_net_kick_tx_dma(%struct.spider_net_card*) #1

declare dso_local i32 @netif_wake_queue(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
