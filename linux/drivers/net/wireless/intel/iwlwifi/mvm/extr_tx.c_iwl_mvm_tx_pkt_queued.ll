; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_tx_pkt_queued.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_tx_pkt_queued.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.iwl_mvm_tcm_mac* }
%struct.iwl_mvm_tcm_mac = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.iwl_mvm_sta = type { i32 }

@tid_to_mac80211_ac = common dso_local global i64* null, align 8
@FW_CTXT_ID_MSK = common dso_local global i32 0, align 4
@NUM_MAC_INDEX_DRIVER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.iwl_mvm_sta*, i32)* @iwl_mvm_tx_pkt_queued to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_tx_pkt_queued(%struct.iwl_mvm* %0, %struct.iwl_mvm_sta* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.iwl_mvm_sta*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_mvm_tcm_mac*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.iwl_mvm_sta* %1, %struct.iwl_mvm_sta** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64*, i64** @tid_to_mac80211_ac, align 8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %6, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @FW_CTXT_ID_MSK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @NUM_MAC_INDEX_DRIVER, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %43

27:                                               ; preds = %3
  %28 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %29 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.iwl_mvm_tcm_mac*, %struct.iwl_mvm_tcm_mac** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.iwl_mvm_tcm_mac, %struct.iwl_mvm_tcm_mac* %31, i64 %33
  store %struct.iwl_mvm_tcm_mac* %34, %struct.iwl_mvm_tcm_mac** %10, align 8
  %35 = load %struct.iwl_mvm_tcm_mac*, %struct.iwl_mvm_tcm_mac** %10, align 8
  %36 = getelementptr inbounds %struct.iwl_mvm_tcm_mac, %struct.iwl_mvm_tcm_mac* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %27, %24
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
