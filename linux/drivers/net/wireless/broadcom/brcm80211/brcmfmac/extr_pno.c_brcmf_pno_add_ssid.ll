; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pno.c_brcmf_pno_add_ssid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pno.c_brcmf_pno_add_ssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }
%struct.cfg80211_ssid = type { i32, i32 }
%struct.brcmf_pno_net_param_le = type { %struct.TYPE_2__, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32, i8* }

@WLAN_AUTH_OPEN = common dso_local global i32 0, align 4
@BRCMF_PNO_WPA_AUTH_ANY = common dso_local global i32 0, align 4
@BRCMF_PNO_HIDDEN_BIT = common dso_local global i32 0, align 4
@SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"adding ssid=%.32s (active=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"pfn_add\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"adding failed: err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_if*, %struct.cfg80211_ssid*, i32)* @brcmf_pno_add_ssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_pno_add_ssid(%struct.brcmf_if* %0, %struct.cfg80211_ssid* %1, i32 %2) #0 {
  %4 = alloca %struct.brcmf_if*, align 8
  %5 = alloca %struct.cfg80211_ssid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.brcmf_pub*, align 8
  %8 = alloca %struct.brcmf_pno_net_param_le, align 8
  %9 = alloca i32, align 4
  store %struct.brcmf_if* %0, %struct.brcmf_if** %4, align 8
  store %struct.cfg80211_ssid* %1, %struct.cfg80211_ssid** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %11 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %10, i32 0, i32 0
  %12 = load %struct.brcmf_pub*, %struct.brcmf_pub** %11, align 8
  store %struct.brcmf_pub* %12, %struct.brcmf_pub** %7, align 8
  %13 = load i32, i32* @WLAN_AUTH_OPEN, align 4
  %14 = call i8* @cpu_to_le32(i32 %13)
  %15 = getelementptr inbounds %struct.brcmf_pno_net_param_le, %struct.brcmf_pno_net_param_le* %8, i32 0, i32 5
  store i8* %14, i8** %15, align 8
  %16 = load i32, i32* @BRCMF_PNO_WPA_AUTH_ANY, align 4
  %17 = call i8* @cpu_to_le32(i32 %16)
  %18 = getelementptr inbounds %struct.brcmf_pno_net_param_le, %struct.brcmf_pno_net_param_le* %8, i32 0, i32 4
  store i8* %17, i8** %18, align 8
  %19 = call i8* @cpu_to_le32(i32 0)
  %20 = getelementptr inbounds %struct.brcmf_pno_net_param_le, %struct.brcmf_pno_net_param_le* %8, i32 0, i32 3
  store i8* %19, i8** %20, align 8
  %21 = call i8* @cpu_to_le32(i32 1)
  %22 = getelementptr inbounds %struct.brcmf_pno_net_param_le, %struct.brcmf_pno_net_param_le* %8, i32 0, i32 2
  store i8* %21, i8** %22, align 8
  %23 = getelementptr inbounds %struct.brcmf_pno_net_param_le, %struct.brcmf_pno_net_param_le* %8, i32 0, i32 1
  store i8* null, i8** %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load i32, i32* @BRCMF_PNO_HIDDEN_BIT, align 4
  %28 = shl i32 1, %27
  %29 = call i8* @cpu_to_le32(i32 %28)
  %30 = getelementptr inbounds %struct.brcmf_pno_net_param_le, %struct.brcmf_pno_net_param_le* %8, i32 0, i32 1
  store i8* %29, i8** %30, align 8
  br label %31

31:                                               ; preds = %26, %3
  %32 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %5, align 8
  %33 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @cpu_to_le32(i32 %34)
  %36 = getelementptr inbounds %struct.brcmf_pno_net_param_le, %struct.brcmf_pno_net_param_le* %8, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = getelementptr inbounds %struct.brcmf_pno_net_param_le, %struct.brcmf_pno_net_param_le* %8, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %5, align 8
  %42 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %5, align 8
  %45 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @memcpy(i32 %40, i32 %43, i32 %46)
  %48 = load i32, i32* @SCAN, align 4
  %49 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %5, align 8
  %50 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @brcmf_dbg(i32 %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %55 = call i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.brcmf_pno_net_param_le* %8, i32 56)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %31
  %59 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @bphy_err(%struct.brcmf_pub* %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %58, %31
  %63 = load i32, i32* %9, align 4
  ret i32 %63
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if*, i8*, %struct.brcmf_pno_net_param_le*, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
