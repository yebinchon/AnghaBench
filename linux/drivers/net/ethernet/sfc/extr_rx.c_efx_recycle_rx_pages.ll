; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_rx.c_efx_recycle_rx_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_rx.c_efx_recycle_rx_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_channel = type { i32 }
%struct.efx_rx_buffer = type { i32 }
%struct.efx_rx_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_channel*, %struct.efx_rx_buffer*, i32)* @efx_recycle_rx_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_recycle_rx_pages(%struct.efx_channel* %0, %struct.efx_rx_buffer* %1, i32 %2) #0 {
  %4 = alloca %struct.efx_channel*, align 8
  %5 = alloca %struct.efx_rx_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.efx_rx_queue*, align 8
  store %struct.efx_channel* %0, %struct.efx_channel** %4, align 8
  store %struct.efx_rx_buffer* %1, %struct.efx_rx_buffer** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.efx_channel*, %struct.efx_channel** %4, align 8
  %9 = call %struct.efx_rx_queue* @efx_channel_get_rx_queue(%struct.efx_channel* %8)
  store %struct.efx_rx_queue* %9, %struct.efx_rx_queue** %7, align 8
  br label %10

10:                                               ; preds = %17, %3
  %11 = load %struct.efx_channel*, %struct.efx_channel** %4, align 8
  %12 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %5, align 8
  %13 = call i32 @efx_recycle_rx_page(%struct.efx_channel* %11, %struct.efx_rx_buffer* %12)
  %14 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %7, align 8
  %15 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %5, align 8
  %16 = call %struct.efx_rx_buffer* @efx_rx_buf_next(%struct.efx_rx_queue* %14, %struct.efx_rx_buffer* %15)
  store %struct.efx_rx_buffer* %16, %struct.efx_rx_buffer** %5, align 8
  br label %17

17:                                               ; preds = %10
  %18 = load i32, i32* %6, align 4
  %19 = add i32 %18, -1
  store i32 %19, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %10, label %21

21:                                               ; preds = %17
  ret void
}

declare dso_local %struct.efx_rx_queue* @efx_channel_get_rx_queue(%struct.efx_channel*) #1

declare dso_local i32 @efx_recycle_rx_page(%struct.efx_channel*, %struct.efx_rx_buffer*) #1

declare dso_local %struct.efx_rx_buffer* @efx_rx_buf_next(%struct.efx_rx_queue*, %struct.efx_rx_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
