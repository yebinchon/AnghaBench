; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_init_rx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_init_rx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slic_device = type { %struct.slic_rx_queue }
%struct.slic_rx_queue = type { %struct.slic_rx_buffer*, i32, i64, i64 }
%struct.slic_rx_buffer = type { i32 }

@SLIC_NUM_RX_LES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slic_device*)* @slic_init_rx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slic_init_rx_queue(%struct.slic_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.slic_device*, align 8
  %4 = alloca %struct.slic_rx_queue*, align 8
  %5 = alloca %struct.slic_rx_buffer*, align 8
  store %struct.slic_device* %0, %struct.slic_device** %3, align 8
  %6 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %7 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %6, i32 0, i32 0
  store %struct.slic_rx_queue* %7, %struct.slic_rx_queue** %4, align 8
  %8 = load i32, i32* @SLIC_NUM_RX_LES, align 4
  %9 = load %struct.slic_rx_queue*, %struct.slic_rx_queue** %4, align 8
  %10 = getelementptr inbounds %struct.slic_rx_queue, %struct.slic_rx_queue* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  %11 = load %struct.slic_rx_queue*, %struct.slic_rx_queue** %4, align 8
  %12 = getelementptr inbounds %struct.slic_rx_queue, %struct.slic_rx_queue* %11, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = load %struct.slic_rx_queue*, %struct.slic_rx_queue** %4, align 8
  %14 = getelementptr inbounds %struct.slic_rx_queue, %struct.slic_rx_queue* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.slic_rx_queue*, %struct.slic_rx_queue** %4, align 8
  %16 = getelementptr inbounds %struct.slic_rx_queue, %struct.slic_rx_queue* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.slic_rx_buffer* @kcalloc(i32 %17, i32 4, i32 %18)
  store %struct.slic_rx_buffer* %19, %struct.slic_rx_buffer** %5, align 8
  %20 = load %struct.slic_rx_buffer*, %struct.slic_rx_buffer** %5, align 8
  %21 = icmp ne %struct.slic_rx_buffer* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %32

25:                                               ; preds = %1
  %26 = load %struct.slic_rx_buffer*, %struct.slic_rx_buffer** %5, align 8
  %27 = load %struct.slic_rx_queue*, %struct.slic_rx_queue** %4, align 8
  %28 = getelementptr inbounds %struct.slic_rx_queue, %struct.slic_rx_queue* %27, i32 0, i32 0
  store %struct.slic_rx_buffer* %26, %struct.slic_rx_buffer** %28, align 8
  %29 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @slic_refill_rx_queue(%struct.slic_device* %29, i32 %30)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %25, %22
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.slic_rx_buffer* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @slic_refill_rx_queue(%struct.slic_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
