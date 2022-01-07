; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_get_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_get_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.cfg80211_chan_def = type { i32 }
%struct.mwifiex_private = type { i64, %struct.TYPE_2__, i64, %struct.cfg80211_chan_def }
%struct.TYPE_2__ = type { i32, %struct.mwifiex_bssdescriptor }
%struct.mwifiex_bssdescriptor = type { i32 }
%struct.ieee80211_channel = type { i32 }

@ENODATA = common dso_local global i32 0, align 4
@MWIFIEX_BSS_ROLE_UAP = common dso_local global i64 0, align 8
@NL80211_CHAN_NO_HT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.wireless_dev*, %struct.cfg80211_chan_def*)* @mwifiex_cfg80211_get_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cfg80211_get_channel(%struct.wiphy* %0, %struct.wireless_dev* %1, %struct.cfg80211_chan_def* %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.wireless_dev*, align 8
  %6 = alloca %struct.cfg80211_chan_def*, align 8
  %7 = alloca %struct.mwifiex_private*, align 8
  %8 = alloca %struct.mwifiex_bssdescriptor*, align 8
  %9 = alloca %struct.ieee80211_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %5, align 8
  store %struct.cfg80211_chan_def* %2, %struct.cfg80211_chan_def** %6, align 8
  %14 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %15 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.mwifiex_private* @mwifiex_netdev_get_priv(i32 %16)
  store %struct.mwifiex_private* %17, %struct.mwifiex_private** %7, align 8
  %18 = load i32, i32* @ENODATA, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %13, align 4
  %20 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %21 = call i64 @GET_BSS_ROLE(%struct.mwifiex_private* %20)
  %22 = load i64, i64* @MWIFIEX_BSS_ROLE_UAP, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %3
  %25 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %26 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %25, i32 0, i32 3
  %27 = call i64 @cfg80211_chandef_valid(%struct.cfg80211_chan_def* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %31 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %32 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %31, i32 0, i32 3
  %33 = bitcast %struct.cfg80211_chan_def* %30 to i8*
  %34 = bitcast %struct.cfg80211_chan_def* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 8 %34, i64 4, i1 false)
  store i32 0, i32* %13, align 4
  br label %75

35:                                               ; preds = %24, %3
  %36 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %37 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %74

40:                                               ; preds = %35
  %41 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %42 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store %struct.mwifiex_bssdescriptor* %43, %struct.mwifiex_bssdescriptor** %8, align 8
  %44 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %45 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @mwifiex_band_to_radio_type(i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %8, align 8
  %50 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @ieee80211_channel_to_frequency(i32 %51, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy* %54, i32 %55)
  store %struct.ieee80211_channel* %56, %struct.ieee80211_channel** %9, align 8
  %57 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %58 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %40
  %62 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %63 = call i32 @mwifiex_get_chan_type(%struct.mwifiex_private* %62)
  store i32 %63, i32* %10, align 4
  %64 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %65 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def* %64, %struct.ieee80211_channel* %65, i32 %66)
  br label %73

68:                                               ; preds = %40
  %69 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %70 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %71 = load i32, i32* @NL80211_CHAN_NO_HT, align 4
  %72 = call i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def* %69, %struct.ieee80211_channel* %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %61
  store i32 0, i32* %13, align 4
  br label %74

74:                                               ; preds = %73, %35
  br label %75

75:                                               ; preds = %74, %29
  %76 = load i32, i32* %13, align 4
  ret i32 %76
}

declare dso_local %struct.mwifiex_private* @mwifiex_netdev_get_priv(i32) #1

declare dso_local i64 @GET_BSS_ROLE(%struct.mwifiex_private*) #1

declare dso_local i64 @cfg80211_chandef_valid(%struct.cfg80211_chan_def*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mwifiex_band_to_radio_type(i32) #1

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #1

declare dso_local %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy*, i32) #1

declare dso_local i32 @mwifiex_get_chan_type(%struct.mwifiex_private*) #1

declare dso_local i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def*, %struct.ieee80211_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
