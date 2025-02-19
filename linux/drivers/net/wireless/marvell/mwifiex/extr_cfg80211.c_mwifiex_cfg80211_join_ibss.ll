; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_join_ibss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_join_ibss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_ibss_params = type { %struct.TYPE_2__, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mwifiex_private = type { i64, i32, i32, i32 }

@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"request to join ibss received\09when station is not in ibss mode\0A\00", align 1
@MSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"info: trying to join to %.*s and bssid %pM\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"info: joined/created adhoc network with bssid\09%pM successfully\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"info: failed creating/joining adhoc network\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.cfg80211_ibss_params*)* @mwifiex_cfg80211_join_ibss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cfg80211_join_ibss(%struct.wiphy* %0, %struct.net_device* %1, %struct.cfg80211_ibss_params* %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.cfg80211_ibss_params*, align 8
  %7 = alloca %struct.mwifiex_private*, align 8
  %8 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.cfg80211_ibss_params* %2, %struct.cfg80211_ibss_params** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device* %9)
  store %struct.mwifiex_private* %10, %struct.mwifiex_private** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %12 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %18 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ERROR, align 4
  %21 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %19, i32 %20, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  br label %62

22:                                               ; preds = %3
  %23 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %24 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @MSG, align 4
  %27 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %6, align 8
  %28 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %6, align 8
  %31 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %6, align 8
  %35 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %25, i32 %26, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %29, i8* %33, i32 %36)
  %38 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %39 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %6, align 8
  %40 = call i32 @mwifiex_set_ibss_params(%struct.mwifiex_private* %38, %struct.cfg80211_ibss_params* %39)
  %41 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %42 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %6, align 8
  %43 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %6, align 8
  %46 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %6, align 8
  %49 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %52 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %6, align 8
  %55 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %6, align 8
  %59 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @mwifiex_cfg80211_assoc(%struct.mwifiex_private* %41, i32 %44, i64 %47, i32 %50, i64 %53, i32 %57, i32* null, i32 %60)
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %22, %16
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %86, label %65

65:                                               ; preds = %62
  %66 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %67 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %70 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %6, align 8
  %73 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call i32 @cfg80211_ibss_joined(i32 %68, i32 %71, i32 %75, i32 %76)
  %78 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %79 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @MSG, align 4
  %82 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %83 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %80, i32 %81, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %92

86:                                               ; preds = %62
  %87 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %88 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @ERROR, align 4
  %91 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %89, i32 %90, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %92

92:                                               ; preds = %86, %65
  %93 = load i32, i32* %8, align 4
  ret i32 %93
}

declare dso_local %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device*) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, ...) #1

declare dso_local i32 @mwifiex_set_ibss_params(%struct.mwifiex_private*, %struct.cfg80211_ibss_params*) #1

declare dso_local i32 @mwifiex_cfg80211_assoc(%struct.mwifiex_private*, i32, i64, i32, i64, i32, i32*, i32) #1

declare dso_local i32 @cfg80211_ibss_joined(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
