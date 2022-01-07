; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_handle_rx_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_handle_rx_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_rx_queue = type { i32, i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"scattered RX aborted (dropping %u buffers)\0A\00", align 1
@EFX_RX_PKT_DISCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_rx_queue*)* @efx_ef10_handle_rx_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_ef10_handle_rx_abort(%struct.efx_rx_queue* %0) #0 {
  %2 = alloca %struct.efx_rx_queue*, align 8
  %3 = alloca i32, align 4
  store %struct.efx_rx_queue* %0, %struct.efx_rx_queue** %2, align 8
  %4 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %5 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %4, i32 0, i32 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = load i32, i32* @hw, align 4
  %8 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %9 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %8, i32 0, i32 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %14 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @netif_dbg(%struct.TYPE_3__* %6, i32 %7, i32 %12, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %18 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %21 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %19, %22
  store i32 %23, i32* %3, align 4
  %24 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %27 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @EFX_RX_PKT_DISCARD, align 4
  %30 = call i32 @efx_rx_packet(%struct.efx_rx_queue* %24, i32 %25, i32 %28, i32 0, i32 %29)
  %31 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %32 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %35 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %39 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %41 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %43 = call %struct.TYPE_4__* @efx_rx_queue_channel(%struct.efx_rx_queue* %42)
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  ret void
}

declare dso_local i32 @netif_dbg(%struct.TYPE_3__*, i32, i32, i8*, i32) #1

declare dso_local i32 @efx_rx_packet(%struct.efx_rx_queue*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @efx_rx_queue_channel(%struct.efx_rx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
