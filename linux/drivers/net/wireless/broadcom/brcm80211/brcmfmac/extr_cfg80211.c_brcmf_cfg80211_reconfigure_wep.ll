; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_reconfigure_wep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_reconfigure_wep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { %struct.TYPE_4__*, %struct.brcmf_pub* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.brcmf_wsec_key* }
%struct.brcmf_wsec_key = type { i64 }
%struct.brcmf_pub = type { i32 }

@BRCMF_MAX_DEFAULT_KEYS = common dso_local global i64 0, align 8
@CRYPTO_ALGO_WEP1 = common dso_local global i64 0, align 8
@CRYPTO_ALGO_WEP128 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Setting WEP key failed (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"wsec\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"get wsec error (%d)\0A\00", align 1
@WEP_ENABLED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"set wsec error (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_if*)* @brcmf_cfg80211_reconfigure_wep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_cfg80211_reconfigure_wep(%struct.brcmf_if* %0) #0 {
  %2 = alloca %struct.brcmf_if*, align 8
  %3 = alloca %struct.brcmf_pub*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.brcmf_wsec_key*, align 8
  %7 = alloca i64, align 8
  store %struct.brcmf_if* %0, %struct.brcmf_if** %2, align 8
  %8 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %9 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %8, i32 0, i32 1
  %10 = load %struct.brcmf_pub*, %struct.brcmf_pub** %9, align 8
  store %struct.brcmf_pub* %10, %struct.brcmf_pub** %3, align 8
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %37, %1
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @BRCMF_MAX_DEFAULT_KEYS, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %11
  %16 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %17 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.brcmf_wsec_key*, %struct.brcmf_wsec_key** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.brcmf_wsec_key, %struct.brcmf_wsec_key* %21, i64 %22
  store %struct.brcmf_wsec_key* %23, %struct.brcmf_wsec_key** %6, align 8
  %24 = load %struct.brcmf_wsec_key*, %struct.brcmf_wsec_key** %6, align 8
  %25 = getelementptr inbounds %struct.brcmf_wsec_key, %struct.brcmf_wsec_key* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CRYPTO_ALGO_WEP1, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %15
  %30 = load %struct.brcmf_wsec_key*, %struct.brcmf_wsec_key** %6, align 8
  %31 = getelementptr inbounds %struct.brcmf_wsec_key, %struct.brcmf_wsec_key* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CRYPTO_ALGO_WEP128, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %15
  br label %40

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %5, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %5, align 8
  br label %11

40:                                               ; preds = %35, %11
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @BRCMF_MAX_DEFAULT_KEYS, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %77

45:                                               ; preds = %40
  %46 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %47 = load %struct.brcmf_wsec_key*, %struct.brcmf_wsec_key** %6, align 8
  %48 = call i64 @send_key_to_dongle(%struct.brcmf_if* %46, %struct.brcmf_wsec_key* %47)
  store i64 %48, i64* %4, align 8
  %49 = load i64, i64* %4, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @bphy_err(%struct.brcmf_pub* %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %53)
  br label %77

55:                                               ; preds = %45
  %56 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %57 = call i64 @brcmf_fil_bsscfg_int_get(%struct.brcmf_if* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64* %7)
  store i64 %57, i64* %4, align 8
  %58 = load i64, i64* %4, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @bphy_err(%struct.brcmf_pub* %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %62)
  br label %77

64:                                               ; preds = %55
  %65 = load i64, i64* @WEP_ENABLED, align 8
  %66 = load i64, i64* %7, align 8
  %67 = or i64 %66, %65
  store i64 %67, i64* %7, align 8
  %68 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i64 @brcmf_fil_bsscfg_int_set(%struct.brcmf_if* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %69)
  store i64 %70, i64* %4, align 8
  %71 = load i64, i64* %4, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %64
  %74 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %75 = load i64, i64* %4, align 8
  %76 = call i32 @bphy_err(%struct.brcmf_pub* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %75)
  br label %77

77:                                               ; preds = %44, %51, %60, %73, %64
  ret void
}

declare dso_local i64 @send_key_to_dongle(%struct.brcmf_if*, %struct.brcmf_wsec_key*) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i64) #1

declare dso_local i64 @brcmf_fil_bsscfg_int_get(%struct.brcmf_if*, i8*, i64*) #1

declare dso_local i64 @brcmf_fil_bsscfg_int_set(%struct.brcmf_if*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
