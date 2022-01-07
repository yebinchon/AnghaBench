; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ath9k.h_ath_node_to_tid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ath9k.h_ath_node_to_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_atx_tid = type { i32 }
%struct.ath_node = type { %struct.ieee80211_vif*, %struct.ieee80211_sta* }
%struct.ieee80211_vif = type { %struct.ieee80211_txq* }
%struct.ieee80211_txq = type { i64 }
%struct.ieee80211_sta = type { %struct.ieee80211_txq** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ath_atx_tid* (%struct.ath_node*, i64)* @ath_node_to_tid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ath_atx_tid* @ath_node_to_tid(%struct.ath_node* %0, i64 %1) #0 {
  %3 = alloca %struct.ath_node*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ieee80211_sta*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_txq*, align 8
  store %struct.ath_node* %0, %struct.ath_node** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.ath_node*, %struct.ath_node** %3, align 8
  %9 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %8, i32 0, i32 1
  %10 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  store %struct.ieee80211_sta* %10, %struct.ieee80211_sta** %5, align 8
  %11 = load %struct.ath_node*, %struct.ath_node** %3, align 8
  %12 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %11, i32 0, i32 0
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %12, align 8
  store %struct.ieee80211_vif* %13, %struct.ieee80211_vif** %6, align 8
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %15 = icmp ne %struct.ieee80211_vif* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %20 = icmp ne %struct.ieee80211_sta* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %2
  %22 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %22, i32 0, i32 0
  %24 = load %struct.ieee80211_txq**, %struct.ieee80211_txq*** %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %26, i32 0, i32 0
  %28 = load %struct.ieee80211_txq**, %struct.ieee80211_txq*** %27, align 8
  %29 = call i64 @ARRAY_SIZE(%struct.ieee80211_txq** %28)
  %30 = urem i64 %25, %29
  %31 = getelementptr inbounds %struct.ieee80211_txq*, %struct.ieee80211_txq** %24, i64 %30
  %32 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %31, align 8
  store %struct.ieee80211_txq* %32, %struct.ieee80211_txq** %7, align 8
  br label %37

33:                                               ; preds = %2
  %34 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %35 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %34, i32 0, i32 0
  %36 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %35, align 8
  store %struct.ieee80211_txq* %36, %struct.ieee80211_txq** %7, align 8
  br label %37

37:                                               ; preds = %33, %21
  %38 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %7, align 8
  %39 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.ath_atx_tid*
  ret %struct.ath_atx_tid* %41
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.ieee80211_txq**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
