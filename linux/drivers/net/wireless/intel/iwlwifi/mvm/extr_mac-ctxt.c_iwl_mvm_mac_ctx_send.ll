; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctx_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctx_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i32, i32*)* @iwl_mvm_mac_ctx_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_mac_ctx_send(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_mvm*, align 8
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %7, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %13 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %52 [
    i32 128, label %15
    i32 131, label %22
    i32 130, label %37
    i32 129, label %42
    i32 132, label %47
  ]

15:                                               ; preds = %5
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %17 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32*, i32** %11, align 8
  %21 = call i32 @iwl_mvm_mac_ctxt_cmd_sta(%struct.iwl_mvm* %16, %struct.ieee80211_vif* %17, i32 %18, i32 %19, i32* %20)
  store i32 %21, i32* %6, align 4
  br label %56

22:                                               ; preds = %5
  %23 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %24 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %29 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @iwl_mvm_mac_ctxt_cmd_ap(%struct.iwl_mvm* %28, %struct.ieee80211_vif* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  br label %56

32:                                               ; preds = %22
  %33 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %34 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @iwl_mvm_mac_ctxt_cmd_go(%struct.iwl_mvm* %33, %struct.ieee80211_vif* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  br label %56

37:                                               ; preds = %5
  %38 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %39 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @iwl_mvm_mac_ctxt_cmd_listener(%struct.iwl_mvm* %38, %struct.ieee80211_vif* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  br label %56

42:                                               ; preds = %5
  %43 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %44 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @iwl_mvm_mac_ctxt_cmd_p2p_device(%struct.iwl_mvm* %43, %struct.ieee80211_vif* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  br label %56

47:                                               ; preds = %5
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %49 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @iwl_mvm_mac_ctxt_cmd_ibss(%struct.iwl_mvm* %48, %struct.ieee80211_vif* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  br label %56

52:                                               ; preds = %5
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* @EOPNOTSUPP, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %53, %47, %42, %37, %32, %27, %15
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @iwl_mvm_mac_ctxt_cmd_sta(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i32, i32*) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_cmd_ap(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_cmd_go(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_cmd_listener(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_cmd_p2p_device(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_cmd_ibss(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
