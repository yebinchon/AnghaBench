; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_queue_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_queue_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_stats = type { i64 }
%struct.ena_adapter = type { i32, %struct.ena_ring*, %struct.ena_ring* }
%struct.ena_ring = type { i32, i32, i32 }

@ENA_STATS_ARRAY_TX = common dso_local global i32 0, align 4
@ena_stats_tx_strings = common dso_local global %struct.ena_stats* null, align 8
@ENA_STATS_ARRAY_RX = common dso_local global i32 0, align 4
@ena_stats_rx_strings = common dso_local global %struct.ena_stats* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_adapter*, i32**)* @ena_queue_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_queue_stats(%struct.ena_adapter* %0, i32** %1) #0 {
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca %struct.ena_stats*, align 8
  %6 = alloca %struct.ena_ring*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %3, align 8
  store i32** %1, i32*** %4, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %87, %2
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %90

16:                                               ; preds = %10
  %17 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %17, i32 0, i32 2
  %19 = load %struct.ena_ring*, %struct.ena_ring** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %19, i64 %21
  store %struct.ena_ring* %22, %struct.ena_ring** %6, align 8
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %48, %16
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @ENA_STATS_ARRAY_TX, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %23
  %28 = load %struct.ena_stats*, %struct.ena_stats** @ena_stats_tx_strings, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ena_stats, %struct.ena_stats* %28, i64 %30
  store %struct.ena_stats* %31, %struct.ena_stats** %5, align 8
  %32 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %33 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %32, i32 0, i32 2
  %34 = ptrtoint i32* %33 to i64
  %35 = load %struct.ena_stats*, %struct.ena_stats** %5, align 8
  %36 = getelementptr inbounds %struct.ena_stats, %struct.ena_stats* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %34, %37
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32**, i32*** %4, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %41, align 8
  %44 = ptrtoint i32* %42 to i32
  %45 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %46 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %45, i32 0, i32 0
  %47 = call i32 @ena_safe_update_stat(i32* %40, i32 %44, i32* %46)
  br label %48

48:                                               ; preds = %27
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %23

51:                                               ; preds = %23
  %52 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %52, i32 0, i32 1
  %54 = load %struct.ena_ring*, %struct.ena_ring** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %54, i64 %56
  store %struct.ena_ring* %57, %struct.ena_ring** %6, align 8
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %83, %51
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @ENA_STATS_ARRAY_RX, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %58
  %63 = load %struct.ena_stats*, %struct.ena_stats** @ena_stats_rx_strings, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.ena_stats, %struct.ena_stats* %63, i64 %65
  store %struct.ena_stats* %66, %struct.ena_stats** %5, align 8
  %67 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %68 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %67, i32 0, i32 1
  %69 = ptrtoint i32* %68 to i64
  %70 = load %struct.ena_stats*, %struct.ena_stats** %5, align 8
  %71 = getelementptr inbounds %struct.ena_stats, %struct.ena_stats* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %69, %72
  %74 = inttoptr i64 %73 to i32*
  store i32* %74, i32** %7, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = load i32**, i32*** %4, align 8
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %76, align 8
  %79 = ptrtoint i32* %77 to i32
  %80 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %81 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %80, i32 0, i32 0
  %82 = call i32 @ena_safe_update_stat(i32* %75, i32 %79, i32* %81)
  br label %83

83:                                               ; preds = %62
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %58

86:                                               ; preds = %58
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %10

90:                                               ; preds = %10
  ret void
}

declare dso_local i32 @ena_safe_update_stat(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
