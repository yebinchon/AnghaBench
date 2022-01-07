; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_config_default_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_config_default_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.brcmf_if = type { i32, %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@CONN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"key index (%d)\0A\00", align 1
@EIO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"wsec\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"WLC_GET_WSEC error (%d)\0A\00", align 1
@WEP_ENABLED = common dso_local global i32 0, align 4
@BRCMF_C_SET_KEY_PRIMARY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"error (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.wiphy*, %struct.net_device*, i32, i32, i32)* @brcmf_cfg80211_config_default_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @brcmf_cfg80211_config_default_key(%struct.wiphy* %0, %struct.net_device* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.wiphy*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.brcmf_if*, align 8
  %13 = alloca %struct.brcmf_pub*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.wiphy* %0, %struct.wiphy** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.net_device*, %struct.net_device** %8, align 8
  %18 = call %struct.brcmf_if* @netdev_priv(%struct.net_device* %17)
  store %struct.brcmf_if* %18, %struct.brcmf_if** %12, align 8
  %19 = load %struct.brcmf_if*, %struct.brcmf_if** %12, align 8
  %20 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %19, i32 0, i32 1
  %21 = load %struct.brcmf_pub*, %struct.brcmf_pub** %20, align 8
  store %struct.brcmf_pub* %21, %struct.brcmf_pub** %13, align 8
  store i64 0, i64* %16, align 8
  %22 = load i32, i32* @TRACE, align 4
  %23 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @CONN, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.brcmf_if*, %struct.brcmf_if** %12, align 8
  %28 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @check_vif_up(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %5
  %33 = load i64, i64* @EIO, align 8
  %34 = sub nsw i64 0, %33
  store i64 %34, i64* %6, align 8
  br label %67

35:                                               ; preds = %5
  %36 = load %struct.brcmf_if*, %struct.brcmf_if** %12, align 8
  %37 = call i64 @brcmf_fil_bsscfg_int_get(%struct.brcmf_if* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %15)
  store i64 %37, i64* %16, align 8
  %38 = load i64, i64* %16, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.brcmf_pub*, %struct.brcmf_pub** %13, align 8
  %42 = load i64, i64* %16, align 8
  %43 = call i32 @bphy_err(%struct.brcmf_pub* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %42)
  br label %63

44:                                               ; preds = %35
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @WEP_ENABLED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %14, align 4
  %51 = load %struct.brcmf_if*, %struct.brcmf_if** %12, align 8
  %52 = load i32, i32* @BRCMF_C_SET_KEY_PRIMARY, align 4
  %53 = load i32, i32* %14, align 4
  %54 = call i64 @brcmf_fil_cmd_int_set(%struct.brcmf_if* %51, i32 %52, i32 %53)
  store i64 %54, i64* %16, align 8
  %55 = load i64, i64* %16, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load %struct.brcmf_pub*, %struct.brcmf_pub** %13, align 8
  %59 = load i64, i64* %16, align 8
  %60 = call i32 @bphy_err(%struct.brcmf_pub* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 %59)
  br label %61

61:                                               ; preds = %57, %49
  br label %62

62:                                               ; preds = %61, %44
  br label %63

63:                                               ; preds = %62, %40
  %64 = load i32, i32* @TRACE, align 4
  %65 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %66 = load i64, i64* %16, align 8
  store i64 %66, i64* %6, align 8
  br label %67

67:                                               ; preds = %63, %32
  %68 = load i64, i64* %6, align 8
  ret i64 %68
}

declare dso_local %struct.brcmf_if* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i32 @check_vif_up(i32) #1

declare dso_local i64 @brcmf_fil_bsscfg_int_get(%struct.brcmf_if*, i8*, i32*) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i64) #1

declare dso_local i64 @brcmf_fil_cmd_int_set(%struct.brcmf_if*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
