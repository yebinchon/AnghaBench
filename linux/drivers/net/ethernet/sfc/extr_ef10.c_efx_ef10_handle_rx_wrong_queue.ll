; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_handle_rx_wrong_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_handle_rx_wrong_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_rx_queue = type { %struct.efx_nic* }
%struct.efx_nic = type { i32 }

@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"rx event arrived on queue %d labeled as queue %u\0A\00", align 1
@RESET_TYPE_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_rx_queue*, i32)* @efx_ef10_handle_rx_wrong_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_ef10_handle_rx_wrong_queue(%struct.efx_rx_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.efx_rx_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_nic*, align 8
  store %struct.efx_rx_queue* %0, %struct.efx_rx_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %3, align 8
  %7 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %6, i32 0, i32 0
  %8 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  store %struct.efx_nic* %8, %struct.efx_nic** %5, align 8
  %9 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %10 = load i32, i32* @hw, align 4
  %11 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %12 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %3, align 8
  %15 = call i32 @efx_rx_queue_index(%struct.efx_rx_queue* %14)
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @netif_info(%struct.efx_nic* %9, i32 %10, i32 %13, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %19 = load i32, i32* @RESET_TYPE_DISABLE, align 4
  %20 = call i32 @efx_schedule_reset(%struct.efx_nic* %18, i32 %19)
  ret void
}

declare dso_local i32 @netif_info(%struct.efx_nic*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @efx_rx_queue_index(%struct.efx_rx_queue*) #1

declare dso_local i32 @efx_schedule_reset(%struct.efx_nic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
