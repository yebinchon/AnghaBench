; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_set_join_pref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_set_join_pref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }
%struct.cfg80211_bss_selection = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.brcmf_join_pref_params = type { i32, i8*, i64, i32 }

@BRCMF_C_SET_ASSOC_PREFER = common dso_local global i32 0, align 4
@WLC_BAND_AUTO = common dso_local global i32 0, align 4
@BRCMF_JOIN_PREF_BAND = common dso_local global i32 0, align 4
@BRCMF_JOIN_PREF_RSSI_DELTA = common dso_local global i32 0, align 4
@BRCMF_JOIN_PREF_RSSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"join_pref\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Set join_pref error (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_if*, %struct.cfg80211_bss_selection*)* @brcmf_set_join_pref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_set_join_pref(%struct.brcmf_if* %0, %struct.cfg80211_bss_selection* %1) #0 {
  %3 = alloca %struct.brcmf_if*, align 8
  %4 = alloca %struct.cfg80211_bss_selection*, align 8
  %5 = alloca %struct.brcmf_pub*, align 8
  %6 = alloca [2 x %struct.brcmf_join_pref_params], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.brcmf_if* %0, %struct.brcmf_if** %3, align 8
  store %struct.cfg80211_bss_selection* %1, %struct.cfg80211_bss_selection** %4, align 8
  %10 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %11 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %10, i32 0, i32 0
  %12 = load %struct.brcmf_pub*, %struct.brcmf_pub** %11, align 8
  store %struct.brcmf_pub* %12, %struct.brcmf_pub** %5, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [2 x %struct.brcmf_join_pref_params], [2 x %struct.brcmf_join_pref_params]* %6, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.brcmf_join_pref_params, %struct.brcmf_join_pref_params* %15, i32 0, i32 0
  store i32 2, i32* %16, align 16
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [2 x %struct.brcmf_join_pref_params], [2 x %struct.brcmf_join_pref_params]* %6, i64 0, i64 %18
  %20 = getelementptr inbounds %struct.brcmf_join_pref_params, %struct.brcmf_join_pref_params* %19, i32 0, i32 2
  store i64 0, i64* %20, align 16
  %21 = load %struct.cfg80211_bss_selection*, %struct.cfg80211_bss_selection** %4, align 8
  %22 = getelementptr inbounds %struct.cfg80211_bss_selection, %struct.cfg80211_bss_selection* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 131
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %27 = load i32, i32* @BRCMF_C_SET_ASSOC_PREFER, align 4
  %28 = load i32, i32* @WLC_BAND_AUTO, align 4
  %29 = call i32 @brcmf_fil_cmd_int_set(%struct.brcmf_if* %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %25, %2
  %31 = load %struct.cfg80211_bss_selection*, %struct.cfg80211_bss_selection** %4, align 8
  %32 = getelementptr inbounds %struct.cfg80211_bss_selection, %struct.cfg80211_bss_selection* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %84 [
    i32 128, label %34
    i32 131, label %37
    i32 129, label %55
    i32 130, label %83
  ]

34:                                               ; preds = %30
  %35 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %36 = call i32 @brcmf_c_set_joinpref_default(%struct.brcmf_if* %35)
  br label %112

37:                                               ; preds = %30
  %38 = load i32, i32* @BRCMF_JOIN_PREF_BAND, align 4
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [2 x %struct.brcmf_join_pref_params], [2 x %struct.brcmf_join_pref_params]* %6, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.brcmf_join_pref_params, %struct.brcmf_join_pref_params* %41, i32 0, i32 3
  store i32 %38, i32* %42, align 8
  %43 = load %struct.cfg80211_bss_selection*, %struct.cfg80211_bss_selection** %4, align 8
  %44 = getelementptr inbounds %struct.cfg80211_bss_selection, %struct.cfg80211_bss_selection* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i8* @nl80211_band_to_fwil(i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [2 x %struct.brcmf_join_pref_params], [2 x %struct.brcmf_join_pref_params]* %6, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.brcmf_join_pref_params, %struct.brcmf_join_pref_params* %51, i32 0, i32 1
  store i8* %48, i8** %52, align 8
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %85

55:                                               ; preds = %30
  %56 = load i32, i32* @BRCMF_JOIN_PREF_RSSI_DELTA, align 4
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [2 x %struct.brcmf_join_pref_params], [2 x %struct.brcmf_join_pref_params]* %6, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.brcmf_join_pref_params, %struct.brcmf_join_pref_params* %59, i32 0, i32 3
  store i32 %56, i32* %60, align 8
  %61 = load %struct.cfg80211_bss_selection*, %struct.cfg80211_bss_selection** %4, align 8
  %62 = getelementptr inbounds %struct.cfg80211_bss_selection, %struct.cfg80211_bss_selection* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i8* @nl80211_band_to_fwil(i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [2 x %struct.brcmf_join_pref_params], [2 x %struct.brcmf_join_pref_params]* %6, i64 0, i64 %69
  %71 = getelementptr inbounds %struct.brcmf_join_pref_params, %struct.brcmf_join_pref_params* %70, i32 0, i32 1
  store i8* %67, i8** %71, align 8
  %72 = load %struct.cfg80211_bss_selection*, %struct.cfg80211_bss_selection** %4, align 8
  %73 = getelementptr inbounds %struct.cfg80211_bss_selection, %struct.cfg80211_bss_selection* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [2 x %struct.brcmf_join_pref_params], [2 x %struct.brcmf_join_pref_params]* %6, i64 0, i64 %78
  %80 = getelementptr inbounds %struct.brcmf_join_pref_params, %struct.brcmf_join_pref_params* %79, i32 0, i32 2
  store i64 %76, i64* %80, align 16
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %85

83:                                               ; preds = %30
  br label %84

84:                                               ; preds = %30, %83
  br label %85

85:                                               ; preds = %84, %55, %37
  %86 = load i32, i32* @BRCMF_JOIN_PREF_RSSI, align 4
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [2 x %struct.brcmf_join_pref_params], [2 x %struct.brcmf_join_pref_params]* %6, i64 0, i64 %88
  %90 = getelementptr inbounds %struct.brcmf_join_pref_params, %struct.brcmf_join_pref_params* %89, i32 0, i32 3
  store i32 %86, i32* %90, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [2 x %struct.brcmf_join_pref_params], [2 x %struct.brcmf_join_pref_params]* %6, i64 0, i64 %92
  %94 = getelementptr inbounds %struct.brcmf_join_pref_params, %struct.brcmf_join_pref_params* %93, i32 0, i32 0
  store i32 2, i32* %94, align 16
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [2 x %struct.brcmf_join_pref_params], [2 x %struct.brcmf_join_pref_params]* %6, i64 0, i64 %96
  %98 = getelementptr inbounds %struct.brcmf_join_pref_params, %struct.brcmf_join_pref_params* %97, i32 0, i32 2
  store i64 0, i64* %98, align 16
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [2 x %struct.brcmf_join_pref_params], [2 x %struct.brcmf_join_pref_params]* %6, i64 0, i64 %100
  %102 = getelementptr inbounds %struct.brcmf_join_pref_params, %struct.brcmf_join_pref_params* %101, i32 0, i32 1
  store i8* null, i8** %102, align 8
  %103 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %104 = getelementptr inbounds [2 x %struct.brcmf_join_pref_params], [2 x %struct.brcmf_join_pref_params]* %6, i64 0, i64 0
  %105 = call i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if* %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.brcmf_join_pref_params* %104, i32 64)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %85
  %109 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @bphy_err(%struct.brcmf_pub* %109, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %34, %108, %85
  ret void
}

declare dso_local i32 @brcmf_fil_cmd_int_set(%struct.brcmf_if*, i32, i32) #1

declare dso_local i32 @brcmf_c_set_joinpref_default(%struct.brcmf_if*) #1

declare dso_local i8* @nl80211_band_to_fwil(i32) #1

declare dso_local i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if*, i8*, %struct.brcmf_join_pref_params*, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
