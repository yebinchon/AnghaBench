; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_add_vif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_add_vif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { i32 }
%struct.wiphy = type { i32 }
%struct.vif_params = type { i32 }
%struct.brcmf_cfg80211_info = type { %struct.TYPE_9__, %struct.brcmf_pub* }
%struct.TYPE_9__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.brcmf_cfg80211_vif* }
%struct.brcmf_cfg80211_vif = type { %struct.brcmf_if* }
%struct.brcmf_if = type { %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.wireless_dev }
%struct.TYPE_8__ = type { i8, i32 }
%struct.brcmf_pub = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"adding vif \22%s\22 (type=%d)\0A\00", align 1
@BRCMF_FIL_P2P_IF_CLIENT = common dso_local global i32 0, align 4
@BRCMF_FIL_P2P_IF_GO = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@BRCMF_E_IF_ADD = common dso_local global i32 0, align 4
@BRCMF_VIF_EVENT_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"timeout occurred\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"no if pointer provided\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Registering netdevice failed\0A\00", align 1
@P2PAPI_BSSCFG_CONNECTION = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"roam_off\00", align 1
@BRCMF_C_SET_SCB_TIMEOUT = common dso_local global i32 0, align 4
@BRCMF_SCB_TIMEOUT_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wireless_dev* @brcmf_p2p_add_vif(%struct.wiphy* %0, i8* %1, i8 zeroext %2, i32 %3, %struct.vif_params* %4) #0 {
  %6 = alloca %struct.wireless_dev*, align 8
  %7 = alloca %struct.wiphy*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca %struct.vif_params*, align 8
  %12 = alloca %struct.brcmf_cfg80211_info*, align 8
  %13 = alloca %struct.brcmf_if*, align 8
  %14 = alloca %struct.brcmf_pub*, align 8
  %15 = alloca %struct.brcmf_cfg80211_vif*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8 %2, i8* %9, align 1
  store i32 %3, i32* %10, align 4
  store %struct.vif_params* %4, %struct.vif_params** %11, align 8
  %18 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %19 = call %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy* %18)
  store %struct.brcmf_cfg80211_info* %19, %struct.brcmf_cfg80211_info** %12, align 8
  %20 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %12, align 8
  %21 = call i32 @cfg_to_ndev(%struct.brcmf_cfg80211_info* %20)
  %22 = call %struct.brcmf_if* @netdev_priv(i32 %21)
  store %struct.brcmf_if* %22, %struct.brcmf_if** %13, align 8
  %23 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %12, align 8
  %24 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %23, i32 0, i32 1
  %25 = load %struct.brcmf_pub*, %struct.brcmf_pub** %24, align 8
  store %struct.brcmf_pub* %25, %struct.brcmf_pub** %14, align 8
  %26 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %12, align 8
  %27 = call i64 @brcmf_cfg80211_vif_event_armed(%struct.brcmf_cfg80211_info* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %5
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.wireless_dev* @ERR_PTR(i32 %31)
  store %struct.wireless_dev* %32, %struct.wireless_dev** %6, align 8
  br label %161

33:                                               ; preds = %5
  %34 = load i32, i32* @INFO, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @brcmf_dbg(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %35, i32 %36)
  %38 = load i32, i32* %10, align 4
  switch i32 %38, label %51 [
    i32 130, label %39
    i32 128, label %41
    i32 129, label %43
  ]

39:                                               ; preds = %33
  %40 = load i32, i32* @BRCMF_FIL_P2P_IF_CLIENT, align 4
  store i32 %40, i32* %16, align 4
  br label %55

41:                                               ; preds = %33
  %42 = load i32, i32* @BRCMF_FIL_P2P_IF_GO, align 4
  store i32 %42, i32* %16, align 4
  br label %55

43:                                               ; preds = %33
  %44 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %12, align 8
  %45 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %44, i32 0, i32 0
  %46 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %47 = load %struct.vif_params*, %struct.vif_params** %11, align 8
  %48 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.wireless_dev* @brcmf_p2p_create_p2pdev(%struct.TYPE_9__* %45, %struct.wiphy* %46, i32 %49)
  store %struct.wireless_dev* %50, %struct.wireless_dev** %6, align 8
  br label %161

51:                                               ; preds = %33
  %52 = load i32, i32* @EOPNOTSUPP, align 4
  %53 = sub nsw i32 0, %52
  %54 = call %struct.wireless_dev* @ERR_PTR(i32 %53)
  store %struct.wireless_dev* %54, %struct.wireless_dev** %6, align 8
  br label %161

55:                                               ; preds = %41, %39
  %56 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %12, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call %struct.brcmf_cfg80211_vif* @brcmf_alloc_vif(%struct.brcmf_cfg80211_info* %56, i32 %57)
  store %struct.brcmf_cfg80211_vif* %58, %struct.brcmf_cfg80211_vif** %15, align 8
  %59 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %15, align 8
  %60 = call i64 @IS_ERR(%struct.brcmf_cfg80211_vif* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %15, align 8
  %64 = bitcast %struct.brcmf_cfg80211_vif* %63 to %struct.wireless_dev*
  store %struct.wireless_dev* %64, %struct.wireless_dev** %6, align 8
  br label %161

65:                                               ; preds = %55
  %66 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %12, align 8
  %67 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %15, align 8
  %68 = call i32 @brcmf_cfg80211_arm_vif_event(%struct.brcmf_cfg80211_info* %66, %struct.brcmf_cfg80211_vif* %67)
  %69 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %12, align 8
  %70 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %69, i32 0, i32 0
  %71 = load %struct.brcmf_if*, %struct.brcmf_if** %13, align 8
  %72 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %12, align 8
  %73 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @brcmf_p2p_request_p2p_if(%struct.TYPE_9__* %70, %struct.brcmf_if* %71, i32 %75, i32 %76)
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %17, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %65
  %81 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %12, align 8
  %82 = call i32 @brcmf_cfg80211_arm_vif_event(%struct.brcmf_cfg80211_info* %81, %struct.brcmf_cfg80211_vif* null)
  br label %156

83:                                               ; preds = %65
  %84 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %12, align 8
  %85 = load i32, i32* @BRCMF_E_IF_ADD, align 4
  %86 = load i32, i32* @BRCMF_VIF_EVENT_TIMEOUT, align 4
  %87 = call i32 @brcmf_cfg80211_wait_vif_event(%struct.brcmf_cfg80211_info* %84, i32 %85, i32 %86)
  store i32 %87, i32* %17, align 4
  %88 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %12, align 8
  %89 = call i32 @brcmf_cfg80211_arm_vif_event(%struct.brcmf_cfg80211_info* %88, %struct.brcmf_cfg80211_vif* null)
  %90 = load i32, i32* %17, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %83
  %93 = load %struct.brcmf_pub*, %struct.brcmf_pub** %14, align 8
  %94 = call i32 @bphy_err(%struct.brcmf_pub* %93, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %17, align 4
  br label %156

97:                                               ; preds = %83
  %98 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %15, align 8
  %99 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %98, i32 0, i32 0
  %100 = load %struct.brcmf_if*, %struct.brcmf_if** %99, align 8
  store %struct.brcmf_if* %100, %struct.brcmf_if** %13, align 8
  %101 = load %struct.brcmf_if*, %struct.brcmf_if** %13, align 8
  %102 = icmp ne %struct.brcmf_if* %101, null
  br i1 %102, label %108, label %103

103:                                              ; preds = %97
  %104 = load %struct.brcmf_pub*, %struct.brcmf_pub** %14, align 8
  %105 = call i32 @bphy_err(%struct.brcmf_pub* %104, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %106 = load i32, i32* @ENOENT, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %17, align 4
  br label %156

108:                                              ; preds = %97
  %109 = load %struct.brcmf_if*, %struct.brcmf_if** %13, align 8
  %110 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %109, i32 0, i32 1
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i8*, i8** %8, align 8
  %115 = call i32 @strncpy(i32 %113, i8* %114, i32 3)
  %116 = load i8, i8* %9, align 1
  %117 = load %struct.brcmf_if*, %struct.brcmf_if** %13, align 8
  %118 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %117, i32 0, i32 1
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  store i8 %116, i8* %120, align 4
  %121 = load %struct.brcmf_if*, %struct.brcmf_if** %13, align 8
  %122 = call i32 @brcmf_net_attach(%struct.brcmf_if* %121, i32 1)
  store i32 %122, i32* %17, align 4
  %123 = load i32, i32* %17, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %108
  %126 = load %struct.brcmf_pub*, %struct.brcmf_pub** %14, align 8
  %127 = call i32 @bphy_err(%struct.brcmf_pub* %126, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %128 = load %struct.brcmf_if*, %struct.brcmf_if** %13, align 8
  %129 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %128, i32 0, i32 1
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = call i32 @free_netdev(%struct.TYPE_8__* %130)
  br label %156

132:                                              ; preds = %108
  %133 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %15, align 8
  %134 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %12, align 8
  %135 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = load i64, i64* @P2PAPI_BSSCFG_CONNECTION, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  store %struct.brcmf_cfg80211_vif* %133, %struct.brcmf_cfg80211_vif** %140, align 8
  %141 = load %struct.brcmf_if*, %struct.brcmf_if** %13, align 8
  %142 = call i32 @brcmf_fil_iovar_int_set(%struct.brcmf_if* %141, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* @BRCMF_FIL_P2P_IF_GO, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %132
  %147 = load %struct.brcmf_if*, %struct.brcmf_if** %13, align 8
  %148 = load i32, i32* @BRCMF_C_SET_SCB_TIMEOUT, align 4
  %149 = load i32, i32* @BRCMF_SCB_TIMEOUT_VALUE, align 4
  %150 = call i32 @brcmf_fil_cmd_int_set(%struct.brcmf_if* %147, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %146, %132
  %152 = load %struct.brcmf_if*, %struct.brcmf_if** %13, align 8
  %153 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %152, i32 0, i32 0
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  store %struct.wireless_dev* %155, %struct.wireless_dev** %6, align 8
  br label %161

156:                                              ; preds = %125, %103, %92, %80
  %157 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %15, align 8
  %158 = call i32 @brcmf_free_vif(%struct.brcmf_cfg80211_vif* %157)
  %159 = load i32, i32* %17, align 4
  %160 = call %struct.wireless_dev* @ERR_PTR(i32 %159)
  store %struct.wireless_dev* %160, %struct.wireless_dev** %6, align 8
  br label %161

161:                                              ; preds = %156, %151, %62, %51, %43, %29
  %162 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  ret %struct.wireless_dev* %162
}

declare dso_local %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy*) #1

declare dso_local %struct.brcmf_if* @netdev_priv(i32) #1

declare dso_local i32 @cfg_to_ndev(%struct.brcmf_cfg80211_info*) #1

declare dso_local i64 @brcmf_cfg80211_vif_event_armed(%struct.brcmf_cfg80211_info*) #1

declare dso_local %struct.wireless_dev* @ERR_PTR(i32) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i8*, i32) #1

declare dso_local %struct.wireless_dev* @brcmf_p2p_create_p2pdev(%struct.TYPE_9__*, %struct.wiphy*, i32) #1

declare dso_local %struct.brcmf_cfg80211_vif* @brcmf_alloc_vif(%struct.brcmf_cfg80211_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.brcmf_cfg80211_vif*) #1

declare dso_local i32 @brcmf_cfg80211_arm_vif_event(%struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_vif*) #1

declare dso_local i32 @brcmf_p2p_request_p2p_if(%struct.TYPE_9__*, %struct.brcmf_if*, i32, i32) #1

declare dso_local i32 @brcmf_cfg80211_wait_vif_event(%struct.brcmf_cfg80211_info*, i32, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @brcmf_net_attach(%struct.brcmf_if*, i32) #1

declare dso_local i32 @free_netdev(%struct.TYPE_8__*) #1

declare dso_local i32 @brcmf_fil_iovar_int_set(%struct.brcmf_if*, i8*, i32) #1

declare dso_local i32 @brcmf_fil_cmd_int_set(%struct.brcmf_if*, i32, i32) #1

declare dso_local i32 @brcmf_free_vif(%struct.brcmf_cfg80211_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
