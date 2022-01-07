; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_scan_info = type { i32 }
%struct.net_device = type { i32 }
%struct.mwifiex_private = type { i32, %struct.TYPE_2__, i32, i64, i32* }
%struct.TYPE_2__ = type { i32 }

@__const.mwifiex_close.info = private unnamed_addr constant %struct.cfg80211_scan_info { i32 1 }, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"aborting scan on ndo_stop\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"aborting bgscan on ndo_stop\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @mwifiex_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.cfg80211_scan_info, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device* %5)
  store %struct.mwifiex_private* %6, %struct.mwifiex_private** %3, align 8
  %7 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %8 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %7, i32 0, i32 4
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = bitcast %struct.cfg80211_scan_info* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.cfg80211_scan_info* @__const.mwifiex_close.info to i8*), i64 4, i1 false)
  %13 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %14 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @INFO, align 4
  %17 = call i32 @mwifiex_dbg(i32 %15, i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %19 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @cfg80211_scan_done(i32* %20, %struct.cfg80211_scan_info* %4)
  %22 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %23 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %22, i32 0, i32 4
  store i32* null, i32** %23, align 8
  %24 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %25 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  br label %26

26:                                               ; preds = %11, %1
  %27 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %28 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %33 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @INFO, align 4
  %36 = call i32 @mwifiex_dbg(i32 %34, i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %38 = call i32 @mwifiex_stop_bg_scan(%struct.mwifiex_private* %37)
  %39 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %40 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cfg80211_sched_scan_stopped(i32 %42, i32 0)
  br label %44

44:                                               ; preds = %31, %26
  ret i32 0
}

declare dso_local %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*) #1

declare dso_local i32 @cfg80211_scan_done(i32*, %struct.cfg80211_scan_info*) #1

declare dso_local i32 @mwifiex_stop_bg_scan(%struct.mwifiex_private*) #1

declare dso_local i32 @cfg80211_sched_scan_stopped(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
