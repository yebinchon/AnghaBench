; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_net_driver.h_efx_channel_has_tx_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_net_driver.h_efx_channel_has_tx_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_channel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.efx_channel*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_channel*)* @efx_channel_has_tx_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_channel_has_tx_queues(%struct.efx_channel* %0) #0 {
  %2 = alloca %struct.efx_channel*, align 8
  store %struct.efx_channel* %0, %struct.efx_channel** %2, align 8
  %3 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %4 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %9 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64 (%struct.efx_channel*)*, i64 (%struct.efx_channel*)** %11, align 8
  %13 = icmp ne i64 (%struct.efx_channel*)* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %7
  %15 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %16 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64 (%struct.efx_channel*)*, i64 (%struct.efx_channel*)** %18, align 8
  %20 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %21 = call i64 %19(%struct.efx_channel* %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %14, %7, %1
  %24 = phi i1 [ false, %7 ], [ false, %1 ], [ %22, %14 ]
  %25 = zext i1 %24 to i32
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
