; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_get_ctrl_vif_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_get_ctrl_vif_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.iwl_mvm_vif = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"fc=0x%02x\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Not a ctrl vif, no available queue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_tx_info*, %struct.ieee80211_hdr*)* @iwl_mvm_get_ctrl_vif_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_get_ctrl_vif_queue(%struct.iwl_mvm* %0, %struct.ieee80211_tx_info* %1, %struct.ieee80211_hdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_tx_info*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca %struct.iwl_mvm_vif*, align 8
  %9 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_tx_info* %1, %struct.ieee80211_tx_info** %6, align 8
  store %struct.ieee80211_hdr* %2, %struct.ieee80211_hdr** %7, align 8
  %10 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %11 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.TYPE_4__* %13)
  store %struct.iwl_mvm_vif* %14, %struct.iwl_mvm_vif** %8, align 8
  %15 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %90 [
    i32 129, label %24
    i32 130, label %24
    i32 128, label %77
  ]

24:                                               ; preds = %3, %3
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @ieee80211_is_mgmt(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %24
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @ieee80211_is_bufferable_mmpdu(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @ieee80211_is_deauth(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @ieee80211_is_disassoc(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36, %32, %28
  %41 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %42 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %4, align 4
  br label %92

44:                                               ; preds = %36, %24
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @ieee80211_has_order(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %62, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @ieee80211_is_probe_req(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %48
  %53 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %54 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @is_multicast_ether_addr(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %60 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %4, align 4
  br label %92

62:                                               ; preds = %52, %48, %44
  %63 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %64 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 130
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @le16_to_cpu(i32 %71)
  %73 = call i32 (i32, i8*, ...) @WARN_ONCE(i32 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %75 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %4, align 4
  br label %92

77:                                               ; preds = %3
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @ieee80211_is_mgmt(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %83 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %4, align 4
  br label %92

85:                                               ; preds = %77
  %86 = call i32 @WARN_ON_ONCE(i32 1)
  %87 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %88 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %4, align 4
  br label %92

90:                                               ; preds = %3
  %91 = call i32 (i32, i8*, ...) @WARN_ONCE(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %85, %81, %62, %58, %40
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.TYPE_4__*) #1

declare dso_local i32 @ieee80211_is_mgmt(i32) #1

declare dso_local i32 @ieee80211_is_bufferable_mmpdu(i32) #1

declare dso_local i32 @ieee80211_is_deauth(i32) #1

declare dso_local i32 @ieee80211_is_disassoc(i32) #1

declare dso_local i32 @ieee80211_has_order(i32) #1

declare dso_local i32 @ieee80211_is_probe_req(i32) #1

declare dso_local i32 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
