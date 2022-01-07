; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_rx_q_bufs_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_rx_q_bufs_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { %struct.emac_rx_queue }
%struct.emac_rx_queue = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64, i64, i32* }
%struct.TYPE_4__ = type { i64, i64, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_adapter*)* @emac_rx_q_bufs_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_rx_q_bufs_free(%struct.emac_adapter* %0) #0 {
  %2 = alloca %struct.emac_adapter*, align 8
  %3 = alloca %struct.emac_rx_queue*, align 8
  store %struct.emac_adapter* %0, %struct.emac_adapter** %2, align 8
  %4 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %4, i32 0, i32 0
  store %struct.emac_rx_queue* %5, %struct.emac_rx_queue** %3, align 8
  %6 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %7 = call i32 @emac_rx_q_free_descs(%struct.emac_adapter* %6)
  %8 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %3, align 8
  %9 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @kfree(i32* %11)
  %13 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %3, align 8
  %14 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  store i32* null, i32** %15, align 8
  %16 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %3, align 8
  %17 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  store i32* null, i32** %18, align 8
  %19 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %3, align 8
  %20 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %3, align 8
  %23 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %3, align 8
  %26 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  store i32* null, i32** %27, align 8
  %28 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %3, align 8
  %29 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %3, align 8
  %32 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  ret void
}

declare dso_local i32 @emac_rx_q_free_descs(%struct.emac_adapter*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
