; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_xsk.c_ixgbe_xsk_umem_dma_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_xsk.c_ixgbe_xsk_umem_dma_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.xdp_umem = type { i32, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@IXGBE_RX_DMA_ATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, %struct.xdp_umem*)* @ixgbe_xsk_umem_dma_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_xsk_umem_dma_map(%struct.ixgbe_adapter* %0, %struct.xdp_umem* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca %struct.xdp_umem*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %4, align 8
  store %struct.xdp_umem* %1, %struct.xdp_umem** %5, align 8
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %6, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %47, %2
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.xdp_umem*, %struct.xdp_umem** %5, align 8
  %17 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %50

20:                                               ; preds = %14
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load %struct.xdp_umem*, %struct.xdp_umem** %5, align 8
  %23 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %31 = load i32, i32* @IXGBE_RX_DMA_ATTR, align 4
  %32 = call i64 @dma_map_page_attrs(%struct.device* %21, i32 %28, i32 0, i32 %29, i32 %30, i32 %31)
  store i64 %32, i64* %9, align 8
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i64 @dma_mapping_error(%struct.device* %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %20
  br label %51

38:                                               ; preds = %20
  %39 = load i64, i64* %9, align 8
  %40 = load %struct.xdp_umem*, %struct.xdp_umem** %5, align 8
  %41 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i64 %39, i64* %46, align 8
  br label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %7, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %14

50:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %81

51:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %77, %51
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %52
  %57 = load %struct.device*, %struct.device** %6, align 8
  %58 = load %struct.xdp_umem*, %struct.xdp_umem** %5, align 8
  %59 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @PAGE_SIZE, align 4
  %67 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %68 = load i32, i32* @IXGBE_RX_DMA_ATTR, align 4
  %69 = call i32 @dma_unmap_page_attrs(%struct.device* %57, i64 %65, i32 %66, i32 %67, i32 %68)
  %70 = load %struct.xdp_umem*, %struct.xdp_umem** %5, align 8
  %71 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %56
  %78 = load i32, i32* %8, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %52

80:                                               ; preds = %52
  store i32 -1, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %50
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @dma_map_page_attrs(%struct.device*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i64) #1

declare dso_local i32 @dma_unmap_page_attrs(%struct.device*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
