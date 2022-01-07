; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_rxq_drop_pkts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_rxq_drop_pkts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_port = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.mvneta_bm_pool* }
%struct.mvneta_bm_pool = type { i32 }
%struct.mvneta_rx_queue = type { i32, i8**, %struct.mvneta_rx_desc* }
%struct.mvneta_rx_desc = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvneta_port*, %struct.mvneta_rx_queue*)* @mvneta_rxq_drop_pkts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvneta_rxq_drop_pkts(%struct.mvneta_port* %0, %struct.mvneta_rx_queue* %1) #0 {
  %3 = alloca %struct.mvneta_port*, align 8
  %4 = alloca %struct.mvneta_rx_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mvneta_rx_desc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mvneta_bm_pool*, align 8
  %10 = alloca %struct.mvneta_rx_desc*, align 8
  %11 = alloca i8*, align 8
  store %struct.mvneta_port* %0, %struct.mvneta_port** %3, align 8
  store %struct.mvneta_rx_queue* %1, %struct.mvneta_rx_queue** %4, align 8
  %12 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %13 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %14 = call i32 @mvneta_rxq_busy_desc_num_get(%struct.mvneta_port* %12, %struct.mvneta_rx_queue* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %19 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @mvneta_rxq_desc_num_update(%struct.mvneta_port* %18, %struct.mvneta_rx_queue* %19, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %17, %2
  %24 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %25 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %57

28:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %53, %28
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %29
  %34 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %35 = call %struct.mvneta_rx_desc* @mvneta_rxq_next_desc_get(%struct.mvneta_rx_queue* %34)
  store %struct.mvneta_rx_desc* %35, %struct.mvneta_rx_desc** %7, align 8
  %36 = load %struct.mvneta_rx_desc*, %struct.mvneta_rx_desc** %7, align 8
  %37 = call i64 @MVNETA_RX_GET_BM_POOL_ID(%struct.mvneta_rx_desc* %36)
  store i64 %37, i64* %8, align 8
  %38 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %39 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %42, i64 %43
  store %struct.mvneta_bm_pool* %44, %struct.mvneta_bm_pool** %9, align 8
  %45 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %46 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %9, align 8
  %49 = load %struct.mvneta_rx_desc*, %struct.mvneta_rx_desc** %7, align 8
  %50 = getelementptr inbounds %struct.mvneta_rx_desc, %struct.mvneta_rx_desc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @mvneta_bm_pool_put_bp(%struct.TYPE_6__* %47, %struct.mvneta_bm_pool* %48, i32 %51)
  br label %53

53:                                               ; preds = %33
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %29

56:                                               ; preds = %29
  br label %104

57:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %101, %57
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %61 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %104

64:                                               ; preds = %58
  %65 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %66 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %65, i32 0, i32 2
  %67 = load %struct.mvneta_rx_desc*, %struct.mvneta_rx_desc** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.mvneta_rx_desc, %struct.mvneta_rx_desc* %67, i64 %69
  store %struct.mvneta_rx_desc* %70, %struct.mvneta_rx_desc** %10, align 8
  %71 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %72 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %71, i32 0, i32 1
  %73 = load i8**, i8*** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %11, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %64
  %81 = load %struct.mvneta_rx_desc*, %struct.mvneta_rx_desc** %10, align 8
  %82 = getelementptr inbounds %struct.mvneta_rx_desc, %struct.mvneta_rx_desc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %80, %64
  br label %101

86:                                               ; preds = %80
  %87 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %88 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.mvneta_rx_desc*, %struct.mvneta_rx_desc** %10, align 8
  %94 = getelementptr inbounds %struct.mvneta_rx_desc, %struct.mvneta_rx_desc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @PAGE_SIZE, align 4
  %97 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %98 = call i32 @dma_unmap_page(i32 %92, i32 %95, i32 %96, i32 %97)
  %99 = load i8*, i8** %11, align 8
  %100 = call i32 @__free_page(i8* %99)
  br label %101

101:                                              ; preds = %86, %85
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %58

104:                                              ; preds = %56, %58
  ret void
}

declare dso_local i32 @mvneta_rxq_busy_desc_num_get(%struct.mvneta_port*, %struct.mvneta_rx_queue*) #1

declare dso_local i32 @mvneta_rxq_desc_num_update(%struct.mvneta_port*, %struct.mvneta_rx_queue*, i32, i32) #1

declare dso_local %struct.mvneta_rx_desc* @mvneta_rxq_next_desc_get(%struct.mvneta_rx_queue*) #1

declare dso_local i64 @MVNETA_RX_GET_BM_POOL_ID(%struct.mvneta_rx_desc*) #1

declare dso_local i32 @mvneta_bm_pool_put_bp(%struct.TYPE_6__*, %struct.mvneta_bm_pool*, i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @__free_page(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
