; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_queue_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_queue_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_stats = type { i8* }
%struct.ena_adapter = type { i32 }

@ENA_STATS_ARRAY_TX = common dso_local global i32 0, align 4
@ena_stats_tx_strings = common dso_local global %struct.ena_stats* null, align 8
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"queue_%u_tx_%s\00", align 1
@ENA_STATS_ARRAY_RX = common dso_local global i32 0, align 4
@ena_stats_rx_strings = common dso_local global %struct.ena_stats* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"queue_%u_rx_%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_adapter*, i32**)* @ena_queue_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_queue_strings(%struct.ena_adapter* %0, i32** %1) #0 {
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca %struct.ena_stats*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %3, align 8
  store i32** %1, i32*** %4, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %67, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %70

14:                                               ; preds = %8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %37, %14
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @ENA_STATS_ARRAY_TX, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  %20 = load %struct.ena_stats*, %struct.ena_stats** @ena_stats_tx_strings, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ena_stats, %struct.ena_stats* %20, i64 %22
  store %struct.ena_stats* %23, %struct.ena_stats** %5, align 8
  %24 = load i32**, i32*** %4, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.ena_stats*, %struct.ena_stats** %5, align 8
  %29 = getelementptr inbounds %struct.ena_stats, %struct.ena_stats* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @snprintf(i32* %25, i32 %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %27, i8* %30)
  %32 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %33 = load i32**, i32*** %4, align 8
  %34 = load i32*, i32** %33, align 8
  %35 = sext i32 %32 to i64
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32* %36, i32** %33, align 8
  br label %37

37:                                               ; preds = %19
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %15

40:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %63, %40
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @ENA_STATS_ARRAY_RX, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %41
  %46 = load %struct.ena_stats*, %struct.ena_stats** @ena_stats_rx_strings, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ena_stats, %struct.ena_stats* %46, i64 %48
  store %struct.ena_stats* %49, %struct.ena_stats** %5, align 8
  %50 = load i32**, i32*** %4, align 8
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.ena_stats*, %struct.ena_stats** %5, align 8
  %55 = getelementptr inbounds %struct.ena_stats, %struct.ena_stats* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @snprintf(i32* %51, i32 %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %53, i8* %56)
  %58 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %59 = load i32**, i32*** %4, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = sext i32 %58 to i64
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32* %62, i32** %59, align 8
  br label %63

63:                                               ; preds = %45
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %41

66:                                               ; preds = %41
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %8

70:                                               ; preds = %8
  ret void
}

declare dso_local i32 @snprintf(i32*, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
