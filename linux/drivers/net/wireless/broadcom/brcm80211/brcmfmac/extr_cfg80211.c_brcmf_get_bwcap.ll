; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_get_bwcap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_get_bwcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }

@WLC_BAND_2G = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"bw_cap\00", align 1
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@WLC_BAND_5G = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"fallback to mimo_bw_cap info\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"mimo_bw_cap\00", align 1
@WLC_BW_40MHZ_BIT = common dso_local global i32 0, align 4
@WLC_BW_20MHZ_BIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"invalid mimo_bw_cap value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_if*, i32*)* @brcmf_get_bwcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_get_bwcap(%struct.brcmf_if* %0, i32* %1) #0 {
  %3 = alloca %struct.brcmf_if*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.brcmf_pub*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.brcmf_if* %0, %struct.brcmf_if** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %10 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %9, i32 0, i32 0
  %11 = load %struct.brcmf_pub*, %struct.brcmf_pub** %10, align 8
  store %struct.brcmf_pub* %11, %struct.brcmf_pub** %5, align 8
  %12 = load i32, i32* @WLC_BAND_2G, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %14 = call i32 @brcmf_fil_iovar_int_get(%struct.brcmf_if* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %6)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @WLC_BAND_5G, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %24 = call i32 @brcmf_fil_iovar_int_get(%struct.brcmf_if* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %6)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %6, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32 %28, i32* %31, align 4
  br label %74

32:                                               ; preds = %17
  %33 = call i32 @WARN_ON(i32 1)
  br label %74

34:                                               ; preds = %2
  %35 = load i32, i32* @INFO, align 4
  %36 = call i32 @brcmf_dbg(i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  %37 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %38 = call i32 @brcmf_fil_iovar_int_get(%struct.brcmf_if* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %7)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 130, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %34
  %43 = load i32, i32* %7, align 4
  switch i32 %43, label %71 [
    i32 128, label %44
    i32 129, label %51
    i32 130, label %58
  ]

44:                                               ; preds = %42
  %45 = load i32, i32* @WLC_BW_40MHZ_BIT, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %45
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %42, %44
  %52 = load i32, i32* @WLC_BW_40MHZ_BIT, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %52
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %42, %51
  %59 = load i32, i32* @WLC_BW_20MHZ_BIT, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %59
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* @WLC_BW_20MHZ_BIT, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %65
  store i32 %70, i32* %68, align 4
  br label %74

71:                                               ; preds = %42
  %72 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %73 = call i32 @bphy_err(%struct.brcmf_pub* %72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %27, %32, %71, %58
  ret void
}

declare dso_local i32 @brcmf_fil_iovar_int_get(%struct.brcmf_if*, i8*, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
