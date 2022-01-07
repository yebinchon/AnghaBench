; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_rx.c_ef4_remove_rx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_rx.c_ef4_remove_rx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_rx_queue = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"destroying RX queue %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ef4_remove_rx_queue(%struct.ef4_rx_queue* %0) #0 {
  %2 = alloca %struct.ef4_rx_queue*, align 8
  store %struct.ef4_rx_queue* %0, %struct.ef4_rx_queue** %2, align 8
  %3 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %2, align 8
  %4 = getelementptr inbounds %struct.ef4_rx_queue, %struct.ef4_rx_queue* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = load i32, i32* @drv, align 4
  %7 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %2, align 8
  %8 = getelementptr inbounds %struct.ef4_rx_queue, %struct.ef4_rx_queue* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %2, align 8
  %13 = call i32 @ef4_rx_queue_index(%struct.ef4_rx_queue* %12)
  %14 = call i32 @netif_dbg(%struct.TYPE_2__* %5, i32 %6, i32 %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %2, align 8
  %16 = call i32 @ef4_nic_remove_rx(%struct.ef4_rx_queue* %15)
  %17 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %2, align 8
  %18 = getelementptr inbounds %struct.ef4_rx_queue, %struct.ef4_rx_queue* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @kfree(i32* %19)
  %21 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %2, align 8
  %22 = getelementptr inbounds %struct.ef4_rx_queue, %struct.ef4_rx_queue* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  ret void
}

declare dso_local i32 @netif_dbg(%struct.TYPE_2__*, i32, i32, i8*, i32) #1

declare dso_local i32 @ef4_rx_queue_index(%struct.ef4_rx_queue*) #1

declare dso_local i32 @ef4_nic_remove_rx(%struct.ef4_rx_queue*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
