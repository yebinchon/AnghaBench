; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_stats.c_ionic_sw_stats_get_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_stats.c_ionic_sw_stats_get_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_lif = type { i32 }

@IONIC_NUM_LIF_STATS = common dso_local global i64 0, align 8
@IONIC_NUM_TX_STATS = common dso_local global i32 0, align 4
@IONIC_NUM_RX_STATS = common dso_local global i32 0, align 4
@IONIC_LIF_UP = common dso_local global i32 0, align 4
@IONIC_LIF_SW_DEBUG_STATS = common dso_local global i32 0, align 4
@IONIC_NUM_DBG_CQ_STATS = common dso_local global i32 0, align 4
@IONIC_NUM_TX_Q_STATS = common dso_local global i32 0, align 4
@IONIC_NUM_DBG_INTR_STATS = common dso_local global i32 0, align 4
@IONIC_MAX_NUM_SG_CNTR = common dso_local global i32 0, align 4
@IONIC_NUM_DBG_NAPI_STATS = common dso_local global i32 0, align 4
@IONIC_MAX_NUM_NAPI_CNTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ionic_lif*)* @ionic_sw_stats_get_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ionic_sw_stats_get_count(%struct.ionic_lif* %0) #0 {
  %2 = alloca %struct.ionic_lif*, align 8
  %3 = alloca i32, align 4
  store %struct.ionic_lif* %0, %struct.ionic_lif** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i64, i64* @IONIC_NUM_LIF_STATS, align 8
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = add nsw i64 %6, %4
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %3, align 4
  %9 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %10 = call i32 @MAX_Q(%struct.ionic_lif* %9)
  %11 = load i32, i32* @IONIC_NUM_TX_STATS, align 4
  %12 = mul nsw i32 %10, %11
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %16 = call i32 @MAX_Q(%struct.ionic_lif* %15)
  %17 = load i32, i32* @IONIC_NUM_RX_STATS, align 4
  %18 = mul nsw i32 %16, %17
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @IONIC_LIF_UP, align 4
  %22 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %23 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @test_bit(i32 %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %1
  %28 = load i32, i32* @IONIC_LIF_SW_DEBUG_STATS, align 4
  %29 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %30 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @test_bit(i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %27
  %35 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %36 = call i32 @MAX_Q(%struct.ionic_lif* %35)
  %37 = load i32, i32* @IONIC_NUM_DBG_CQ_STATS, align 4
  %38 = load i32, i32* @IONIC_NUM_TX_Q_STATS, align 4
  %39 = add nsw i32 %37, %38
  %40 = load i32, i32* @IONIC_NUM_DBG_INTR_STATS, align 4
  %41 = add nsw i32 %39, %40
  %42 = load i32, i32* @IONIC_MAX_NUM_SG_CNTR, align 4
  %43 = add nsw i32 %41, %42
  %44 = mul nsw i32 %36, %43
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %3, align 4
  %47 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %48 = call i32 @MAX_Q(%struct.ionic_lif* %47)
  %49 = load i32, i32* @IONIC_NUM_DBG_CQ_STATS, align 4
  %50 = load i32, i32* @IONIC_NUM_DBG_INTR_STATS, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* @IONIC_NUM_DBG_NAPI_STATS, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i32, i32* @IONIC_MAX_NUM_NAPI_CNTR, align 4
  %55 = add nsw i32 %53, %54
  %56 = mul nsw i32 %48, %55
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %34, %27, %1
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @MAX_Q(%struct.ionic_lif*) #1

declare dso_local i64 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
