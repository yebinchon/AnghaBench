; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_vec.c_aq_vec_add_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_vec.c_aq_vec_add_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_vec_s = type { i32, %struct.aq_ring_s** }
%struct.aq_ring_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.aq_ring_stats_rx_s, %struct.aq_ring_stats_tx_s }
%struct.aq_ring_stats_rx_s = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.aq_ring_stats_tx_s = type { i64, i64, i64, i64 }

@AQ_VEC_TX_ID = common dso_local global i64 0, align 8
@AQ_VEC_RX_ID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aq_vec_add_stats(%struct.aq_vec_s* %0, %struct.aq_ring_stats_rx_s* %1, %struct.aq_ring_stats_tx_s* %2) #0 {
  %4 = alloca %struct.aq_vec_s*, align 8
  %5 = alloca %struct.aq_ring_stats_rx_s*, align 8
  %6 = alloca %struct.aq_ring_stats_tx_s*, align 8
  %7 = alloca %struct.aq_ring_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.aq_ring_stats_tx_s*, align 8
  %10 = alloca %struct.aq_ring_stats_rx_s*, align 8
  store %struct.aq_vec_s* %0, %struct.aq_vec_s** %4, align 8
  store %struct.aq_ring_stats_rx_s* %1, %struct.aq_ring_stats_rx_s** %5, align 8
  store %struct.aq_ring_stats_tx_s* %2, %struct.aq_ring_stats_tx_s** %6, align 8
  store %struct.aq_ring_s* null, %struct.aq_ring_s** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.aq_vec_s*, %struct.aq_vec_s** %4, align 8
  %12 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %11, i32 0, i32 1
  %13 = load %struct.aq_ring_s**, %struct.aq_ring_s*** %12, align 8
  %14 = getelementptr inbounds %struct.aq_ring_s*, %struct.aq_ring_s** %13, i64 0
  %15 = load %struct.aq_ring_s*, %struct.aq_ring_s** %14, align 8
  store %struct.aq_ring_s* %15, %struct.aq_ring_s** %7, align 8
  br label %16

16:                                               ; preds = %117, %3
  %17 = load %struct.aq_vec_s*, %struct.aq_vec_s** %4, align 8
  %18 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = icmp ugt i32 %19, %20
  br i1 %21, label %22, label %127

22:                                               ; preds = %16
  %23 = load %struct.aq_ring_s*, %struct.aq_ring_s** %7, align 8
  %24 = load i64, i64* @AQ_VEC_TX_ID, align 8
  %25 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %23, i64 %24
  %26 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store %struct.aq_ring_stats_tx_s* %27, %struct.aq_ring_stats_tx_s** %9, align 8
  %28 = load %struct.aq_ring_s*, %struct.aq_ring_s** %7, align 8
  %29 = load i64, i64* @AQ_VEC_RX_ID, align 8
  %30 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %28, i64 %29
  %31 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store %struct.aq_ring_stats_rx_s* %32, %struct.aq_ring_stats_rx_s** %10, align 8
  %33 = load %struct.aq_ring_stats_rx_s*, %struct.aq_ring_stats_rx_s** %10, align 8
  %34 = getelementptr inbounds %struct.aq_ring_stats_rx_s, %struct.aq_ring_stats_rx_s* %33, i32 0, i32 7
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.aq_ring_stats_rx_s*, %struct.aq_ring_stats_rx_s** %5, align 8
  %37 = getelementptr inbounds %struct.aq_ring_stats_rx_s, %struct.aq_ring_stats_rx_s* %36, i32 0, i32 7
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, %35
  store i64 %39, i64* %37, align 8
  %40 = load %struct.aq_ring_stats_rx_s*, %struct.aq_ring_stats_rx_s** %10, align 8
  %41 = getelementptr inbounds %struct.aq_ring_stats_rx_s, %struct.aq_ring_stats_rx_s* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.aq_ring_stats_rx_s*, %struct.aq_ring_stats_rx_s** %5, align 8
  %44 = getelementptr inbounds %struct.aq_ring_stats_rx_s, %struct.aq_ring_stats_rx_s* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load %struct.aq_ring_stats_rx_s*, %struct.aq_ring_stats_rx_s** %10, align 8
  %48 = getelementptr inbounds %struct.aq_ring_stats_rx_s, %struct.aq_ring_stats_rx_s* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.aq_ring_stats_rx_s*, %struct.aq_ring_stats_rx_s** %5, align 8
  %51 = getelementptr inbounds %struct.aq_ring_stats_rx_s, %struct.aq_ring_stats_rx_s* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, %49
  store i64 %53, i64* %51, align 8
  %54 = load %struct.aq_ring_stats_rx_s*, %struct.aq_ring_stats_rx_s** %10, align 8
  %55 = getelementptr inbounds %struct.aq_ring_stats_rx_s, %struct.aq_ring_stats_rx_s* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.aq_ring_stats_rx_s*, %struct.aq_ring_stats_rx_s** %5, align 8
  %58 = getelementptr inbounds %struct.aq_ring_stats_rx_s, %struct.aq_ring_stats_rx_s* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, %56
  store i64 %60, i64* %58, align 8
  %61 = load %struct.aq_ring_stats_rx_s*, %struct.aq_ring_stats_rx_s** %10, align 8
  %62 = getelementptr inbounds %struct.aq_ring_stats_rx_s, %struct.aq_ring_stats_rx_s* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.aq_ring_stats_rx_s*, %struct.aq_ring_stats_rx_s** %5, align 8
  %65 = getelementptr inbounds %struct.aq_ring_stats_rx_s, %struct.aq_ring_stats_rx_s* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, %63
  store i64 %67, i64* %65, align 8
  %68 = load %struct.aq_ring_stats_rx_s*, %struct.aq_ring_stats_rx_s** %10, align 8
  %69 = getelementptr inbounds %struct.aq_ring_stats_rx_s, %struct.aq_ring_stats_rx_s* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.aq_ring_stats_rx_s*, %struct.aq_ring_stats_rx_s** %5, align 8
  %72 = getelementptr inbounds %struct.aq_ring_stats_rx_s, %struct.aq_ring_stats_rx_s* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, %70
  store i64 %74, i64* %72, align 8
  %75 = load %struct.aq_ring_stats_rx_s*, %struct.aq_ring_stats_rx_s** %10, align 8
  %76 = getelementptr inbounds %struct.aq_ring_stats_rx_s, %struct.aq_ring_stats_rx_s* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.aq_ring_stats_rx_s*, %struct.aq_ring_stats_rx_s** %5, align 8
  %79 = getelementptr inbounds %struct.aq_ring_stats_rx_s, %struct.aq_ring_stats_rx_s* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, %77
  store i64 %81, i64* %79, align 8
  %82 = load %struct.aq_ring_stats_rx_s*, %struct.aq_ring_stats_rx_s** %10, align 8
  %83 = getelementptr inbounds %struct.aq_ring_stats_rx_s, %struct.aq_ring_stats_rx_s* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.aq_ring_stats_rx_s*, %struct.aq_ring_stats_rx_s** %5, align 8
  %86 = getelementptr inbounds %struct.aq_ring_stats_rx_s, %struct.aq_ring_stats_rx_s* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, %84
  store i64 %88, i64* %86, align 8
  %89 = load %struct.aq_ring_stats_tx_s*, %struct.aq_ring_stats_tx_s** %9, align 8
  %90 = getelementptr inbounds %struct.aq_ring_stats_tx_s, %struct.aq_ring_stats_tx_s* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.aq_ring_stats_tx_s*, %struct.aq_ring_stats_tx_s** %6, align 8
  %93 = getelementptr inbounds %struct.aq_ring_stats_tx_s, %struct.aq_ring_stats_tx_s* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, %91
  store i64 %95, i64* %93, align 8
  %96 = load %struct.aq_ring_stats_tx_s*, %struct.aq_ring_stats_tx_s** %9, align 8
  %97 = getelementptr inbounds %struct.aq_ring_stats_tx_s, %struct.aq_ring_stats_tx_s* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.aq_ring_stats_tx_s*, %struct.aq_ring_stats_tx_s** %6, align 8
  %100 = getelementptr inbounds %struct.aq_ring_stats_tx_s, %struct.aq_ring_stats_tx_s* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, %98
  store i64 %102, i64* %100, align 8
  %103 = load %struct.aq_ring_stats_tx_s*, %struct.aq_ring_stats_tx_s** %9, align 8
  %104 = getelementptr inbounds %struct.aq_ring_stats_tx_s, %struct.aq_ring_stats_tx_s* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.aq_ring_stats_tx_s*, %struct.aq_ring_stats_tx_s** %6, align 8
  %107 = getelementptr inbounds %struct.aq_ring_stats_tx_s, %struct.aq_ring_stats_tx_s* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, %105
  store i64 %109, i64* %107, align 8
  %110 = load %struct.aq_ring_stats_tx_s*, %struct.aq_ring_stats_tx_s** %9, align 8
  %111 = getelementptr inbounds %struct.aq_ring_stats_tx_s, %struct.aq_ring_stats_tx_s* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.aq_ring_stats_tx_s*, %struct.aq_ring_stats_tx_s** %6, align 8
  %114 = getelementptr inbounds %struct.aq_ring_stats_tx_s, %struct.aq_ring_stats_tx_s* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, %112
  store i64 %116, i64* %114, align 8
  br label %117

117:                                              ; preds = %22
  %118 = load i32, i32* %8, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %8, align 4
  %120 = load %struct.aq_vec_s*, %struct.aq_vec_s** %4, align 8
  %121 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %120, i32 0, i32 1
  %122 = load %struct.aq_ring_s**, %struct.aq_ring_s*** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.aq_ring_s*, %struct.aq_ring_s** %122, i64 %124
  %126 = load %struct.aq_ring_s*, %struct.aq_ring_s** %125, align 8
  store %struct.aq_ring_s* %126, %struct.aq_ring_s** %7, align 8
  br label %16

127:                                              ; preds = %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
