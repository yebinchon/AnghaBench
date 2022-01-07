; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_op_unassign_vif_chanctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_op_unassign_vif_chanctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath10k* }
%struct.ath10k = type { i32 }
%struct.ieee80211_vif = type { i64, i64 }
%struct.ieee80211_chanctx_conf = type { i32 }
%struct.ath10k_vif = type { i32, i32, i32 }

@ATH10K_DBG_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"mac chanctx unassign ptr %pK vdev_id %i\0A\00", align 1
@NL80211_IFTYPE_MONITOR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to down monitor vdev %i: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to stop vdev %i: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_chanctx_conf*)* @ath10k_mac_op_unassign_vif_chanctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_mac_op_unassign_vif_chanctx(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_chanctx_conf* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %7 = alloca %struct.ath10k*, align 8
  %8 = alloca %struct.ath10k_vif*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_chanctx_conf* %2, %struct.ieee80211_chanctx_conf** %6, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  store %struct.ath10k* %12, %struct.ath10k** %7, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.ath10k_vif*
  store %struct.ath10k_vif* %17, %struct.ath10k_vif** %8, align 8
  %18 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %19 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %22 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %23 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %6, align 8
  %24 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %25 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ath10k_dbg(%struct.ath10k* %21, i32 %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.ieee80211_chanctx_conf* %23, i32 %26)
  %28 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %29 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @WARN_ON(i32 %33)
  %35 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %36 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NL80211_IFTYPE_MONITOR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %3
  %41 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %42 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @WARN_ON(i32 %46)
  %48 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %49 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %50 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ath10k_wmi_vdev_down(%struct.ath10k* %48, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %40
  %56 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %57 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %58 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @ath10k_warn(%struct.ath10k* %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %55, %40
  %63 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %64 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %3
  %66 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %67 = call i32 @ath10k_vdev_stop(%struct.ath10k_vif* %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %72 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %73 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @ath10k_warn(%struct.ath10k* %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %70, %65
  %78 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %79 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %78, i32 0, i32 0
  store i32 0, i32* %79, align 4
  %80 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %81 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, %struct.ieee80211_chanctx_conf*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ath10k_wmi_vdev_down(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32) #1

declare dso_local i32 @ath10k_vdev_stop(%struct.ath10k_vif*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
