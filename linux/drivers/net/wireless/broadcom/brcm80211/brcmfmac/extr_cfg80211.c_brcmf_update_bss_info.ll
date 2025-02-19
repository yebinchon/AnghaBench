; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_update_bss_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_update_bss_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_info = type { i64, %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }
%struct.brcmf_if = type { i32 }
%struct.brcmf_bss_info_le = type { i32, i32 }
%struct.brcmf_tlv = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@WL_EXTRA_BUF_MAX = common dso_local global i32 0, align 4
@BRCMF_C_GET_BSS_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Could not get bss info %d\0A\00", align 1
@WLAN_EID_TIM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"dtim_assoc\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"wl dtim_assoc failed (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Exit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.brcmf_cfg80211_info*, %struct.brcmf_if*)* @brcmf_update_bss_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @brcmf_update_bss_info(%struct.brcmf_cfg80211_info* %0, %struct.brcmf_if* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.brcmf_cfg80211_info*, align 8
  %5 = alloca %struct.brcmf_if*, align 8
  %6 = alloca %struct.brcmf_pub*, align 8
  %7 = alloca %struct.brcmf_bss_info_le*, align 8
  %8 = alloca %struct.brcmf_tlv*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.brcmf_cfg80211_info* %0, %struct.brcmf_cfg80211_info** %4, align 8
  store %struct.brcmf_if* %1, %struct.brcmf_if** %5, align 8
  %13 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %14 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %13, i32 0, i32 1
  %15 = load %struct.brcmf_pub*, %struct.brcmf_pub** %14, align 8
  store %struct.brcmf_pub* %15, %struct.brcmf_pub** %6, align 8
  store i64 0, i64* %11, align 8
  %16 = load i32, i32* @TRACE, align 4
  %17 = call i32 @brcmf_dbg(i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %19 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @brcmf_is_ibssmode(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i64, i64* %11, align 8
  store i64 %24, i64* %3, align 8
  br label %91

25:                                               ; preds = %2
  %26 = load i32, i32* @WL_EXTRA_BUF_MAX, align 4
  %27 = call i32 @cpu_to_le32(i32 %26)
  %28 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %29 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  store i32 %27, i32* %31, align 4
  %32 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %33 = load i32, i32* @BRCMF_C_GET_BSS_INFO, align 4
  %34 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %35 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @WL_EXTRA_BUF_MAX, align 4
  %38 = call i64 @brcmf_fil_cmd_data_get(%struct.brcmf_if* %32, i32 %33, i64 %36, i32 %37)
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %11, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %25
  %42 = load %struct.brcmf_pub*, %struct.brcmf_pub** %6, align 8
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @bphy_err(%struct.brcmf_pub* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  br label %87

45:                                               ; preds = %25
  %46 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %47 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 4
  %50 = inttoptr i64 %49 to %struct.brcmf_bss_info_le*
  store %struct.brcmf_bss_info_le* %50, %struct.brcmf_bss_info_le** %7, align 8
  %51 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %52 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %7, align 8
  %53 = call i64 @brcmf_inform_single_bss(%struct.brcmf_cfg80211_info* %51, %struct.brcmf_bss_info_le* %52)
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* %11, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %87

57:                                               ; preds = %45
  %58 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %7, align 8
  %59 = bitcast %struct.brcmf_bss_info_le* %58 to i32*
  %60 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %7, align 8
  %61 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le16_to_cpu(i32 %62)
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %59, i64 %64
  store i32* %65, i32** %10, align 8
  %66 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %7, align 8
  %67 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @le32_to_cpu(i32 %68)
  store i64 %69, i64* %9, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i32, i32* @WLAN_EID_TIM, align 4
  %73 = call %struct.brcmf_tlv* @brcmf_parse_tlvs(i32* %70, i64 %71, i32 %72)
  store %struct.brcmf_tlv* %73, %struct.brcmf_tlv** %8, align 8
  %74 = load %struct.brcmf_tlv*, %struct.brcmf_tlv** %8, align 8
  %75 = icmp ne %struct.brcmf_tlv* %74, null
  br i1 %75, label %86, label %76

76:                                               ; preds = %57
  %77 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %78 = call i64 @brcmf_fil_iovar_int_get(%struct.brcmf_if* %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %12)
  store i64 %78, i64* %11, align 8
  %79 = load i64, i64* %11, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load %struct.brcmf_pub*, %struct.brcmf_pub** %6, align 8
  %83 = load i64, i64* %11, align 8
  %84 = call i32 @bphy_err(%struct.brcmf_pub* %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %83)
  br label %87

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85, %57
  br label %87

87:                                               ; preds = %86, %81, %56, %41
  %88 = load i32, i32* @TRACE, align 4
  %89 = call i32 @brcmf_dbg(i32 %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %90 = load i64, i64* %11, align 8
  store i64 %90, i64* %3, align 8
  br label %91

91:                                               ; preds = %87, %23
  %92 = load i64, i64* %3, align 8
  ret i64 %92
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i64 @brcmf_is_ibssmode(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @brcmf_fil_cmd_data_get(%struct.brcmf_if*, i32, i64, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i64) #1

declare dso_local i64 @brcmf_inform_single_bss(%struct.brcmf_cfg80211_info*, %struct.brcmf_bss_info_le*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.brcmf_tlv* @brcmf_parse_tlvs(i32*, i64, i32) #1

declare dso_local i64 @brcmf_fil_iovar_int_get(%struct.brcmf_if*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
