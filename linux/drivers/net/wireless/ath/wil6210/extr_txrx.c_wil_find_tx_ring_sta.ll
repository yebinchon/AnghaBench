; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_find_tx_ring_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_find_tx_ring_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil_ring = type { i32 }
%struct.wil6210_priv = type { i64**, i64, %struct.wil_ring_tx_data*, %struct.wil_ring* }
%struct.wil_ring_tx_data = type { i64, i32, i32 }
%struct.wil6210_vif = type { i64 }
%struct.sk_buff = type { i64 }

@WIL6210_MAX_TX_RINGS = common dso_local global i32 0, align 4
@ETH_P_PAE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Tx -> ring %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Tx while no rings active?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wil_ring* (%struct.wil6210_priv*, %struct.wil6210_vif*, %struct.sk_buff*)* @wil_find_tx_ring_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wil_ring* @wil_find_tx_ring_sta(%struct.wil6210_priv* %0, %struct.wil6210_vif* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.wil_ring*, align 8
  %5 = alloca %struct.wil6210_priv*, align 8
  %6 = alloca %struct.wil6210_vif*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.wil_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.wil_ring_tx_data*, align 8
  %12 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %5, align 8
  store %struct.wil6210_vif* %1, %struct.wil6210_vif** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %13 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %14 = call i32 @wil_get_min_tx_ring_id(%struct.wil6210_priv* %13)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  store i32 %15, i32* %9, align 4
  br label %16

16:                                               ; preds = %90, %3
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @WIL6210_MAX_TX_RINGS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %93

20:                                               ; preds = %16
  %21 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %22 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %21, i32 0, i32 3
  %23 = load %struct.wil_ring*, %struct.wil_ring** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %23, i64 %25
  store %struct.wil_ring* %26, %struct.wil_ring** %8, align 8
  %27 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %28 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %27, i32 0, i32 2
  %29 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %29, i64 %31
  store %struct.wil_ring_tx_data* %32, %struct.wil_ring_tx_data** %11, align 8
  %33 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %34 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %20
  %38 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %11, align 8
  %39 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %11, align 8
  %44 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %47 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42, %37, %20
  br label %90

51:                                               ; preds = %42
  %52 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %53 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %52, i32 0, i32 0
  %54 = load i64**, i64*** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64*, i64** %54, i64 %56
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %63 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp sge i64 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %51
  br label %90

67:                                               ; preds = %51
  %68 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %69 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %68, i32 0, i32 2
  %70 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %70, i64 %72
  %74 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %67
  %78 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @ETH_P_PAE, align 4
  %82 = call i64 @cpu_to_be16(i32 %81)
  %83 = icmp ne i64 %80, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %90

85:                                               ; preds = %77, %67
  %86 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_txrx(%struct.wil6210_priv* %86, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  store %struct.wil_ring* %89, %struct.wil_ring** %4, align 8
  br label %96

90:                                               ; preds = %84, %66, %50
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %16

93:                                               ; preds = %16
  %94 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %95 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_txrx(%struct.wil6210_priv* %94, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store %struct.wil_ring* null, %struct.wil_ring** %4, align 8
  br label %96

96:                                               ; preds = %93, %85
  %97 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  ret %struct.wil_ring* %97
}

declare dso_local i32 @wil_get_min_tx_ring_id(%struct.wil6210_priv*) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i32 @wil_dbg_txrx(%struct.wil6210_priv*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
