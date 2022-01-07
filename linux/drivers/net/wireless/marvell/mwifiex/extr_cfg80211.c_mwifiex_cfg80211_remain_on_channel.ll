; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_remain_on_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_remain_on_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.mwifiex_private = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ieee80211_channel }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid parameter for ROC\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"info: ongoing ROC, cookie = 0x%llx\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"info: ROC, cookie = 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.wireless_dev*, %struct.ieee80211_channel*, i32, i32*)* @mwifiex_cfg80211_remain_on_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cfg80211_remain_on_channel(%struct.wiphy* %0, %struct.wireless_dev* %1, %struct.ieee80211_channel* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wiphy*, align 8
  %8 = alloca %struct.wireless_dev*, align 8
  %9 = alloca %struct.ieee80211_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mwifiex_private*, align 8
  %13 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %7, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %8, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %15 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.mwifiex_private* @mwifiex_netdev_get_priv(i32 %16)
  store %struct.mwifiex_private* %17, %struct.mwifiex_private** %12, align 8
  %18 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %19 = icmp ne %struct.ieee80211_channel* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32*, i32** %11, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %20, %5
  %24 = load %struct.mwifiex_private*, %struct.mwifiex_private** %12, align 8
  %25 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ERROR, align 4
  %28 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %26, i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %88

31:                                               ; preds = %20
  %32 = load %struct.mwifiex_private*, %struct.mwifiex_private** %12, align 8
  %33 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load %struct.mwifiex_private*, %struct.mwifiex_private** %12, align 8
  %39 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @INFO, align 4
  %42 = load %struct.mwifiex_private*, %struct.mwifiex_private** %12, align 8
  %43 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %40, i32 %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %88

49:                                               ; preds = %31
  %50 = load %struct.mwifiex_private*, %struct.mwifiex_private** %12, align 8
  %51 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %52 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @mwifiex_remain_on_chan_cfg(%struct.mwifiex_private* %50, i32 %51, %struct.ieee80211_channel* %52, i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %86, label %57

57:                                               ; preds = %49
  %58 = call i32 (...) @prandom_u32()
  %59 = or i32 %58, 1
  %60 = load i32*, i32** %11, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mwifiex_private*, %struct.mwifiex_private** %12, align 8
  %64 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  %66 = load %struct.mwifiex_private*, %struct.mwifiex_private** %12, align 8
  %67 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %70 = bitcast %struct.ieee80211_channel* %68 to i8*
  %71 = bitcast %struct.ieee80211_channel* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 4, i1 false)
  %72 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @GFP_ATOMIC, align 4
  %78 = call i32 @cfg80211_ready_on_channel(%struct.wireless_dev* %72, i32 %74, %struct.ieee80211_channel* %75, i32 %76, i32 %77)
  %79 = load %struct.mwifiex_private*, %struct.mwifiex_private** %12, align 8
  %80 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @INFO, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %81, i32 %82, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %57, %49
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %86, %37, %23
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local %struct.mwifiex_private* @mwifiex_netdev_get_priv(i32) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, ...) #1

declare dso_local i32 @mwifiex_remain_on_chan_cfg(%struct.mwifiex_private*, i32, %struct.ieee80211_channel*, i32) #1

declare dso_local i32 @prandom_u32(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cfg80211_ready_on_channel(%struct.wireless_dev*, i32, %struct.ieee80211_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
