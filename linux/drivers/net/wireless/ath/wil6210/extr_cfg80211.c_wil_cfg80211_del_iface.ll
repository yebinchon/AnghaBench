; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_del_iface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_del_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i32, i32 }
%struct.wil6210_priv = type { %struct.wireless_dev* }
%struct.wil6210_vif = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"del_iface\0A\00", align 1
@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"delete of incorrect interface 0x%p\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"cannot remove the main interface\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"deleted VIF, mid %d iftype %d MAC %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.wireless_dev*)* @wil_cfg80211_del_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_cfg80211_del_iface(%struct.wiphy* %0, %struct.wireless_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.wireless_dev*, align 8
  %6 = alloca %struct.wil6210_priv*, align 8
  %7 = alloca %struct.wil6210_vif*, align 8
  %8 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %5, align 8
  %9 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %10 = call %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy* %9)
  store %struct.wil6210_priv* %10, %struct.wil6210_priv** %6, align 8
  %11 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %12 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %13 = call %struct.wil6210_vif* @wdev_to_vif(%struct.wil6210_priv* %11, %struct.wireless_dev* %12)
  store %struct.wil6210_vif* %13, %struct.wil6210_vif** %7, align 8
  %14 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %15 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %17 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @NL80211_IFTYPE_P2P_DEVICE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %2
  %22 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %23 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %24 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %23, i32 0, i32 0
  %25 = load %struct.wireless_dev*, %struct.wireless_dev** %24, align 8
  %26 = icmp ne %struct.wireless_dev* %22, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %29 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %30 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), %struct.wireless_dev* %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %74

33:                                               ; preds = %21
  %34 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %35 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %36 = call i32 @wil_cfg80211_stop_p2p_device(%struct.wiphy* %34, %struct.wireless_dev* %35)
  %37 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %38 = call i32 @wil_p2p_wdev_free(%struct.wil6210_priv* %37)
  store i32 0, i32* %3, align 4
  br label %74

39:                                               ; preds = %2
  %40 = load %struct.wil6210_vif*, %struct.wil6210_vif** %7, align 8
  %41 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %46 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %74

49:                                               ; preds = %39
  %50 = load %struct.wil6210_vif*, %struct.wil6210_vif** %7, align 8
  %51 = call i32 @wil_vif_prepare_stop(%struct.wil6210_vif* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %72

55:                                               ; preds = %49
  %56 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %57 = load %struct.wil6210_vif*, %struct.wil6210_vif** %7, align 8
  %58 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %61 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %64 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @wil_info(%struct.wil6210_priv* %56, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %59, i32 %62, i32 %65)
  %67 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %68 = load %struct.wil6210_vif*, %struct.wil6210_vif** %7, align 8
  %69 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @wil_vif_remove(%struct.wil6210_priv* %67, i64 %70)
  br label %72

72:                                               ; preds = %55, %54
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %44, %33, %27
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy*) #1

declare dso_local %struct.wil6210_vif* @wdev_to_vif(%struct.wil6210_priv*, %struct.wireless_dev*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*, ...) #1

declare dso_local i32 @wil_cfg80211_stop_p2p_device(%struct.wiphy*, %struct.wireless_dev*) #1

declare dso_local i32 @wil_p2p_wdev_free(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_vif_prepare_stop(%struct.wil6210_vif*) #1

declare dso_local i32 @wil_info(%struct.wil6210_priv*, i8*, i64, i32, i32) #1

declare dso_local i32 @wil_vif_remove(%struct.wil6210_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
