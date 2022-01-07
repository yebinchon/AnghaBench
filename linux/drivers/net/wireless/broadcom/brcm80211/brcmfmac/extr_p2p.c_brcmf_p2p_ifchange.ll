; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_ifchange.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_ifchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_info = type { %struct.brcmf_pub*, %struct.brcmf_p2p_info }
%struct.brcmf_pub = type { i32 }
%struct.brcmf_p2p_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.brcmf_cfg80211_vif* }
%struct.brcmf_cfg80211_vif = type { i32 }
%struct.brcmf_fil_p2p_if_le = type { i32, i8*, i8* }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@P2PAPI_BSSCFG_PRIMARY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"vif for P2PAPI_BSSCFG_PRIMARY does not exist\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@P2PAPI_BSSCFG_CONNECTION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"vif for P2PAPI_BSSCFG_CONNECTION does not exist\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"p2p_ifupd\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"p2p_ifupd FAILED, err=%d\0A\00", align 1
@BRCMF_E_IF_CHANGE = common dso_local global i32 0, align 4
@BRCMF_VIF_EVENT_TIMEOUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"No BRCMF_E_IF_CHANGE event received\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@BRCMF_C_SET_SCB_TIMEOUT = common dso_local global i32 0, align 4
@BRCMF_SCB_TIMEOUT_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcmf_p2p_ifchange(%struct.brcmf_cfg80211_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcmf_cfg80211_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcmf_p2p_info*, align 8
  %7 = alloca %struct.brcmf_pub*, align 8
  %8 = alloca %struct.brcmf_cfg80211_vif*, align 8
  %9 = alloca %struct.brcmf_fil_p2p_if_le, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.brcmf_cfg80211_info* %0, %struct.brcmf_cfg80211_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %13 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %12, i32 0, i32 1
  store %struct.brcmf_p2p_info* %13, %struct.brcmf_p2p_info** %6, align 8
  %14 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %15 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %14, i32 0, i32 0
  %16 = load %struct.brcmf_pub*, %struct.brcmf_pub** %15, align 8
  store %struct.brcmf_pub* %16, %struct.brcmf_pub** %7, align 8
  %17 = load i32, i32* @TRACE, align 4
  %18 = call i32 @brcmf_dbg(i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %6, align 8
  %20 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i64, i64* @P2PAPI_BSSCFG_PRIMARY, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %24, align 8
  store %struct.brcmf_cfg80211_vif* %25, %struct.brcmf_cfg80211_vif** %8, align 8
  %26 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %8, align 8
  %27 = icmp ne %struct.brcmf_cfg80211_vif* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %2
  %29 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %30 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %29, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EPERM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %110

33:                                               ; preds = %2
  %34 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %35 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %8, align 8
  %36 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @brcmf_notify_escan_complete(%struct.brcmf_cfg80211_info* %34, i32 %37, i32 1, i32 1)
  %39 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %6, align 8
  %40 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i64, i64* @P2PAPI_BSSCFG_CONNECTION, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %44, align 8
  store %struct.brcmf_cfg80211_vif* %45, %struct.brcmf_cfg80211_vif** %8, align 8
  %46 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %8, align 8
  %47 = icmp ne %struct.brcmf_cfg80211_vif* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %33
  %49 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %50 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %49, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @EPERM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %110

53:                                               ; preds = %33
  %54 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %8, align 8
  %55 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @brcmf_set_mpc(i32 %56, i32 0)
  %58 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %6, align 8
  %59 = call i32 @brcmf_p2p_get_current_chanspec(%struct.brcmf_p2p_info* %58, i32* %11)
  %60 = load i32, i32* %5, align 4
  %61 = call i8* @cpu_to_le16(i32 %60)
  %62 = getelementptr inbounds %struct.brcmf_fil_p2p_if_le, %struct.brcmf_fil_p2p_if_le* %9, i32 0, i32 2
  store i8* %61, i8** %62, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i8* @cpu_to_le16(i32 %63)
  %65 = getelementptr inbounds %struct.brcmf_fil_p2p_if_le, %struct.brcmf_fil_p2p_if_le* %9, i32 0, i32 1
  store i8* %64, i8** %65, align 8
  %66 = getelementptr inbounds %struct.brcmf_fil_p2p_if_le, %struct.brcmf_fil_p2p_if_le* %9, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %6, align 8
  %69 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @memcpy(i32 %67, i32 %70, i32 4)
  %72 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %73 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %8, align 8
  %74 = call i32 @brcmf_cfg80211_arm_vif_event(%struct.brcmf_cfg80211_info* %72, %struct.brcmf_cfg80211_vif* %73)
  %75 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %8, align 8
  %76 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @brcmf_fil_iovar_data_set(i32 %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %struct.brcmf_fil_p2p_if_le* %9, i32 24)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %53
  %82 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  %85 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %86 = call i32 @brcmf_cfg80211_arm_vif_event(%struct.brcmf_cfg80211_info* %85, %struct.brcmf_cfg80211_vif* null)
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %3, align 4
  br label %110

88:                                               ; preds = %53
  %89 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %90 = load i32, i32* @BRCMF_E_IF_CHANGE, align 4
  %91 = load i32, i32* @BRCMF_VIF_EVENT_TIMEOUT, align 4
  %92 = call i32 @brcmf_cfg80211_wait_vif_event(%struct.brcmf_cfg80211_info* %89, i32 %90, i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %94 = call i32 @brcmf_cfg80211_arm_vif_event(%struct.brcmf_cfg80211_info* %93, %struct.brcmf_cfg80211_vif* null)
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %88
  %98 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %99 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %98, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %100 = load i32, i32* @EIO, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %110

102:                                              ; preds = %88
  %103 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %8, align 8
  %104 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @BRCMF_C_SET_SCB_TIMEOUT, align 4
  %107 = load i32, i32* @BRCMF_SCB_TIMEOUT_VALUE, align 4
  %108 = call i32 @brcmf_fil_cmd_int_set(i32 %105, i32 %106, i32 %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %102, %97, %81, %48, %28
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, ...) #1

declare dso_local i32 @brcmf_notify_escan_complete(%struct.brcmf_cfg80211_info*, i32, i32, i32) #1

declare dso_local i32 @brcmf_set_mpc(i32, i32) #1

declare dso_local i32 @brcmf_p2p_get_current_chanspec(%struct.brcmf_p2p_info*, i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @brcmf_cfg80211_arm_vif_event(%struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_vif*) #1

declare dso_local i32 @brcmf_fil_iovar_data_set(i32, i8*, %struct.brcmf_fil_p2p_if_le*, i32) #1

declare dso_local i32 @brcmf_cfg80211_wait_vif_event(%struct.brcmf_cfg80211_info*, i32, i32) #1

declare dso_local i32 @brcmf_fil_cmd_int_set(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
