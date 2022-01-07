; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_thunderbolt.c_tbnet_alloc_tx_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_thunderbolt.c_tbnet_alloc_tx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tbnet = type { i32, %struct.tbnet_ring }
%struct.tbnet_ring = type { i32, i64, %struct.tbnet_frame*, i32 }
%struct.tbnet_frame = type { %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.device = type { i32 }

@TBNET_RING_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TBNET_FRAME_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@tbnet_tx_callback = common dso_local global i32 0, align 4
@TBIP_PDF_FRAME_START = common dso_local global i32 0, align 4
@TBIP_PDF_FRAME_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tbnet*)* @tbnet_alloc_tx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tbnet_alloc_tx_buffers(%struct.tbnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tbnet*, align 8
  %4 = alloca %struct.tbnet_ring*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tbnet_frame*, align 8
  %8 = alloca i32, align 4
  store %struct.tbnet* %0, %struct.tbnet** %3, align 8
  %9 = load %struct.tbnet*, %struct.tbnet** %3, align 8
  %10 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %9, i32 0, i32 1
  store %struct.tbnet_ring* %10, %struct.tbnet_ring** %4, align 8
  %11 = load %struct.tbnet_ring*, %struct.tbnet_ring** %4, align 8
  %12 = getelementptr inbounds %struct.tbnet_ring, %struct.tbnet_ring* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.device* @tb_ring_dma_device(i32 %13)
  store %struct.device* %14, %struct.device** %5, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %84, %1
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @TBNET_RING_SIZE, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %87

19:                                               ; preds = %15
  %20 = load %struct.tbnet_ring*, %struct.tbnet_ring** %4, align 8
  %21 = getelementptr inbounds %struct.tbnet_ring, %struct.tbnet_ring* %20, i32 0, i32 2
  %22 = load %struct.tbnet_frame*, %struct.tbnet_frame** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %22, i64 %24
  store %struct.tbnet_frame* %25, %struct.tbnet_frame** %7, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32* @alloc_page(i32 %26)
  %28 = load %struct.tbnet_frame*, %struct.tbnet_frame** %7, align 8
  %29 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %28, i32 0, i32 2
  store i32* %27, i32** %29, align 8
  %30 = load %struct.tbnet_frame*, %struct.tbnet_frame** %7, align 8
  %31 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %19
  %35 = load %struct.tbnet_ring*, %struct.tbnet_ring** %4, align 8
  %36 = call i32 @tbnet_free_buffers(%struct.tbnet_ring* %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %94

39:                                               ; preds = %19
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = load %struct.tbnet_frame*, %struct.tbnet_frame** %7, align 8
  %42 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* @TBNET_FRAME_SIZE, align 4
  %45 = load i32, i32* @DMA_TO_DEVICE, align 4
  %46 = call i32 @dma_map_page(%struct.device* %40, i32* %43, i32 0, i32 %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @dma_mapping_error(%struct.device* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %39
  %52 = load %struct.tbnet_frame*, %struct.tbnet_frame** %7, align 8
  %53 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @__free_page(i32* %54)
  %56 = load %struct.tbnet_frame*, %struct.tbnet_frame** %7, align 8
  %57 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %56, i32 0, i32 2
  store i32* null, i32** %57, align 8
  %58 = load %struct.tbnet_ring*, %struct.tbnet_ring** %4, align 8
  %59 = call i32 @tbnet_free_buffers(%struct.tbnet_ring* %58)
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %94

62:                                               ; preds = %39
  %63 = load %struct.tbnet*, %struct.tbnet** %3, align 8
  %64 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.tbnet_frame*, %struct.tbnet_frame** %7, align 8
  %67 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.tbnet_frame*, %struct.tbnet_frame** %7, align 8
  %70 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 3
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* @tbnet_tx_callback, align 4
  %73 = load %struct.tbnet_frame*, %struct.tbnet_frame** %7, align 8
  %74 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  store i32 %72, i32* %75, align 8
  %76 = load i32, i32* @TBIP_PDF_FRAME_START, align 4
  %77 = load %struct.tbnet_frame*, %struct.tbnet_frame** %7, align 8
  %78 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* @TBIP_PDF_FRAME_END, align 4
  %81 = load %struct.tbnet_frame*, %struct.tbnet_frame** %7, align 8
  %82 = getelementptr inbounds %struct.tbnet_frame, %struct.tbnet_frame* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  br label %84

84:                                               ; preds = %62
  %85 = load i32, i32* %6, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %15

87:                                               ; preds = %15
  %88 = load %struct.tbnet_ring*, %struct.tbnet_ring** %4, align 8
  %89 = getelementptr inbounds %struct.tbnet_ring, %struct.tbnet_ring* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  %90 = load i32, i32* @TBNET_RING_SIZE, align 4
  %91 = sub i32 %90, 1
  %92 = load %struct.tbnet_ring*, %struct.tbnet_ring** %4, align 8
  %93 = getelementptr inbounds %struct.tbnet_ring, %struct.tbnet_ring* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %87, %51, %34
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.device* @tb_ring_dma_device(i32) #1

declare dso_local i32* @alloc_page(i32) #1

declare dso_local i32 @tbnet_free_buffers(%struct.tbnet_ring*) #1

declare dso_local i32 @dma_map_page(%struct.device*, i32*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @__free_page(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
