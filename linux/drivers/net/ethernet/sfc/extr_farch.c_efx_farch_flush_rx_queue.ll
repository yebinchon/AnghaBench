; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_flush_rx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_flush_rx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_rx_queue = type { %struct.efx_nic* }
%struct.efx_nic = type { i32 }

@FRF_AZ_RX_FLUSH_DESCQ_CMD = common dso_local global i32 0, align 4
@FRF_AZ_RX_FLUSH_DESCQ = common dso_local global i32 0, align 4
@FR_AZ_RX_FLUSH_DESCQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_rx_queue*)* @efx_farch_flush_rx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_farch_flush_rx_queue(%struct.efx_rx_queue* %0) #0 {
  %2 = alloca %struct.efx_rx_queue*, align 8
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  store %struct.efx_rx_queue* %0, %struct.efx_rx_queue** %2, align 8
  %5 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %6 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %5, i32 0, i32 0
  %7 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  store %struct.efx_nic* %7, %struct.efx_nic** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @FRF_AZ_RX_FLUSH_DESCQ_CMD, align 4
  %10 = load i32, i32* @FRF_AZ_RX_FLUSH_DESCQ, align 4
  %11 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %12 = call i32 @efx_rx_queue_index(%struct.efx_rx_queue* %11)
  %13 = call i32 @EFX_POPULATE_OWORD_2(i32 %8, i32 %9, i32 1, i32 %10, i32 %12)
  %14 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %15 = load i32, i32* @FR_AZ_RX_FLUSH_DESCQ, align 4
  %16 = call i32 @efx_writeo(%struct.efx_nic* %14, i32* %4, i32 %15)
  ret void
}

declare dso_local i32 @EFX_POPULATE_OWORD_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @efx_rx_queue_index(%struct.efx_rx_queue*) #1

declare dso_local i32 @efx_writeo(%struct.efx_nic*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
