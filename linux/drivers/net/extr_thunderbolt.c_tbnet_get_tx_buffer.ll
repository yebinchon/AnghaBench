; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_thunderbolt.c_tbnet_get_tx_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_thunderbolt.c_tbnet_get_tx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tbnet_frame = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.tbnet = type { %struct.tbnet_ring }
%struct.tbnet_ring = type { %struct.tbnet_frame*, i32, i32 }
%struct.device = type { i32 }

@TBNET_RING_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tbnet_frame* (%struct.tbnet*)* @tbnet_get_tx_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tbnet_frame* @tbnet_get_tx_buffer(%struct.tbnet* %0) #0 {
  %2 = alloca %struct.tbnet_frame*, align 8
  %3 = alloca %struct.tbnet*, align 8
  %4 = alloca %struct.tbnet_ring*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.tbnet_frame*, align 8
  %7 = alloca i32, align 4
  store %struct.tbnet* %0, %struct.tbnet** %3, align 8
  %8 = load %struct.tbnet*, %struct.tbnet** %3, align 8
  %9 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %8, i32 0, i32 0
  store %struct.tbnet_ring* %9, %struct.tbnet_ring** %4, align 8
  %10 = load %struct.tbnet_ring*, %struct.tbnet_ring** %4, align 8
  %11 = getelementptr inbounds %struct.tbnet_ring, %struct.tbnet_ring* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.device* @tb_ring_dma_device(i32 %12)
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.tbnet_ring*, %struct.tbnet_ring** %4, align 8
  %15 = call i32 @tbnet_available_buffers(%struct.tbnet_ring* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store %struct.tbnet_frame* null, %struct.tbnet_frame** %2, align 8
  br label %45

18:                                               ; preds = %1
  %19 = load %struct.tbnet_ring*, %struct.tbnet_ring** %4, align 8
  %20 = getelementptr inbounds %struct.tbnet_ring, %struct.tbnet_ring* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = load i32, i32* @TBNET_RING_SIZE, align 4
  %24 = sub nsw i32 %23, 1
  %25 = and i32 %21, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.tbnet_ring*, %struct.tbnet_ring** %4, align 8
  %27 = getelementptr inbounds %struct.tbnet_ring, %struct.tbnet_ring* %26, i32 0, i32 0
  %28 = load %struct.tbnet_frame*, %struct.tbnet_frame** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %28, i64 %30
  store %struct.tbnet_frame* %31, %struct.tbnet_frame** %6, align 8
  %32 = load %struct.tbnet_frame*, %struct.tbnet_frame** %6, align 8
  %33 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = load %struct.tbnet_frame*, %struct.tbnet_frame** %6, align 8
  %37 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.tbnet_frame*, %struct.tbnet_frame** %6, align 8
  %41 = call i32 @tbnet_frame_size(%struct.tbnet_frame* %40)
  %42 = load i32, i32* @DMA_TO_DEVICE, align 4
  %43 = call i32 @dma_sync_single_for_cpu(%struct.device* %35, i32 %39, i32 %41, i32 %42)
  %44 = load %struct.tbnet_frame*, %struct.tbnet_frame** %6, align 8
  store %struct.tbnet_frame* %44, %struct.tbnet_frame** %2, align 8
  br label %45

45:                                               ; preds = %18, %17
  %46 = load %struct.tbnet_frame*, %struct.tbnet_frame** %2, align 8
  ret %struct.tbnet_frame* %46
}

declare dso_local %struct.device* @tb_ring_dma_device(i32) #1

declare dso_local i32 @tbnet_available_buffers(%struct.tbnet_ring*) #1

declare dso_local i32 @dma_sync_single_for_cpu(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @tbnet_frame_size(%struct.tbnet_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
