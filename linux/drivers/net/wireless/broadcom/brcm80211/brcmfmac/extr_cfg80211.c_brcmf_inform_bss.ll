; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_inform_bss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_inform_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_info = type { %struct.TYPE_2__, %struct.brcmf_pub* }
%struct.TYPE_2__ = type { i64 }
%struct.brcmf_pub = type { i32 }
%struct.brcmf_scan_results = type { i32, i64 }
%struct.brcmf_bss_info_le = type { i32 }

@BRCMF_BSS_INFO_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Version %d != WL_BSS_INFO_VERSION\0A\00", align 1
@EOPNOTSUPP = common dso_local global i64 0, align 8
@SCAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"scanned AP count (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.brcmf_cfg80211_info*)* @brcmf_inform_bss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @brcmf_inform_bss(%struct.brcmf_cfg80211_info* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.brcmf_cfg80211_info*, align 8
  %4 = alloca %struct.brcmf_pub*, align 8
  %5 = alloca %struct.brcmf_scan_results*, align 8
  %6 = alloca %struct.brcmf_bss_info_le*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.brcmf_cfg80211_info* %0, %struct.brcmf_cfg80211_info** %3, align 8
  %9 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %10 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %9, i32 0, i32 1
  %11 = load %struct.brcmf_pub*, %struct.brcmf_pub** %10, align 8
  store %struct.brcmf_pub* %11, %struct.brcmf_pub** %4, align 8
  store %struct.brcmf_bss_info_le* null, %struct.brcmf_bss_info_le** %6, align 8
  store i64 0, i64* %7, align 8
  %12 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %13 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.brcmf_scan_results*
  store %struct.brcmf_scan_results* %16, %struct.brcmf_scan_results** %5, align 8
  %17 = load %struct.brcmf_scan_results*, %struct.brcmf_scan_results** %5, align 8
  %18 = getelementptr inbounds %struct.brcmf_scan_results, %struct.brcmf_scan_results* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %1
  %22 = load %struct.brcmf_scan_results*, %struct.brcmf_scan_results** %5, align 8
  %23 = getelementptr inbounds %struct.brcmf_scan_results, %struct.brcmf_scan_results* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BRCMF_BSS_INFO_VERSION, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %29 = load %struct.brcmf_scan_results*, %struct.brcmf_scan_results** %5, align 8
  %30 = getelementptr inbounds %struct.brcmf_scan_results, %struct.brcmf_scan_results* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @bphy_err(%struct.brcmf_pub* %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i64, i64* @EOPNOTSUPP, align 8
  %34 = sub nsw i64 0, %33
  store i64 %34, i64* %2, align 8
  br label %63

35:                                               ; preds = %21, %1
  %36 = load i32, i32* @SCAN, align 4
  %37 = load %struct.brcmf_scan_results*, %struct.brcmf_scan_results** %5, align 8
  %38 = getelementptr inbounds %struct.brcmf_scan_results, %struct.brcmf_scan_results* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @brcmf_dbg(i32 %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %58, %35
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.brcmf_scan_results*, %struct.brcmf_scan_results** %5, align 8
  %44 = getelementptr inbounds %struct.brcmf_scan_results, %struct.brcmf_scan_results* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %41
  %48 = load %struct.brcmf_scan_results*, %struct.brcmf_scan_results** %5, align 8
  %49 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %6, align 8
  %50 = call %struct.brcmf_bss_info_le* @next_bss_le(%struct.brcmf_scan_results* %48, %struct.brcmf_bss_info_le* %49)
  store %struct.brcmf_bss_info_le* %50, %struct.brcmf_bss_info_le** %6, align 8
  %51 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %52 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %6, align 8
  %53 = call i64 @brcmf_inform_single_bss(%struct.brcmf_cfg80211_info* %51, %struct.brcmf_bss_info_le* %52)
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %61

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %41

61:                                               ; preds = %56, %41
  %62 = load i64, i64* %7, align 8
  store i64 %62, i64* %2, align 8
  br label %63

63:                                               ; preds = %61, %27
  %64 = load i64, i64* %2, align 8
  ret i64 %64
}

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i64) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32) #1

declare dso_local %struct.brcmf_bss_info_le* @next_bss_le(%struct.brcmf_scan_results*, %struct.brcmf_bss_info_le*) #1

declare dso_local i64 @brcmf_inform_single_bss(%struct.brcmf_cfg80211_info*, %struct.brcmf_bss_info_le*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
