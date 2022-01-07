; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_eth = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@MTK_QDMA = common dso_local global i32 0, align 4
@MTK_RX_FLAGS_QDMA = common dso_local global i32 0, align 4
@MTK_RX_FLAGS_NORMAL = common dso_local global i32 0, align 4
@MTK_MAX_RX_RING_NUM = common dso_local global i32 0, align 4
@MTK_RX_FLAGS_HWLRO = common dso_local global i32 0, align 4
@FC_THRES_DROP_MODE = common dso_local global i32 0, align 4
@FC_THRES_DROP_EN = common dso_local global i32 0, align 4
@FC_THRES_MIN = common dso_local global i32 0, align 4
@MTK_QDMA_FC_THRES = common dso_local global i32 0, align 4
@MTK_QDMA_HRED2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_eth*)* @mtk_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_dma_init(%struct.mtk_eth* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_eth*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtk_eth* %0, %struct.mtk_eth** %3, align 8
  %6 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %7 = call i64 @mtk_dma_busy_wait(%struct.mtk_eth* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EBUSY, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %115

12:                                               ; preds = %1
  %13 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %14 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MTK_QDMA, align 4
  %19 = call i64 @MTK_HAS_CAPS(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %12
  %22 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %23 = call i32 @mtk_init_fq_dma(%struct.mtk_eth* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %115

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %12
  %30 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %31 = call i32 @mtk_tx_alloc(%struct.mtk_eth* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %115

36:                                               ; preds = %29
  %37 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %38 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MTK_QDMA, align 4
  %43 = call i64 @MTK_HAS_CAPS(i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %36
  %46 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %47 = load i32, i32* @MTK_RX_FLAGS_QDMA, align 4
  %48 = call i32 @mtk_rx_alloc(%struct.mtk_eth* %46, i32 0, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %115

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %36
  %55 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %56 = load i32, i32* @MTK_RX_FLAGS_NORMAL, align 4
  %57 = call i32 @mtk_rx_alloc(%struct.mtk_eth* %55, i32 0, i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %115

62:                                               ; preds = %54
  %63 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %64 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %93

67:                                               ; preds = %62
  store i32 1, i32* %5, align 4
  br label %68

68:                                               ; preds = %82, %67
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @MTK_MAX_RX_RING_NUM, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %68
  %73 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @MTK_RX_FLAGS_HWLRO, align 4
  %76 = call i32 @mtk_rx_alloc(%struct.mtk_eth* %73, i32 %74, i32 %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %115

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %68

85:                                               ; preds = %68
  %86 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %87 = call i32 @mtk_hwlro_rx_init(%struct.mtk_eth* %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %115

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92, %62
  %94 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %95 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @MTK_QDMA, align 4
  %100 = call i64 @MTK_HAS_CAPS(i32 %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %93
  %103 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %104 = load i32, i32* @FC_THRES_DROP_MODE, align 4
  %105 = load i32, i32* @FC_THRES_DROP_EN, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @FC_THRES_MIN, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @MTK_QDMA_FC_THRES, align 4
  %110 = call i32 @mtk_w32(%struct.mtk_eth* %103, i32 %108, i32 %109)
  %111 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %112 = load i32, i32* @MTK_QDMA_HRED2, align 4
  %113 = call i32 @mtk_w32(%struct.mtk_eth* %111, i32 0, i32 %112)
  br label %114

114:                                              ; preds = %102, %93
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %114, %90, %79, %60, %51, %34, %26, %9
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i64 @mtk_dma_busy_wait(%struct.mtk_eth*) #1

declare dso_local i64 @MTK_HAS_CAPS(i32, i32) #1

declare dso_local i32 @mtk_init_fq_dma(%struct.mtk_eth*) #1

declare dso_local i32 @mtk_tx_alloc(%struct.mtk_eth*) #1

declare dso_local i32 @mtk_rx_alloc(%struct.mtk_eth*, i32, i32) #1

declare dso_local i32 @mtk_hwlro_rx_init(%struct.mtk_eth*) #1

declare dso_local i32 @mtk_w32(%struct.mtk_eth*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
