; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_find_tx_ucast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_find_tx_ucast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil_ring = type { i64 }
%struct.wil6210_priv = type { i32, i32**, %struct.wil_ring_tx_data*, %struct.wil_ring* }
%struct.wil_ring_tx_data = type { i64, i32 }
%struct.wil6210_vif = type { i32 }
%struct.sk_buff = type { i64 }

@ETH_P_PAE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"find_tx_ucast: (%pM) -> [%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"find_tx_ucast: vring[%d] not valid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wil_ring* (%struct.wil6210_priv*, %struct.wil6210_vif*, %struct.sk_buff*)* @wil_find_tx_ucast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wil_ring* @wil_find_tx_ucast(%struct.wil6210_priv* %0, %struct.wil6210_vif* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.wil_ring*, align 8
  %5 = alloca %struct.wil6210_priv*, align 8
  %6 = alloca %struct.wil6210_vif*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.wil_ring*, align 8
  %13 = alloca %struct.wil_ring_tx_data*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %5, align 8
  store %struct.wil6210_vif* %1, %struct.wil6210_vif** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = call i32* @wil_skb_get_da(%struct.sk_buff* %14)
  store i32* %15, i32** %10, align 8
  %16 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %17 = call i32 @wil_get_min_tx_ring_id(%struct.wil6210_priv* %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %19 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %20 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %10, align 8
  %23 = call i32 @wil_find_cid(%struct.wil6210_priv* %18, i32 %21, i32* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %29 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sge i32 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %3
  store %struct.wil_ring* null, %struct.wil_ring** %4, align 8
  br label %110

33:                                               ; preds = %26
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %106, %33
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %38 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %37, i32 0, i32 1
  %39 = load i32**, i32*** %38, align 8
  %40 = call i32 @ARRAY_SIZE(i32** %39)
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %109

42:                                               ; preds = %35
  %43 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %44 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %43, i32 0, i32 2
  %45 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %45, i64 %47
  %49 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %42
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @ETH_P_PAE, align 4
  %57 = call i64 @cpu_to_be16(i32 %56)
  %58 = icmp ne i64 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %106

60:                                               ; preds = %52, %42
  %61 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %62 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %61, i32 0, i32 1
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %105

72:                                               ; preds = %60
  %73 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %74 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %73, i32 0, i32 3
  %75 = load %struct.wil_ring*, %struct.wil_ring** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %75, i64 %77
  store %struct.wil_ring* %78, %struct.wil_ring** %12, align 8
  %79 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %80 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %79, i32 0, i32 2
  %81 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %81, i64 %83
  store %struct.wil_ring_tx_data* %84, %struct.wil_ring_tx_data** %13, align 8
  %85 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = ptrtoint i32* %86 to i32
  %88 = load i32, i32* %8, align 4
  %89 = call i32 (%struct.wil6210_priv*, i8*, i32, ...) @wil_dbg_txrx(%struct.wil6210_priv* %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load %struct.wil_ring*, %struct.wil_ring** %12, align 8
  %91 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %72
  %95 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %13, align 8
  %96 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load %struct.wil_ring*, %struct.wil_ring** %12, align 8
  store %struct.wil_ring* %100, %struct.wil_ring** %4, align 8
  br label %110

101:                                              ; preds = %94, %72
  %102 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 (%struct.wil6210_priv*, i8*, i32, ...) @wil_dbg_txrx(%struct.wil6210_priv* %102, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  store %struct.wil_ring* null, %struct.wil_ring** %4, align 8
  br label %110

105:                                              ; preds = %60
  br label %106

106:                                              ; preds = %105, %59
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %35

109:                                              ; preds = %35
  store %struct.wil_ring* null, %struct.wil_ring** %4, align 8
  br label %110

110:                                              ; preds = %109, %101, %99, %32
  %111 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  ret %struct.wil_ring* %111
}

declare dso_local i32* @wil_skb_get_da(%struct.sk_buff*) #1

declare dso_local i32 @wil_get_min_tx_ring_id(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_find_cid(%struct.wil6210_priv*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i32 @wil_dbg_txrx(%struct.wil6210_priv*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
