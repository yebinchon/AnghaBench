; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_ap_add_vif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_ap_add_vif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { i32 }
%struct.wiphy = type { i32 }
%struct.vif_params = type { i32 }
%struct.brcmf_cfg80211_info = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }
%struct.brcmf_if = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { %struct.wireless_dev }
%struct.TYPE_4__ = type { i32 }
%struct.brcmf_cfg80211_vif = type { %struct.brcmf_if* }

@EBUSY = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Adding vif \22%s\22\0A\00", align 1
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@BRCMF_E_IF_ADD = common dso_local global i32 0, align 4
@BRCMF_VIF_EVENT_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"timeout occurred\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"no if pointer provided\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Registering netdevice failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wireless_dev* (%struct.wiphy*, i8*, %struct.vif_params*)* @brcmf_ap_add_vif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wireless_dev* @brcmf_ap_add_vif(%struct.wiphy* %0, i8* %1, %struct.vif_params* %2) #0 {
  %4 = alloca %struct.wireless_dev*, align 8
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.vif_params*, align 8
  %8 = alloca %struct.brcmf_cfg80211_info*, align 8
  %9 = alloca %struct.brcmf_if*, align 8
  %10 = alloca %struct.brcmf_pub*, align 8
  %11 = alloca %struct.brcmf_cfg80211_vif*, align 8
  %12 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.vif_params* %2, %struct.vif_params** %7, align 8
  %13 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %14 = call %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy* %13)
  store %struct.brcmf_cfg80211_info* %14, %struct.brcmf_cfg80211_info** %8, align 8
  %15 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %8, align 8
  %16 = call i32 @cfg_to_ndev(%struct.brcmf_cfg80211_info* %15)
  %17 = call %struct.brcmf_if* @netdev_priv(i32 %16)
  store %struct.brcmf_if* %17, %struct.brcmf_if** %9, align 8
  %18 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %8, align 8
  %19 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %18, i32 0, i32 0
  %20 = load %struct.brcmf_pub*, %struct.brcmf_pub** %19, align 8
  store %struct.brcmf_pub* %20, %struct.brcmf_pub** %10, align 8
  %21 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %8, align 8
  %22 = call i64 @brcmf_cfg80211_vif_event_armed(%struct.brcmf_cfg80211_info* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.wireless_dev* @ERR_PTR(i32 %26)
  store %struct.wireless_dev* %27, %struct.wireless_dev** %4, align 8
  br label %106

28:                                               ; preds = %3
  %29 = load i32, i32* @INFO, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @brcmf_dbg(i32 %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %8, align 8
  %33 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %34 = call %struct.brcmf_cfg80211_vif* @brcmf_alloc_vif(%struct.brcmf_cfg80211_info* %32, i32 %33)
  store %struct.brcmf_cfg80211_vif* %34, %struct.brcmf_cfg80211_vif** %11, align 8
  %35 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %11, align 8
  %36 = call i64 @IS_ERR(%struct.brcmf_cfg80211_vif* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %11, align 8
  %40 = bitcast %struct.brcmf_cfg80211_vif* %39 to %struct.wireless_dev*
  store %struct.wireless_dev* %40, %struct.wireless_dev** %4, align 8
  br label %106

41:                                               ; preds = %28
  %42 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %8, align 8
  %43 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %11, align 8
  %44 = call i32 @brcmf_cfg80211_arm_vif_event(%struct.brcmf_cfg80211_info* %42, %struct.brcmf_cfg80211_vif* %43)
  %45 = load %struct.brcmf_if*, %struct.brcmf_if** %9, align 8
  %46 = call i32 @brcmf_cfg80211_request_ap_if(%struct.brcmf_if* %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %8, align 8
  %51 = call i32 @brcmf_cfg80211_arm_vif_event(%struct.brcmf_cfg80211_info* %50, %struct.brcmf_cfg80211_vif* null)
  br label %101

52:                                               ; preds = %41
  %53 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %8, align 8
  %54 = load i32, i32* @BRCMF_E_IF_ADD, align 4
  %55 = load i32, i32* @BRCMF_VIF_EVENT_TIMEOUT, align 4
  %56 = call i32 @brcmf_cfg80211_wait_vif_event(%struct.brcmf_cfg80211_info* %53, i32 %54, i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %8, align 8
  %58 = call i32 @brcmf_cfg80211_arm_vif_event(%struct.brcmf_cfg80211_info* %57, %struct.brcmf_cfg80211_vif* null)
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %52
  %62 = load %struct.brcmf_pub*, %struct.brcmf_pub** %10, align 8
  %63 = call i32 @bphy_err(%struct.brcmf_pub* %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %12, align 4
  br label %101

66:                                               ; preds = %52
  %67 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %11, align 8
  %68 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %67, i32 0, i32 0
  %69 = load %struct.brcmf_if*, %struct.brcmf_if** %68, align 8
  store %struct.brcmf_if* %69, %struct.brcmf_if** %9, align 8
  %70 = load %struct.brcmf_if*, %struct.brcmf_if** %9, align 8
  %71 = icmp ne %struct.brcmf_if* %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %66
  %73 = load %struct.brcmf_pub*, %struct.brcmf_pub** %10, align 8
  %74 = call i32 @bphy_err(%struct.brcmf_pub* %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* @ENOENT, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %12, align 4
  br label %101

77:                                               ; preds = %66
  %78 = load %struct.brcmf_if*, %struct.brcmf_if** %9, align 8
  %79 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 @strncpy(i32 %82, i8* %83, i32 3)
  %85 = load %struct.brcmf_if*, %struct.brcmf_if** %9, align 8
  %86 = call i32 @brcmf_net_attach(%struct.brcmf_if* %85, i32 1)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %77
  %90 = load %struct.brcmf_pub*, %struct.brcmf_pub** %10, align 8
  %91 = call i32 @bphy_err(%struct.brcmf_pub* %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %92 = load %struct.brcmf_if*, %struct.brcmf_if** %9, align 8
  %93 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = call i32 @free_netdev(%struct.TYPE_4__* %94)
  br label %101

96:                                               ; preds = %77
  %97 = load %struct.brcmf_if*, %struct.brcmf_if** %9, align 8
  %98 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %97, i32 0, i32 0
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store %struct.wireless_dev* %100, %struct.wireless_dev** %4, align 8
  br label %106

101:                                              ; preds = %89, %72, %61, %49
  %102 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %11, align 8
  %103 = call i32 @brcmf_free_vif(%struct.brcmf_cfg80211_vif* %102)
  %104 = load i32, i32* %12, align 4
  %105 = call %struct.wireless_dev* @ERR_PTR(i32 %104)
  store %struct.wireless_dev* %105, %struct.wireless_dev** %4, align 8
  br label %106

106:                                              ; preds = %101, %96, %38, %24
  %107 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  ret %struct.wireless_dev* %107
}

declare dso_local %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy*) #1

declare dso_local %struct.brcmf_if* @netdev_priv(i32) #1

declare dso_local i32 @cfg_to_ndev(%struct.brcmf_cfg80211_info*) #1

declare dso_local i64 @brcmf_cfg80211_vif_event_armed(%struct.brcmf_cfg80211_info*) #1

declare dso_local %struct.wireless_dev* @ERR_PTR(i32) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i8*) #1

declare dso_local %struct.brcmf_cfg80211_vif* @brcmf_alloc_vif(%struct.brcmf_cfg80211_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.brcmf_cfg80211_vif*) #1

declare dso_local i32 @brcmf_cfg80211_arm_vif_event(%struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_vif*) #1

declare dso_local i32 @brcmf_cfg80211_request_ap_if(%struct.brcmf_if*) #1

declare dso_local i32 @brcmf_cfg80211_wait_vif_event(%struct.brcmf_cfg80211_info*, i32, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @brcmf_net_attach(%struct.brcmf_if*, i32) #1

declare dso_local i32 @free_netdev(%struct.TYPE_4__*) #1

declare dso_local i32 @brcmf_free_vif(%struct.brcmf_cfg80211_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
