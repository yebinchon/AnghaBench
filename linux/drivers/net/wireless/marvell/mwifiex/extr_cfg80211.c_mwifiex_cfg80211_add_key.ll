; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_add_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_add_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.key_params = type { i64, i32, i32 }
%struct.mwifiex_private = type { i32, %struct.TYPE_2__, %struct.mwifiex_wep_key* }
%struct.TYPE_2__ = type { i32 }
%struct.mwifiex_wep_key = type { i32, i32, i32 }

@mwifiex_cfg80211_add_key.bc_mac = internal constant [6 x i32] [i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], align 16
@MWIFIEX_BSS_ROLE_UAP = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_WEP40 = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_WEP104 = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"crypto keys added\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32, i32, i32*, %struct.key_params*)* @mwifiex_cfg80211_add_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cfg80211_add_key(%struct.wiphy* %0, %struct.net_device* %1, i32 %2, i32 %3, i32* %4, %struct.key_params* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wiphy*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.key_params*, align 8
  %14 = alloca %struct.mwifiex_private*, align 8
  %15 = alloca %struct.mwifiex_wep_key*, align 8
  %16 = alloca i32*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %8, align 8
  store %struct.net_device* %1, %struct.net_device** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store %struct.key_params* %5, %struct.key_params** %13, align 8
  %17 = load %struct.net_device*, %struct.net_device** %9, align 8
  %18 = call %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device* %17)
  store %struct.mwifiex_private* %18, %struct.mwifiex_private** %14, align 8
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32*, i32** %12, align 8
  br label %24

23:                                               ; preds = %6
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32* [ %22, %21 ], [ getelementptr inbounds ([6 x i32], [6 x i32]* @mwifiex_cfg80211_add_key.bc_mac, i64 0, i64 0), %23 ]
  store i32* %25, i32** %16, align 8
  %26 = load %struct.mwifiex_private*, %struct.mwifiex_private** %14, align 8
  %27 = call i64 @GET_BSS_ROLE(%struct.mwifiex_private* %26)
  %28 = load i64, i64* @MWIFIEX_BSS_ROLE_UAP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %83

30:                                               ; preds = %24
  %31 = load %struct.key_params*, %struct.key_params** %13, align 8
  %32 = getelementptr inbounds %struct.key_params, %struct.key_params* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @WLAN_CIPHER_SUITE_WEP40, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.key_params*, %struct.key_params** %13, align 8
  %38 = getelementptr inbounds %struct.key_params, %struct.key_params* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @WLAN_CIPHER_SUITE_WEP104, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %83

42:                                               ; preds = %36, %30
  %43 = load %struct.key_params*, %struct.key_params** %13, align 8
  %44 = getelementptr inbounds %struct.key_params, %struct.key_params* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %82

47:                                               ; preds = %42
  %48 = load %struct.key_params*, %struct.key_params** %13, align 8
  %49 = getelementptr inbounds %struct.key_params, %struct.key_params* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %82

52:                                               ; preds = %47
  %53 = load %struct.mwifiex_private*, %struct.mwifiex_private** %14, align 8
  %54 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %53, i32 0, i32 2
  %55 = load %struct.mwifiex_wep_key*, %struct.mwifiex_wep_key** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.mwifiex_wep_key, %struct.mwifiex_wep_key* %55, i64 %57
  store %struct.mwifiex_wep_key* %58, %struct.mwifiex_wep_key** %15, align 8
  %59 = load %struct.mwifiex_wep_key*, %struct.mwifiex_wep_key** %15, align 8
  %60 = call i32 @memset(%struct.mwifiex_wep_key* %59, i32 0, i32 12)
  %61 = load %struct.mwifiex_wep_key*, %struct.mwifiex_wep_key** %15, align 8
  %62 = getelementptr inbounds %struct.mwifiex_wep_key, %struct.mwifiex_wep_key* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.key_params*, %struct.key_params** %13, align 8
  %65 = getelementptr inbounds %struct.key_params, %struct.key_params* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.key_params*, %struct.key_params** %13, align 8
  %68 = getelementptr inbounds %struct.key_params, %struct.key_params* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @memcpy(i32 %63, i32 %66, i32 %69)
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.mwifiex_wep_key*, %struct.mwifiex_wep_key** %15, align 8
  %73 = getelementptr inbounds %struct.mwifiex_wep_key, %struct.mwifiex_wep_key* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.key_params*, %struct.key_params** %13, align 8
  %75 = getelementptr inbounds %struct.key_params, %struct.key_params* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.mwifiex_wep_key*, %struct.mwifiex_wep_key** %15, align 8
  %78 = getelementptr inbounds %struct.mwifiex_wep_key, %struct.mwifiex_wep_key* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.mwifiex_private*, %struct.mwifiex_private** %14, align 8
  %80 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %52, %47, %42
  store i32 0, i32* %7, align 4
  br label %105

83:                                               ; preds = %36, %24
  %84 = load %struct.mwifiex_private*, %struct.mwifiex_private** %14, align 8
  %85 = load %struct.key_params*, %struct.key_params** %13, align 8
  %86 = load %struct.key_params*, %struct.key_params** %13, align 8
  %87 = getelementptr inbounds %struct.key_params, %struct.key_params* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.key_params*, %struct.key_params** %13, align 8
  %90 = getelementptr inbounds %struct.key_params, %struct.key_params* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load i32*, i32** %16, align 8
  %94 = call i64 @mwifiex_set_encode(%struct.mwifiex_private* %84, %struct.key_params* %85, i32 %88, i32 %91, i32 %92, i32* %93, i32 0)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %83
  %97 = load %struct.mwifiex_private*, %struct.mwifiex_private** %14, align 8
  %98 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @ERROR, align 4
  %101 = call i32 @mwifiex_dbg(i32 %99, i32 %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %102 = load i32, i32* @EFAULT, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %7, align 4
  br label %105

104:                                              ; preds = %83
  store i32 0, i32* %7, align 4
  br label %105

105:                                              ; preds = %104, %96, %82
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

declare dso_local %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device*) #1

declare dso_local i64 @GET_BSS_ROLE(%struct.mwifiex_private*) #1

declare dso_local i32 @memset(%struct.mwifiex_wep_key*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @mwifiex_set_encode(%struct.mwifiex_private*, %struct.key_params*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
