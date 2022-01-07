; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_thunderbolt.c_tbnet_free_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_thunderbolt.c_tbnet_free_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tbnet_ring = type { i64, i64, %struct.TYPE_4__*, %struct.tbnet_frame* }
%struct.TYPE_4__ = type { i64 }
%struct.tbnet_frame = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.device = type { i32 }

@TBNET_RING_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@TBNET_FRAME_SIZE = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@TBNET_RX_PAGE_ORDER = common dso_local global i32 0, align 4
@TBNET_RX_PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tbnet_ring*)* @tbnet_free_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tbnet_free_buffers(%struct.tbnet_ring* %0) #0 {
  %2 = alloca %struct.tbnet_ring*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.tbnet_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.tbnet_ring* %0, %struct.tbnet_ring** %2, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %66, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @TBNET_RING_SIZE, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %69

13:                                               ; preds = %9
  %14 = load %struct.tbnet_ring*, %struct.tbnet_ring** %2, align 8
  %15 = getelementptr inbounds %struct.tbnet_ring, %struct.tbnet_ring* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = call %struct.device* @tb_ring_dma_device(%struct.TYPE_4__* %16)
  store %struct.device* %17, %struct.device** %4, align 8
  %18 = load %struct.tbnet_ring*, %struct.tbnet_ring** %2, align 8
  %19 = getelementptr inbounds %struct.tbnet_ring, %struct.tbnet_ring* %18, i32 0, i32 3
  %20 = load %struct.tbnet_frame*, %struct.tbnet_frame** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %20, i64 %22
  store %struct.tbnet_frame* %23, %struct.tbnet_frame** %5, align 8
  %24 = load %struct.tbnet_frame*, %struct.tbnet_frame** %5, align 8
  %25 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %13
  br label %66

29:                                               ; preds = %13
  %30 = load %struct.tbnet_ring*, %struct.tbnet_ring** %2, align 8
  %31 = getelementptr inbounds %struct.tbnet_ring, %struct.tbnet_ring* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %37, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %38 = load i64, i64* @TBNET_FRAME_SIZE, align 8
  store i64 %38, i64* %8, align 8
  br label %43

39:                                               ; preds = %29
  %40 = load i32, i32* @DMA_FROM_DEVICE, align 4
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* @TBNET_RX_PAGE_ORDER, align 4
  store i32 %41, i32* %7, align 4
  %42 = load i64, i64* @TBNET_RX_PAGE_SIZE, align 8
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %39, %36
  %44 = load %struct.tbnet_frame*, %struct.tbnet_frame** %5, align 8
  %45 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = load %struct.tbnet_frame*, %struct.tbnet_frame** %5, align 8
  %52 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @dma_unmap_page(%struct.device* %50, i64 %54, i64 %55, i32 %56)
  br label %58

58:                                               ; preds = %49, %43
  %59 = load %struct.tbnet_frame*, %struct.tbnet_frame** %5, align 8
  %60 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @__free_pages(i32* %61, i32 %62)
  %64 = load %struct.tbnet_frame*, %struct.tbnet_frame** %5, align 8
  %65 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %58, %28
  %67 = load i32, i32* %3, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %9

69:                                               ; preds = %9
  %70 = load %struct.tbnet_ring*, %struct.tbnet_ring** %2, align 8
  %71 = getelementptr inbounds %struct.tbnet_ring, %struct.tbnet_ring* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load %struct.tbnet_ring*, %struct.tbnet_ring** %2, align 8
  %73 = getelementptr inbounds %struct.tbnet_ring, %struct.tbnet_ring* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  ret void
}

declare dso_local %struct.device* @tb_ring_dma_device(%struct.TYPE_4__*) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i64, i64, i32) #1

declare dso_local i32 @__free_pages(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
