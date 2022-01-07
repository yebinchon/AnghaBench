; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_xsk.c_i40e_xsk_umem_dma_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_xsk.c_i40e_xsk_umem_dma_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.xdp_umem = type { i32, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@I40E_RX_DMA_ATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*, %struct.xdp_umem*)* @i40e_xsk_umem_dma_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_xsk_umem_dma_map(%struct.i40e_vsi* %0, %struct.xdp_umem* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_vsi*, align 8
  %5 = alloca %struct.xdp_umem*, align 8
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %4, align 8
  store %struct.xdp_umem* %1, %struct.xdp_umem** %5, align 8
  %11 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %12 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %11, i32 0, i32 0
  %13 = load %struct.i40e_pf*, %struct.i40e_pf** %12, align 8
  store %struct.i40e_pf* %13, %struct.i40e_pf** %6, align 8
  %14 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %15 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %7, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %51, %2
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.xdp_umem*, %struct.xdp_umem** %5, align 8
  %21 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %54

24:                                               ; preds = %18
  %25 = load %struct.device*, %struct.device** %7, align 8
  %26 = load %struct.xdp_umem*, %struct.xdp_umem** %5, align 8
  %27 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %35 = load i32, i32* @I40E_RX_DMA_ATTR, align 4
  %36 = call i64 @dma_map_page_attrs(%struct.device* %25, i32 %32, i32 0, i32 %33, i32 %34, i32 %35)
  store i64 %36, i64* %10, align 8
  %37 = load %struct.device*, %struct.device** %7, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i64 @dma_mapping_error(%struct.device* %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %24
  br label %55

42:                                               ; preds = %24
  %43 = load i64, i64* %10, align 8
  %44 = load %struct.xdp_umem*, %struct.xdp_umem** %5, align 8
  %45 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i64 %43, i64* %50, align 8
  br label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %8, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %18

54:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %85

55:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %81, %55
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %84

60:                                               ; preds = %56
  %61 = load %struct.device*, %struct.device** %7, align 8
  %62 = load %struct.xdp_umem*, %struct.xdp_umem** %5, align 8
  %63 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %72 = load i32, i32* @I40E_RX_DMA_ATTR, align 4
  %73 = call i32 @dma_unmap_page_attrs(%struct.device* %61, i64 %69, i32 %70, i32 %71, i32 %72)
  %74 = load %struct.xdp_umem*, %struct.xdp_umem** %5, align 8
  %75 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %60
  %82 = load i32, i32* %9, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %56

84:                                               ; preds = %56
  store i32 -1, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %54
  %86 = load i32, i32* %3, align 4
  ret i32 %86
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
