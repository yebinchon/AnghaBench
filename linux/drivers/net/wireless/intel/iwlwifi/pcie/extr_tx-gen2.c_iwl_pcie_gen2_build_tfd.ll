; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx-gen2.c_iwl_pcie_gen2_build_tfd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx-gen2.c_iwl_pcie_gen2_build_tfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_tfh_tfd = type { i32 }
%struct.iwl_trans = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.iwl_txq = type { i32 }
%struct.iwl_device_cmd = type { i32 }
%struct.sk_buff = type { i64 }
%struct.iwl_cmd_meta = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.TYPE_4__ = type { i64 }

@IWL_FIRST_TB_SIZE = common dso_local global i32 0, align 4
@IWL_DEVICE_FAMILY_22560 = common dso_local global i64 0, align 8
@IEEE80211_QOS_CTL_A_MSDU_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iwl_tfh_tfd* (%struct.iwl_trans*, %struct.iwl_txq*, %struct.iwl_device_cmd*, %struct.sk_buff*, %struct.iwl_cmd_meta*)* @iwl_pcie_gen2_build_tfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iwl_tfh_tfd* @iwl_pcie_gen2_build_tfd(%struct.iwl_trans* %0, %struct.iwl_txq* %1, %struct.iwl_device_cmd* %2, %struct.sk_buff* %3, %struct.iwl_cmd_meta* %4) #0 {
  %6 = alloca %struct.iwl_tfh_tfd*, align 8
  %7 = alloca %struct.iwl_trans*, align 8
  %8 = alloca %struct.iwl_txq*, align 8
  %9 = alloca %struct.iwl_device_cmd*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.iwl_cmd_meta*, align 8
  %12 = alloca %struct.ieee80211_hdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.iwl_tfh_tfd*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %7, align 8
  store %struct.iwl_txq* %1, %struct.iwl_txq** %8, align 8
  store %struct.iwl_device_cmd* %2, %struct.iwl_device_cmd** %9, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %10, align 8
  store %struct.iwl_cmd_meta* %4, %struct.iwl_cmd_meta** %11, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %21, %struct.ieee80211_hdr** %12, align 8
  %22 = load %struct.iwl_txq*, %struct.iwl_txq** %8, align 8
  %23 = load %struct.iwl_txq*, %struct.iwl_txq** %8, align 8
  %24 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @iwl_pcie_get_cmd_index(%struct.iwl_txq* %22, i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %28 = load %struct.iwl_txq*, %struct.iwl_txq** %8, align 8
  %29 = load i32, i32* %13, align 4
  %30 = call %struct.iwl_tfh_tfd* @iwl_pcie_get_tfd(%struct.iwl_trans* %27, %struct.iwl_txq* %28, i32 %29)
  store %struct.iwl_tfh_tfd* %30, %struct.iwl_tfh_tfd** %14, align 8
  %31 = load i32, i32* @IWL_FIRST_TB_SIZE, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ult i64 4, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUILD_BUG_ON(i32 %34)
  %36 = load %struct.iwl_tfh_tfd*, %struct.iwl_tfh_tfd** %14, align 8
  %37 = call i32 @memset(%struct.iwl_tfh_tfd* %36, i32 0, i32 4)
  %38 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %39 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IWL_DEVICE_FAMILY_22560, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %5
  store i32 4, i32* %15, align 4
  br label %47

46:                                               ; preds = %5
  store i32 4, i32* %15, align 4
  br label %47

47:                                               ; preds = %46, %45
  %48 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %49 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @ieee80211_is_data_qos(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %55 = call i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %54)
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IEEE80211_QOS_CTL_A_MSDU_PRESENT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br label %60

60:                                               ; preds = %53, %47
  %61 = phi i1 [ false, %47 ], [ %59, %53 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %17, align 4
  %63 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %64 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ieee80211_hdrlen(i32 %65)
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %17, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %60
  %70 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %71 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %70)
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %69
  %76 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %77 = load %struct.iwl_txq*, %struct.iwl_txq** %8, align 8
  %78 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %9, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %80 = load %struct.iwl_cmd_meta*, %struct.iwl_cmd_meta** %11, align 8
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %15, align 4
  %83 = call %struct.iwl_tfh_tfd* @iwl_pcie_gen2_build_tx_amsdu(%struct.iwl_trans* %76, %struct.iwl_txq* %77, %struct.iwl_device_cmd* %78, %struct.sk_buff* %79, %struct.iwl_cmd_meta* %80, i32 %81, i32 %82)
  store %struct.iwl_tfh_tfd* %83, %struct.iwl_tfh_tfd** %6, align 8
  br label %97

84:                                               ; preds = %69, %60
  %85 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %86 = load %struct.iwl_txq*, %struct.iwl_txq** %8, align 8
  %87 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %9, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %89 = load %struct.iwl_cmd_meta*, %struct.iwl_cmd_meta** %11, align 8
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %17, align 4
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call %struct.iwl_tfh_tfd* @iwl_pcie_gen2_build_tx(%struct.iwl_trans* %85, %struct.iwl_txq* %86, %struct.iwl_device_cmd* %87, %struct.sk_buff* %88, %struct.iwl_cmd_meta* %89, i32 %90, i32 %91, i32 %95)
  store %struct.iwl_tfh_tfd* %96, %struct.iwl_tfh_tfd** %6, align 8
  br label %97

97:                                               ; preds = %84, %75
  %98 = load %struct.iwl_tfh_tfd*, %struct.iwl_tfh_tfd** %6, align 8
  ret %struct.iwl_tfh_tfd* %98
}

declare dso_local i32 @iwl_pcie_get_cmd_index(%struct.iwl_txq*, i32) #1

declare dso_local %struct.iwl_tfh_tfd* @iwl_pcie_get_tfd(%struct.iwl_trans*, %struct.iwl_txq*, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.iwl_tfh_tfd*, i32, i32) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr*) #1

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.iwl_tfh_tfd* @iwl_pcie_gen2_build_tx_amsdu(%struct.iwl_trans*, %struct.iwl_txq*, %struct.iwl_device_cmd*, %struct.sk_buff*, %struct.iwl_cmd_meta*, i32, i32) #1

declare dso_local %struct.iwl_tfh_tfd* @iwl_pcie_gen2_build_tx(%struct.iwl_trans*, %struct.iwl_txq*, %struct.iwl_device_cmd*, %struct.sk_buff*, %struct.iwl_cmd_meta*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
