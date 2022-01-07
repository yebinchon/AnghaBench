; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_is_tx_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_is_tx_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32, i32, %struct.wil_ring_tx_data*, %struct.wil_ring* }
%struct.wil_ring_tx_data = type { i32, i32 }
%struct.wil_ring = type { i32 }

@WIL6210_MAX_TX_RINGS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@WIL_DATA_COMPLETION_TO_MS = common dso_local global i32 0, align 4
@wil_status_napi_en = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"TO waiting for idle tx\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"tx vring is not empty -> NAPI\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wil_is_tx_idle(%struct.wil6210_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wil6210_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wil_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wil_ring_tx_data*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %3, align 8
  %10 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %11 = call i32 @wil_get_min_tx_ring_id(%struct.wil6210_priv* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %112, %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @WIL6210_MAX_TX_RINGS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %115

17:                                               ; preds = %13
  %18 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %19 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %18, i32 0, i32 3
  %20 = load %struct.wil_ring*, %struct.wil_ring** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %20, i64 %22
  store %struct.wil_ring* %23, %struct.wil_ring** %7, align 8
  %24 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %25 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %26 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %25, i32 0, i32 3
  %27 = load %struct.wil_ring*, %struct.wil_ring** %26, align 8
  %28 = ptrtoint %struct.wil_ring* %24 to i64
  %29 = ptrtoint %struct.wil_ring* %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 4
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %8, align 4
  %33 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %34 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %33, i32 0, i32 2
  %35 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %35, i64 %37
  store %struct.wil_ring_tx_data* %38, %struct.wil_ring_tx_data** %9, align 8
  %39 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %9, align 8
  %40 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %39, i32 0, i32 0
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %43 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %17
  %47 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %9, align 8
  %48 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46, %17
  %52 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %9, align 8
  %53 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock(i32* %53)
  br label %112

55:                                               ; preds = %46
  %56 = load i64, i64* @jiffies, align 8
  %57 = load i32, i32* @WIL_DATA_COMPLETION_TO_MS, align 4
  %58 = call i64 @msecs_to_jiffies(i32 %57)
  %59 = add i64 %56, %58
  store i64 %59, i64* %5, align 8
  %60 = load i32, i32* @wil_status_napi_en, align 4
  %61 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %62 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @test_bit(i32 %60, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %108

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %106, %66
  %68 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %69 = call i32 @wil_ring_is_empty(%struct.wil_ring* %68)
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  br i1 %71, label %72, label %107

72:                                               ; preds = %67
  %73 = load i64, i64* @jiffies, align 8
  %74 = load i64, i64* %5, align 8
  %75 = call i64 @time_after(i64 %73, i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %79 = call i32 @wil_dbg_pm(%struct.wil6210_priv* %78, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %80 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %9, align 8
  %81 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %80, i32 0, i32 0
  %82 = call i32 @spin_unlock(i32* %81)
  store i32 0, i32* %2, align 4
  br label %116

83:                                               ; preds = %72
  %84 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %85 = call i32 @wil_dbg_ratelimited(%struct.wil6210_priv* %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %86 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %9, align 8
  %87 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %86, i32 0, i32 0
  %88 = call i32 @spin_unlock(i32* %87)
  %89 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %90 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %89, i32 0, i32 0
  %91 = call i32 @napi_synchronize(i32* %90)
  %92 = call i32 @msleep(i32 20)
  %93 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %9, align 8
  %94 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %93, i32 0, i32 0
  %95 = call i32 @spin_lock(i32* %94)
  %96 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %97 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %83
  %101 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %9, align 8
  %102 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %100, %83
  br label %107

106:                                              ; preds = %100
  br label %67

107:                                              ; preds = %105, %67
  br label %108

108:                                              ; preds = %107, %55
  %109 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %9, align 8
  %110 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %109, i32 0, i32 0
  %111 = call i32 @spin_unlock(i32* %110)
  br label %112

112:                                              ; preds = %108, %51
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %4, align 4
  br label %13

115:                                              ; preds = %13
  store i32 1, i32* %2, align 4
  br label %116

116:                                              ; preds = %115, %77
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @wil_get_min_tx_ring_id(%struct.wil6210_priv*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @wil_ring_is_empty(%struct.wil_ring*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @wil_dbg_pm(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @wil_dbg_ratelimited(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @napi_synchronize(i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
