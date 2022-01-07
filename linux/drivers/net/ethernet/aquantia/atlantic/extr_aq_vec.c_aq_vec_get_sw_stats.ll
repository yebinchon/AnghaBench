; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_vec.c_aq_vec_get_sw_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_vec.c_aq_vec_get_sw_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_vec_s = type { i32 }
%struct.aq_ring_stats_rx_s = type { i64, i64, i64, i64, i64 }
%struct.aq_ring_stats_tx_s = type { i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aq_vec_get_sw_stats(%struct.aq_vec_s* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.aq_vec_s*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.aq_ring_stats_rx_s, align 8
  %9 = alloca %struct.aq_ring_stats_tx_s, align 8
  store %struct.aq_vec_s* %0, %struct.aq_vec_s** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = bitcast %struct.aq_ring_stats_rx_s* %8 to %struct.aq_ring_stats_tx_s*
  %11 = call i32 @memset(%struct.aq_ring_stats_tx_s* %10, i32 0, i32 40)
  %12 = call i32 @memset(%struct.aq_ring_stats_tx_s* %9, i32 0, i32 40)
  %13 = load %struct.aq_vec_s*, %struct.aq_vec_s** %4, align 8
  %14 = bitcast %struct.aq_ring_stats_rx_s* %8 to %struct.aq_ring_stats_tx_s*
  %15 = call i32 @aq_vec_add_stats(%struct.aq_vec_s* %13, %struct.aq_ring_stats_tx_s* %14, %struct.aq_ring_stats_tx_s* %9)
  %16 = getelementptr inbounds %struct.aq_ring_stats_rx_s, %struct.aq_ring_stats_rx_s* %8, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %17
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 4
  %26 = getelementptr inbounds %struct.aq_ring_stats_tx_s, %struct.aq_ring_stats_tx_s* %9, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %27
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 4
  %37 = getelementptr inbounds %struct.aq_ring_stats_tx_s, %struct.aq_ring_stats_tx_s* %9, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %38
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %43, align 4
  %48 = getelementptr inbounds %struct.aq_ring_stats_rx_s, %struct.aq_ring_stats_rx_s* %8, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %49
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %54, align 4
  %59 = getelementptr inbounds %struct.aq_ring_stats_rx_s, %struct.aq_ring_stats_rx_s* %8, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %7, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %60
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %65, align 4
  %70 = getelementptr inbounds %struct.aq_ring_stats_rx_s, %struct.aq_ring_stats_rx_s* %8, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %7, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %7, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %71
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %76, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %3
  %84 = load i32, i32* %7, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %7, align 4
  %86 = load i32*, i32** %6, align 8
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %83, %3
  ret i32 0
}

declare dso_local i32 @memset(%struct.aq_ring_stats_tx_s*, i32, i32) #1

declare dso_local i32 @aq_vec_add_stats(%struct.aq_vec_s*, %struct.aq_ring_stats_tx_s*, %struct.aq_ring_stats_tx_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
