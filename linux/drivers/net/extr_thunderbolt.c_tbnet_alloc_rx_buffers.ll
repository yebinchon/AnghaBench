; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_thunderbolt.c_tbnet_alloc_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_thunderbolt.c_tbnet_alloc_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tbnet = type { i32, %struct.tbnet_ring }
%struct.tbnet_ring = type { i32, i32, %struct.tbnet_frame* }
%struct.tbnet_frame = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@TBNET_RING_SIZE = common dso_local global i32 0, align 4
@TBNET_RX_PAGE_ORDER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TBNET_RX_PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tbnet*, i32)* @tbnet_alloc_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tbnet_alloc_rx_buffers(%struct.tbnet* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tbnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tbnet_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tbnet_frame*, align 8
  %11 = alloca i32, align 4
  store %struct.tbnet* %0, %struct.tbnet** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.tbnet*, %struct.tbnet** %4, align 8
  %13 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %12, i32 0, i32 1
  store %struct.tbnet_ring* %13, %struct.tbnet_ring** %6, align 8
  br label %14

14:                                               ; preds = %67, %2
  %15 = load i32, i32* %5, align 4
  %16 = add i32 %15, -1
  store i32 %16, i32* %5, align 4
  %17 = icmp ne i32 %15, 0
  br i1 %17, label %18, label %87

18:                                               ; preds = %14
  %19 = load %struct.tbnet_ring*, %struct.tbnet_ring** %6, align 8
  %20 = getelementptr inbounds %struct.tbnet_ring, %struct.tbnet_ring* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.device* @tb_ring_dma_device(i32 %21)
  store %struct.device* %22, %struct.device** %8, align 8
  %23 = load %struct.tbnet_ring*, %struct.tbnet_ring** %6, align 8
  %24 = getelementptr inbounds %struct.tbnet_ring, %struct.tbnet_ring* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @TBNET_RING_SIZE, align 4
  %27 = sub nsw i32 %26, 1
  %28 = and i32 %25, %27
  store i32 %28, i32* %9, align 4
  %29 = load %struct.tbnet_ring*, %struct.tbnet_ring** %6, align 8
  %30 = getelementptr inbounds %struct.tbnet_ring, %struct.tbnet_ring* %29, i32 0, i32 2
  %31 = load %struct.tbnet_frame*, %struct.tbnet_frame** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %31, i64 %33
  store %struct.tbnet_frame* %34, %struct.tbnet_frame** %10, align 8
  %35 = load %struct.tbnet_frame*, %struct.tbnet_frame** %10, align 8
  %36 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %18
  br label %87

40:                                               ; preds = %18
  %41 = load i32, i32* @TBNET_RX_PAGE_ORDER, align 4
  %42 = call i64 @dev_alloc_pages(i32 %41)
  %43 = load %struct.tbnet_frame*, %struct.tbnet_frame** %10, align 8
  %44 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load %struct.tbnet_frame*, %struct.tbnet_frame** %10, align 8
  %46 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %88

52:                                               ; preds = %40
  %53 = load %struct.device*, %struct.device** %8, align 8
  %54 = load %struct.tbnet_frame*, %struct.tbnet_frame** %10, align 8
  %55 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @TBNET_RX_PAGE_SIZE, align 4
  %58 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %59 = call i32 @dma_map_page(%struct.device* %53, i64 %56, i32 0, i32 %57, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load %struct.device*, %struct.device** %8, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i64 @dma_mapping_error(%struct.device* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %52
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %88

67:                                               ; preds = %52
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.tbnet_frame*, %struct.tbnet_frame** %10, align 8
  %70 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = load %struct.tbnet*, %struct.tbnet** %4, align 8
  %73 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.tbnet_frame*, %struct.tbnet_frame** %10, align 8
  %76 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.tbnet_ring*, %struct.tbnet_ring** %6, align 8
  %78 = getelementptr inbounds %struct.tbnet_ring, %struct.tbnet_ring* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.tbnet_frame*, %struct.tbnet_frame** %10, align 8
  %81 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %80, i32 0, i32 0
  %82 = call i32 @tb_ring_rx(i32 %79, %struct.TYPE_2__* %81)
  %83 = load %struct.tbnet_ring*, %struct.tbnet_ring** %6, align 8
  %84 = getelementptr inbounds %struct.tbnet_ring, %struct.tbnet_ring* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  br label %14

87:                                               ; preds = %39, %14
  store i32 0, i32* %3, align 4
  br label %92

88:                                               ; preds = %64, %49
  %89 = load %struct.tbnet_ring*, %struct.tbnet_ring** %6, align 8
  %90 = call i32 @tbnet_free_buffers(%struct.tbnet_ring* %89)
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %88, %87
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.device* @tb_ring_dma_device(i32) #1

declare dso_local i64 @dev_alloc_pages(i32) #1

declare dso_local i32 @dma_map_page(%struct.device*, i64, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @tb_ring_rx(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @tbnet_free_buffers(%struct.tbnet_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
