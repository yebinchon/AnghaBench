; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_beacon_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_beacon_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i64, i64, i32 }
%struct.mac80211_hwsim_data = type { i64, i64, %struct.ieee80211_hw* }
%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_rate = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@SUPPORTS_RC_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @mac80211_hwsim_beacon_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mac80211_hwsim_beacon_tx(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.mac80211_hwsim_data*, align 8
  %8 = alloca %struct.ieee80211_hw*, align 8
  %9 = alloca %struct.ieee80211_tx_info*, align 8
  %10 = alloca %struct.ieee80211_rate*, align 8
  %11 = alloca %struct.ieee80211_mgmt*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.mac80211_hwsim_data*
  store %struct.mac80211_hwsim_data* %14, %struct.mac80211_hwsim_data** %7, align 8
  %15 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %7, align 8
  %16 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %15, i32 0, i32 2
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %16, align 8
  store %struct.ieee80211_hw* %17, %struct.ieee80211_hw** %8, align 8
  %18 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %19 = call i32 @hwsim_check_magic(%struct.ieee80211_vif* %18)
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %3
  %26 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %27 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %33 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %115

38:                                               ; preds = %31, %25, %3
  %39 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %40 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %41 = call %struct.sk_buff* @ieee80211_beacon_get(%struct.ieee80211_hw* %39, %struct.ieee80211_vif* %40)
  store %struct.sk_buff* %41, %struct.sk_buff** %12, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %43 = icmp eq %struct.sk_buff* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %115

45:                                               ; preds = %38
  %46 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %47 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %46)
  store %struct.ieee80211_tx_info* %47, %struct.ieee80211_tx_info** %9, align 8
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %49 = load i32, i32* @SUPPORTS_RC_TABLE, align 4
  %50 = call i64 @ieee80211_hw_check(%struct.ieee80211_hw* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %45
  %53 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %55 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %56 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %60 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ARRAY_SIZE(i32 %62)
  %64 = call i32 @ieee80211_get_tx_rates(%struct.ieee80211_vif* %53, i32* null, %struct.sk_buff* %54, i32 %58, i32 %63)
  br label %65

65:                                               ; preds = %52, %45
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %67 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %68 = call %struct.ieee80211_rate* @ieee80211_get_tx_rate(%struct.ieee80211_hw* %66, %struct.ieee80211_tx_info* %67)
  store %struct.ieee80211_rate* %68, %struct.ieee80211_rate** %10, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %72, %struct.ieee80211_mgmt** %11, align 8
  %73 = call i64 (...) @mac80211_hwsim_get_tsf_raw()
  %74 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %7, align 8
  %75 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  %76 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %7, align 8
  %77 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %7, align 8
  %80 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %78, %81
  %83 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %10, align 8
  %84 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sdiv i32 1920, %85
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %82, %87
  %89 = call i32 @cpu_to_le64(i64 %88)
  %90 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %11, align 8
  %91 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  store i32 %89, i32* %93, align 4
  %94 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %96 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %97 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call %struct.TYPE_10__* @rcu_dereference(i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @mac80211_hwsim_tx_frame(%struct.ieee80211_hw* %94, %struct.sk_buff* %95, i32 %102)
  %104 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %105 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %65
  %109 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %110 = call i64 @ieee80211_csa_is_complete(%struct.ieee80211_vif* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %114 = call i32 @ieee80211_csa_finish(%struct.ieee80211_vif* %113)
  br label %115

115:                                              ; preds = %37, %44, %112, %108, %65
  ret void
}

declare dso_local i32 @hwsim_check_magic(%struct.ieee80211_vif*) #1

declare dso_local %struct.sk_buff* @ieee80211_beacon_get(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @ieee80211_hw_check(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @ieee80211_get_tx_rates(%struct.ieee80211_vif*, i32*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.ieee80211_rate* @ieee80211_get_tx_rate(%struct.ieee80211_hw*, %struct.ieee80211_tx_info*) #1

declare dso_local i64 @mac80211_hwsim_get_tsf_raw(...) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i32 @mac80211_hwsim_tx_frame(%struct.ieee80211_hw*, %struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_10__* @rcu_dereference(i32) #1

declare dso_local i64 @ieee80211_csa_is_complete(%struct.ieee80211_vif*) #1

declare dso_local i32 @ieee80211_csa_finish(%struct.ieee80211_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
