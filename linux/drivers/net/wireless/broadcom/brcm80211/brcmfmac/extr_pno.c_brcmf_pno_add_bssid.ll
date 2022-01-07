; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pno.c_brcmf_pno_add_bssid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pno.c_brcmf_pno_add_bssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }
%struct.brcmf_pno_bssid_le = type { i64, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"adding bssid=%pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"pfn_add_bssid\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"adding failed: err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_if*, i32*)* @brcmf_pno_add_bssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_pno_add_bssid(%struct.brcmf_if* %0, i32* %1) #0 {
  %3 = alloca %struct.brcmf_if*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.brcmf_pub*, align 8
  %6 = alloca %struct.brcmf_pno_bssid_le, align 8
  %7 = alloca i32, align 4
  store %struct.brcmf_if* %0, %struct.brcmf_if** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %9 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %8, i32 0, i32 0
  %10 = load %struct.brcmf_pub*, %struct.brcmf_pub** %9, align 8
  store %struct.brcmf_pub* %10, %struct.brcmf_pub** %5, align 8
  %11 = getelementptr inbounds %struct.brcmf_pno_bssid_le, %struct.brcmf_pno_bssid_le* %6, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @ETH_ALEN, align 4
  %15 = call i32 @memcpy(i32 %12, i32* %13, i32 %14)
  %16 = getelementptr inbounds %struct.brcmf_pno_bssid_le, %struct.brcmf_pno_bssid_le* %6, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @SCAN, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @brcmf_dbg(i32 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %18)
  %20 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %21 = call i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.brcmf_pno_bssid_le* %6, i32 16)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @bphy_err(%struct.brcmf_pub* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %2
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32*) #1

declare dso_local i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if*, i8*, %struct.brcmf_pno_bssid_le*, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
