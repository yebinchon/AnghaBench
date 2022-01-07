; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_del_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_del_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.brcmf_if = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.brcmf_wsec_key* }
%struct.brcmf_wsec_key = type { i64, i32, i64 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@CONN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"key index (%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@BRCMF_MAX_DEFAULT_KEYS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_ALGO_OFF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"Ignore clearing of (never configured) key\0A\00", align 1
@BRCMF_PRIMARY_KEY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"Exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i64, i32, i64*)* @brcmf_cfg80211_del_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_cfg80211_del_key(%struct.wiphy* %0, %struct.net_device* %1, i64 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wiphy*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.brcmf_if*, align 8
  %13 = alloca %struct.brcmf_wsec_key*, align 8
  %14 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %15 = load %struct.net_device*, %struct.net_device** %8, align 8
  %16 = call %struct.brcmf_if* @netdev_priv(%struct.net_device* %15)
  store %struct.brcmf_if* %16, %struct.brcmf_if** %12, align 8
  %17 = load i32, i32* @TRACE, align 4
  %18 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @CONN, align 4
  %20 = load i64, i64* %9, align 8
  %21 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  %22 = load %struct.brcmf_if*, %struct.brcmf_if** %12, align 8
  %23 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = call i32 @check_vif_up(%struct.TYPE_4__* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %71

30:                                               ; preds = %5
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @BRCMF_MAX_DEFAULT_KEYS, align 8
  %33 = icmp uge i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %71

37:                                               ; preds = %30
  %38 = load %struct.brcmf_if*, %struct.brcmf_if** %12, align 8
  %39 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.brcmf_wsec_key*, %struct.brcmf_wsec_key** %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds %struct.brcmf_wsec_key, %struct.brcmf_wsec_key* %43, i64 %44
  store %struct.brcmf_wsec_key* %45, %struct.brcmf_wsec_key** %13, align 8
  %46 = load %struct.brcmf_wsec_key*, %struct.brcmf_wsec_key** %13, align 8
  %47 = getelementptr inbounds %struct.brcmf_wsec_key, %struct.brcmf_wsec_key* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CRYPTO_ALGO_OFF, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %37
  %52 = load i32, i32* @CONN, align 4
  %53 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %52, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %71

56:                                               ; preds = %37
  %57 = load %struct.brcmf_wsec_key*, %struct.brcmf_wsec_key** %13, align 8
  %58 = call i32 @memset(%struct.brcmf_wsec_key* %57, i32 0, i32 24)
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.brcmf_wsec_key*, %struct.brcmf_wsec_key** %13, align 8
  %61 = getelementptr inbounds %struct.brcmf_wsec_key, %struct.brcmf_wsec_key* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* @BRCMF_PRIMARY_KEY, align 4
  %63 = load %struct.brcmf_wsec_key*, %struct.brcmf_wsec_key** %13, align 8
  %64 = getelementptr inbounds %struct.brcmf_wsec_key, %struct.brcmf_wsec_key* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.brcmf_if*, %struct.brcmf_if** %12, align 8
  %66 = load %struct.brcmf_wsec_key*, %struct.brcmf_wsec_key** %13, align 8
  %67 = call i32 @send_key_to_dongle(%struct.brcmf_if* %65, %struct.brcmf_wsec_key* %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* @TRACE, align 4
  %69 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %56, %51, %34, %27
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local %struct.brcmf_if* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i32 @check_vif_up(%struct.TYPE_4__*) #1

declare dso_local i32 @memset(%struct.brcmf_wsec_key*, i32, i32) #1

declare dso_local i32 @send_key_to_dongle(%struct.brcmf_if*, %struct.brcmf_wsec_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
