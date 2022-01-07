; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32, %struct.cfg80211_chan_def, %struct.TYPE_4__*, i32, %struct.ieee80211_hw* }
%struct.cfg80211_chan_def = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.mt76_dev*)* }
%struct.ieee80211_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.cfg80211_chan_def }
%struct.mt76_channel_state = type { i32 }

@IEEE80211_CONF_OFFCHANNEL = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76_set_channel(%struct.mt76_dev* %0) #0 {
  %2 = alloca %struct.mt76_dev*, align 8
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.cfg80211_chan_def*, align 8
  %5 = alloca %struct.mt76_channel_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %2, align 8
  %8 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %9 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %8, i32 0, i32 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  store %struct.ieee80211_hw* %10, %struct.ieee80211_hw** %3, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store %struct.cfg80211_chan_def* %13, %struct.cfg80211_chan_def** %4, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IEEE80211_CONF_OFFCHANNEL, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @HZ, align 4
  %21 = sdiv i32 %20, 5
  store i32 %21, i32* %7, align 4
  %22 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %23 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %26 = call i32 @mt76_has_tx_pending(%struct.mt76_dev* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @wait_event_timeout(i32 %24, i32 %29, i32 %30)
  %32 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %33 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32 (%struct.mt76_dev*)*, i32 (%struct.mt76_dev*)** %35, align 8
  %37 = icmp ne i32 (%struct.mt76_dev*)* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %1
  %39 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %40 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32 (%struct.mt76_dev*)*, i32 (%struct.mt76_dev*)** %42, align 8
  %44 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %45 = call i32 %43(%struct.mt76_dev* %44)
  br label %46

46:                                               ; preds = %38, %1
  %47 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %48 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %47, i32 0, i32 1
  %49 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %50 = bitcast %struct.cfg80211_chan_def* %48 to i8*
  %51 = bitcast %struct.cfg80211_chan_def* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 4, i1 false)
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %46
  %55 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %56 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %59 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %54, %46
  %61 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %62 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %65 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %63, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %60
  %69 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %70 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %71 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.mt76_channel_state* @mt76_channel_state(%struct.mt76_dev* %69, i32 %72)
  store %struct.mt76_channel_state* %73, %struct.mt76_channel_state** %5, align 8
  %74 = load %struct.mt76_channel_state*, %struct.mt76_channel_state** %5, align 8
  %75 = call i32 @memset(%struct.mt76_channel_state* %74, i32 0, i32 4)
  br label %76

76:                                               ; preds = %68, %60
  ret void
}

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @mt76_has_tx_pending(%struct.mt76_dev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.mt76_channel_state* @mt76_channel_state(%struct.mt76_dev*, i32) #1

declare dso_local i32 @memset(%struct.mt76_channel_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
