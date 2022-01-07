; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c___iwl_mvm_set_sta_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c___iwl_mvm_set_sta_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_key_conf = type { i32, i32 }
%struct.ieee80211_key_seq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_mvm_sta = type { i32 }
%struct.iwl_mvm_vif = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to find station id\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*, i32, i32)* @__iwl_mvm_set_sta_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__iwl_mvm_set_sta_key(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, %struct.ieee80211_key_conf* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_mvm*, align 8
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca %struct.ieee80211_key_conf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.ieee80211_key_seq, align 4
  %17 = alloca [5 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.iwl_mvm_sta*, align 8
  %21 = alloca %struct.iwl_mvm_vif*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %8, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %9, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %10, align 8
  store %struct.ieee80211_key_conf* %3, %struct.ieee80211_key_conf** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %19, align 4
  %22 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %23 = icmp ne %struct.ieee80211_sta* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %6
  %25 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %26 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %25)
  store %struct.iwl_mvm_sta* %26, %struct.iwl_mvm_sta** %20, align 8
  %27 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %20, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %18, align 4
  %30 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %31 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %19, align 4
  br label %59

33:                                               ; preds = %6
  %34 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %35 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %33
  %40 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %41 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %39
  %47 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %48 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %47)
  store %struct.iwl_mvm_vif* %48, %struct.iwl_mvm_vif** %21, align 8
  %49 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %21, align 8
  %50 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %18, align 4
  br label %58

53:                                               ; preds = %39, %33
  %54 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %55 = call i32 @IWL_ERR(%struct.iwl_mvm* %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %106

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %24
  %60 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %61 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %96 [
    i32 130, label %63
    i32 133, label %88
    i32 128, label %88
    i32 129, label %88
    i32 132, label %88
    i32 131, label %88
  ]

63:                                               ; preds = %59
  %64 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %65 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %66 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %67 = call i32* @iwl_mvm_get_mac_addr(%struct.iwl_mvm* %64, %struct.ieee80211_vif* %65, %struct.ieee80211_sta* %66)
  store i32* %67, i32** %15, align 8
  %68 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %69 = call i32 @ieee80211_get_key_rx_seq(%struct.ieee80211_key_conf* %68, i32 0, %struct.ieee80211_key_seq* %16)
  %70 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %71 = load i32*, i32** %15, align 8
  %72 = getelementptr inbounds %struct.ieee80211_key_seq, %struct.ieee80211_key_seq* %16, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds [5 x i32], [5 x i32]* %17, i64 0, i64 0
  %76 = call i32 @ieee80211_get_tkip_rx_p1k(%struct.ieee80211_key_conf* %70, i32* %71, i32 %74, i32* %75)
  %77 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %78 = load i32, i32* %18, align 4
  %79 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %80 = load i32, i32* %13, align 4
  %81 = getelementptr inbounds %struct.ieee80211_key_seq, %struct.ieee80211_key_seq* %16, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds [5 x i32], [5 x i32]* %17, i64 0, i64 0
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %19, align 4
  %87 = call i32 @iwl_mvm_send_sta_key(%struct.iwl_mvm* %77, i32 %78, %struct.ieee80211_key_conf* %79, i32 %80, i32 %83, i32* %84, i32 0, i32 %85, i32 %86)
  store i32 %87, i32* %14, align 4
  br label %104

88:                                               ; preds = %59, %59, %59, %59, %59
  %89 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %90 = load i32, i32* %18, align 4
  %91 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %19, align 4
  %95 = call i32 @iwl_mvm_send_sta_key(%struct.iwl_mvm* %89, i32 %90, %struct.ieee80211_key_conf* %91, i32 %92, i32 0, i32* null, i32 0, i32 %93, i32 %94)
  store i32 %95, i32* %14, align 4
  br label %104

96:                                               ; preds = %59
  %97 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %98 = load i32, i32* %18, align 4
  %99 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %19, align 4
  %103 = call i32 @iwl_mvm_send_sta_key(%struct.iwl_mvm* %97, i32 %98, %struct.ieee80211_key_conf* %99, i32 %100, i32 0, i32* null, i32 0, i32 %101, i32 %102)
  store i32 %103, i32* %14, align 4
  br label %104

104:                                              ; preds = %96, %88, %63
  %105 = load i32, i32* %14, align 4
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %104, %53
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i32* @iwl_mvm_get_mac_addr(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_sta*) #1

declare dso_local i32 @ieee80211_get_key_rx_seq(%struct.ieee80211_key_conf*, i32, %struct.ieee80211_key_seq*) #1

declare dso_local i32 @ieee80211_get_tkip_rx_p1k(%struct.ieee80211_key_conf*, i32*, i32, i32*) #1

declare dso_local i32 @iwl_mvm_send_sta_key(%struct.iwl_mvm*, i32, %struct.ieee80211_key_conf*, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
