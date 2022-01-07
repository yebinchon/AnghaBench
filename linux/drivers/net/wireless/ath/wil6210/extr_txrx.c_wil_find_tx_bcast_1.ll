; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_find_tx_bcast_1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_find_tx_bcast_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil_ring = type { i32 }
%struct.wil6210_priv = type { %struct.wil_ring_tx_data*, %struct.wil_ring* }
%struct.wil_ring_tx_data = type { i32, i32 }
%struct.wil6210_vif = type { i32 }
%struct.sk_buff = type { i64 }

@ETH_P_PAE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wil_ring* (%struct.wil6210_priv*, %struct.wil6210_vif*, %struct.sk_buff*)* @wil_find_tx_bcast_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wil_ring* @wil_find_tx_bcast_1(%struct.wil6210_priv* %0, %struct.wil6210_vif* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.wil_ring*, align 8
  %5 = alloca %struct.wil6210_priv*, align 8
  %6 = alloca %struct.wil6210_vif*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.wil_ring*, align 8
  %9 = alloca %struct.wil_ring_tx_data*, align 8
  %10 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %5, align 8
  store %struct.wil6210_vif* %1, %struct.wil6210_vif** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %11 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %12 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store %struct.wil_ring* null, %struct.wil_ring** %4, align 8
  br label %60

17:                                               ; preds = %3
  %18 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %19 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %18, i32 0, i32 1
  %20 = load %struct.wil_ring*, %struct.wil_ring** %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %20, i64 %22
  store %struct.wil_ring* %23, %struct.wil_ring** %8, align 8
  %24 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %25 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %24, i32 0, i32 0
  %26 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %26, i64 %28
  store %struct.wil_ring_tx_data* %29, %struct.wil_ring_tx_data** %9, align 8
  %30 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %31 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %17
  %35 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %9, align 8
  %36 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34, %17
  store %struct.wil_ring* null, %struct.wil_ring** %4, align 8
  br label %60

40:                                               ; preds = %34
  %41 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %42 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %41, i32 0, i32 0
  %43 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %43, i64 %45
  %47 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %40
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @ETH_P_PAE, align 4
  %55 = call i64 @cpu_to_be16(i32 %54)
  %56 = icmp ne i64 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store %struct.wil_ring* null, %struct.wil_ring** %4, align 8
  br label %60

58:                                               ; preds = %50, %40
  %59 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  store %struct.wil_ring* %59, %struct.wil_ring** %4, align 8
  br label %60

60:                                               ; preds = %58, %57, %39, %16
  %61 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  ret %struct.wil_ring* %61
}

declare dso_local i64 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
