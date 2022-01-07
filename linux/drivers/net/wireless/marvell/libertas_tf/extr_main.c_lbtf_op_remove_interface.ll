; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_main.c_lbtf_op_remove_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_main.c_lbtf_op_remove_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.lbtf_private* }
%struct.lbtf_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ieee80211_vif = type { i32 }

@LBTF_DEB_MACOPS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@LBTF_PASSIVE_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @lbtf_op_remove_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbtf_op_remove_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.lbtf_private*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 0
  %8 = load %struct.lbtf_private*, %struct.lbtf_private** %7, align 8
  store %struct.lbtf_private* %8, %struct.lbtf_private** %5, align 8
  %9 = load i32, i32* @LBTF_DEB_MACOPS, align 4
  %10 = call i32 @lbtf_deb_enter(i32 %9)
  %11 = load %struct.lbtf_private*, %struct.lbtf_private** %5, align 8
  %12 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %2
  %19 = load %struct.lbtf_private*, %struct.lbtf_private** %5, align 8
  %20 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18, %2
  %27 = load %struct.lbtf_private*, %struct.lbtf_private** %5, align 8
  %28 = call i32 @lbtf_beacon_ctrl(%struct.lbtf_private* %27, i32 0, i32 0)
  br label %29

29:                                               ; preds = %26, %18
  %30 = load %struct.lbtf_private*, %struct.lbtf_private** %5, align 8
  %31 = load i32, i32* @LBTF_PASSIVE_MODE, align 4
  %32 = call i32 @lbtf_set_mode(%struct.lbtf_private* %30, i32 %31)
  %33 = load %struct.lbtf_private*, %struct.lbtf_private** %5, align 8
  %34 = call i32 @lbtf_set_bssid(%struct.lbtf_private* %33, i32 0, i32* null)
  %35 = load %struct.lbtf_private*, %struct.lbtf_private** %5, align 8
  %36 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %35, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %36, align 8
  %37 = load i32, i32* @LBTF_DEB_MACOPS, align 4
  %38 = call i32 @lbtf_deb_leave(i32 %37)
  ret void
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local i32 @lbtf_beacon_ctrl(%struct.lbtf_private*, i32, i32) #1

declare dso_local i32 @lbtf_set_mode(%struct.lbtf_private*, i32) #1

declare dso_local i32 @lbtf_set_bssid(%struct.lbtf_private*, i32, i32*) #1

declare dso_local i32 @lbtf_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
