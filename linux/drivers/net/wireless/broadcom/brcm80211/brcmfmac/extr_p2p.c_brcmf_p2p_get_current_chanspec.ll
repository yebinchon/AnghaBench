; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_get_current_chanspec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_get_current_chanspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_p2p_info = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.brcmu_chan*)* }
%struct.brcmu_chan = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.brcmf_if* }
%struct.brcmf_if = type { i32 }
%struct.brcmf_bss_info_le = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@P2PAPI_BSSCFG_PRIMARY = common dso_local global i64 0, align 8
@BRCMF_C_GET_BSSID = common dso_local global i32 0, align 4
@WL_BSS_INFO_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@BRCMF_C_GET_BSS_INFO = common dso_local global i32 0, align 4
@BRCMF_P2P_TEMP_CHAN = common dso_local global i32 0, align 4
@BRCMU_CHAN_BW_20 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_p2p_info*, i32*)* @brcmf_p2p_get_current_chanspec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_p2p_get_current_chanspec(%struct.brcmf_p2p_info* %0, i32* %1) #0 {
  %3 = alloca %struct.brcmf_p2p_info*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.brcmf_if*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.brcmu_chan, align 4
  %9 = alloca %struct.brcmf_bss_info_le*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.brcmf_p2p_info* %0, %struct.brcmf_p2p_info** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load i32, i32* @ETH_ALEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %17 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = load i64, i64* @P2PAPI_BSSCFG_PRIMARY, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.brcmf_if*, %struct.brcmf_if** %23, align 8
  store %struct.brcmf_if* %24, %struct.brcmf_if** %5, align 8
  %25 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %26 = load i32, i32* @BRCMF_C_GET_BSSID, align 4
  %27 = load i32, i32* @ETH_ALEN, align 4
  %28 = call i64 @brcmf_fil_cmd_data_get(%struct.brcmf_if* %25, i32 %26, i32* %15, i32 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %61

30:                                               ; preds = %2
  %31 = load i32, i32* @WL_BSS_INFO_MAX, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32* @kzalloc(i32 %31, i32 %32)
  store i32* %33, i32** %10, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %60

36:                                               ; preds = %30
  %37 = load i32, i32* @WL_BSS_INFO_MAX, align 4
  %38 = call i32 @cpu_to_le32(i32 %37)
  %39 = load i32*, i32** %10, align 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %41 = load i32, i32* @BRCMF_C_GET_BSS_INFO, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* @WL_BSS_INFO_MAX, align 4
  %44 = call i64 @brcmf_fil_cmd_data_get(%struct.brcmf_if* %40, i32 %41, i32* %42, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %36
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  %49 = bitcast i32* %48 to %struct.brcmf_bss_info_le*
  store %struct.brcmf_bss_info_le* %49, %struct.brcmf_bss_info_le** %9, align 8
  %50 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %9, align 8
  %51 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le16_to_cpu(i32 %52)
  %54 = load i32*, i32** %4, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @kfree(i32* %55)
  store i32 1, i32* %11, align 4
  br label %76

57:                                               ; preds = %36
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @kfree(i32* %58)
  br label %60

60:                                               ; preds = %57, %30
  br label %61

61:                                               ; preds = %60, %2
  %62 = load i32, i32* @BRCMF_P2P_TEMP_CHAN, align 4
  %63 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %8, i32 0, i32 2
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* @BRCMU_CHAN_BW_20, align 4
  %65 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %8, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %67 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32 (%struct.brcmu_chan*)*, i32 (%struct.brcmu_chan*)** %70, align 8
  %72 = call i32 %71(%struct.brcmu_chan* %8)
  %73 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %8, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %4, align 8
  store i32 %74, i32* %75, align 4
  store i32 0, i32* %11, align 4
  br label %76

76:                                               ; preds = %61, %46
  %77 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %11, align 4
  switch i32 %78, label %80 [
    i32 0, label %79
    i32 1, label %79
  ]

79:                                               ; preds = %76, %76
  ret void

80:                                               ; preds = %76
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @brcmf_fil_cmd_data_get(%struct.brcmf_if*, i32, i32*, i32) #2

declare dso_local i32* @kzalloc(i32, i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @kfree(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
