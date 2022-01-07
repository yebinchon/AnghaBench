; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_set_power_mgmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_set_power_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.brcmf_cfg80211_info = type { i32, %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }
%struct.brcmf_if = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Device is not ready, storing the value in cfg_info struct\0A\00", align 1
@PM_FAST = common dso_local global i32 0, align 4
@PM_OFF = common dso_local global i32 0, align 4
@NL80211_IFTYPE_P2P_CLIENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"Do not enable power save for P2P clients\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"power save %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@BRCMF_C_SET_PM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"net_device is not ready yet\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"error (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32, i32)* @brcmf_cfg80211_set_power_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_cfg80211_set_power_mgmt(%struct.wiphy* %0, %struct.net_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.brcmf_cfg80211_info*, align 8
  %12 = alloca %struct.brcmf_if*, align 8
  %13 = alloca %struct.brcmf_pub*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %15 = call %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy* %14)
  store %struct.brcmf_cfg80211_info* %15, %struct.brcmf_cfg80211_info** %11, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.brcmf_if* @netdev_priv(%struct.net_device* %16)
  store %struct.brcmf_if* %17, %struct.brcmf_if** %12, align 8
  %18 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %11, align 8
  %19 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %18, i32 0, i32 1
  %20 = load %struct.brcmf_pub*, %struct.brcmf_pub** %19, align 8
  store %struct.brcmf_pub* %20, %struct.brcmf_pub** %13, align 8
  %21 = load i32, i32* @TRACE, align 4
  %22 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %11, align 8
  %25 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.brcmf_if*, %struct.brcmf_if** %12, align 8
  %27 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = call i32 @check_vif_up(%struct.TYPE_4__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* @INFO, align 4
  %33 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %32, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  br label %82

34:                                               ; preds = %4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @PM_FAST, align 4
  br label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @PM_OFF, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %9, align 4
  %43 = load %struct.brcmf_if*, %struct.brcmf_if** %12, align 8
  %44 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @NL80211_IFTYPE_P2P_CLIENT, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load i32, i32* @INFO, align 4
  %53 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %52, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* @PM_OFF, align 4
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %51, %41
  %56 = load i32, i32* @INFO, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %61 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %60)
  %62 = load %struct.brcmf_if*, %struct.brcmf_if** %12, align 8
  %63 = load i32, i32* @BRCMF_C_SET_PM, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @brcmf_fil_cmd_int_set(%struct.brcmf_if* %62, i32 %63, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %55
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.brcmf_pub*, %struct.brcmf_pub** %13, align 8
  %75 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %80

76:                                               ; preds = %68
  %77 = load %struct.brcmf_pub*, %struct.brcmf_pub** %13, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %76, %73
  br label %81

81:                                               ; preds = %80, %55
  br label %82

82:                                               ; preds = %81, %31
  %83 = load i32, i32* @TRACE, align 4
  %84 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %85 = load i32, i32* %10, align 4
  ret i32 %85
}

declare dso_local %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy*) #1

declare dso_local %struct.brcmf_if* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i32 @check_vif_up(%struct.TYPE_4__*) #1

declare dso_local i32 @brcmf_fil_cmd_int_set(%struct.brcmf_if*, i32, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
