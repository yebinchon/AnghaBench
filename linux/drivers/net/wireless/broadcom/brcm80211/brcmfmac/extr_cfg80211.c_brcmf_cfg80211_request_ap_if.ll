; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_request_ap_if.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_request_ap_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }
%struct.brcmf_mbss_ssid_le = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"ssid%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"bsscfg:ssid\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"setting ssid failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_if*)* @brcmf_cfg80211_request_ap_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_cfg80211_request_ap_if(%struct.brcmf_if* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcmf_if*, align 8
  %4 = alloca %struct.brcmf_pub*, align 8
  %5 = alloca %struct.brcmf_mbss_ssid_le, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.brcmf_if* %0, %struct.brcmf_if** %3, align 8
  %8 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %9 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %8, i32 0, i32 0
  %10 = load %struct.brcmf_pub*, %struct.brcmf_pub** %9, align 8
  store %struct.brcmf_pub* %10, %struct.brcmf_pub** %4, align 8
  %11 = call i32 @memset(%struct.brcmf_mbss_ssid_le* %5, i32 0, i32 24)
  %12 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %13 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %12, i32 0, i32 0
  %14 = load %struct.brcmf_pub*, %struct.brcmf_pub** %13, align 8
  %15 = call i32 @brcmf_get_first_free_bsscfgidx(%struct.brcmf_pub* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %40

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  %22 = call i8* @cpu_to_le32(i32 %21)
  %23 = getelementptr inbounds %struct.brcmf_mbss_ssid_le, %struct.brcmf_mbss_ssid_le* %5, i32 0, i32 2
  store i8* %22, i8** %23, align 8
  %24 = call i8* @cpu_to_le32(i32 5)
  %25 = getelementptr inbounds %struct.brcmf_mbss_ssid_le, %struct.brcmf_mbss_ssid_le* %5, i32 0, i32 1
  store i8* %24, i8** %25, align 8
  %26 = getelementptr inbounds %struct.brcmf_mbss_ssid_le, %struct.brcmf_mbss_ssid_le* %5, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @sprintf(i32 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %31 = call i32 @brcmf_fil_bsscfg_data_set(%struct.brcmf_if* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.brcmf_mbss_ssid_le* %5, i32 24)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %20
  %35 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @bphy_err(%struct.brcmf_pub* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %20
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %18
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @memset(%struct.brcmf_mbss_ssid_le*, i32, i32) #1

declare dso_local i32 @brcmf_get_first_free_bsscfgidx(%struct.brcmf_pub*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @brcmf_fil_bsscfg_data_set(%struct.brcmf_if*, i8*, %struct.brcmf_mbss_ssid_le*, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
