; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_common.c_brcmf_c_set_joinpref_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_common.c_brcmf_c_set_joinpref_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }
%struct.brcmf_join_pref_params = type { i32, i64, i64, i32 }

@BRCMF_JOIN_PREF_RSSI_DELTA = common dso_local global i32 0, align 4
@BRCMF_JOIN_PREF_RSSI_BOOST = common dso_local global i64 0, align 8
@WLC_BAND_5G = common dso_local global i64 0, align 8
@BRCMF_JOIN_PREF_RSSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"join_pref\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Set join_pref error (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcmf_c_set_joinpref_default(%struct.brcmf_if* %0) #0 {
  %2 = alloca %struct.brcmf_if*, align 8
  %3 = alloca %struct.brcmf_pub*, align 8
  %4 = alloca [2 x %struct.brcmf_join_pref_params], align 16
  %5 = alloca i32, align 4
  store %struct.brcmf_if* %0, %struct.brcmf_if** %2, align 8
  %6 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %7 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %6, i32 0, i32 0
  %8 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  store %struct.brcmf_pub* %8, %struct.brcmf_pub** %3, align 8
  %9 = load i32, i32* @BRCMF_JOIN_PREF_RSSI_DELTA, align 4
  %10 = getelementptr inbounds [2 x %struct.brcmf_join_pref_params], [2 x %struct.brcmf_join_pref_params]* %4, i64 0, i64 0
  %11 = getelementptr inbounds %struct.brcmf_join_pref_params, %struct.brcmf_join_pref_params* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  %12 = getelementptr inbounds [2 x %struct.brcmf_join_pref_params], [2 x %struct.brcmf_join_pref_params]* %4, i64 0, i64 0
  %13 = getelementptr inbounds %struct.brcmf_join_pref_params, %struct.brcmf_join_pref_params* %12, i32 0, i32 0
  store i32 2, i32* %13, align 16
  %14 = load i64, i64* @BRCMF_JOIN_PREF_RSSI_BOOST, align 8
  %15 = getelementptr inbounds [2 x %struct.brcmf_join_pref_params], [2 x %struct.brcmf_join_pref_params]* %4, i64 0, i64 0
  %16 = getelementptr inbounds %struct.brcmf_join_pref_params, %struct.brcmf_join_pref_params* %15, i32 0, i32 2
  store i64 %14, i64* %16, align 16
  %17 = load i64, i64* @WLC_BAND_5G, align 8
  %18 = getelementptr inbounds [2 x %struct.brcmf_join_pref_params], [2 x %struct.brcmf_join_pref_params]* %4, i64 0, i64 0
  %19 = getelementptr inbounds %struct.brcmf_join_pref_params, %struct.brcmf_join_pref_params* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* @BRCMF_JOIN_PREF_RSSI, align 4
  %21 = getelementptr inbounds [2 x %struct.brcmf_join_pref_params], [2 x %struct.brcmf_join_pref_params]* %4, i64 0, i64 1
  %22 = getelementptr inbounds %struct.brcmf_join_pref_params, %struct.brcmf_join_pref_params* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = getelementptr inbounds [2 x %struct.brcmf_join_pref_params], [2 x %struct.brcmf_join_pref_params]* %4, i64 0, i64 1
  %24 = getelementptr inbounds %struct.brcmf_join_pref_params, %struct.brcmf_join_pref_params* %23, i32 0, i32 0
  store i32 2, i32* %24, align 16
  %25 = getelementptr inbounds [2 x %struct.brcmf_join_pref_params], [2 x %struct.brcmf_join_pref_params]* %4, i64 0, i64 1
  %26 = getelementptr inbounds %struct.brcmf_join_pref_params, %struct.brcmf_join_pref_params* %25, i32 0, i32 2
  store i64 0, i64* %26, align 16
  %27 = getelementptr inbounds [2 x %struct.brcmf_join_pref_params], [2 x %struct.brcmf_join_pref_params]* %4, i64 0, i64 1
  %28 = getelementptr inbounds %struct.brcmf_join_pref_params, %struct.brcmf_join_pref_params* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %30 = getelementptr inbounds [2 x %struct.brcmf_join_pref_params], [2 x %struct.brcmf_join_pref_params]* %4, i64 0, i64 0
  %31 = call i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.brcmf_join_pref_params* %30, i32 64)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @bphy_err(%struct.brcmf_pub* %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %1
  ret void
}

declare dso_local i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if*, i8*, %struct.brcmf_join_pref_params*, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
