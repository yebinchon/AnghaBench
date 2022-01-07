; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_monitor_vdev_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_monitor_vdev_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_chan_def = type { i32, i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i32, i32, i32, i32 }
%struct.wmi_vdev_start_request_arg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i32, i32, i32, i32 }

@ath10k_mac_get_any_chandef_iter = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"failed to request monitor vdev %i start: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"failed to synchronize setup for monitor vdev %i start: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to put up monitor vdev %i: %d\0A\00", align 1
@ATH10K_DBG_MAC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"mac monitor vdev %i started\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"failed to stop monitor vdev %i after start failure: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32)* @ath10k_monitor_vdev_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_monitor_vdev_start(%struct.ath10k* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cfg80211_chan_def*, align 8
  %7 = alloca %struct.ieee80211_channel*, align 8
  %8 = alloca %struct.wmi_vdev_start_request_arg, align 8
  %9 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cfg80211_chan_def* null, %struct.cfg80211_chan_def** %6, align 8
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %7, align 8
  %10 = bitcast %struct.wmi_vdev_start_request_arg* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 48, i1 false)
  store i32 0, i32* %9, align 4
  %11 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %12 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %11, i32 0, i32 5
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %15 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ath10k_mac_get_any_chandef_iter, align 4
  %18 = call i32 @ieee80211_iter_chan_contexts_atomic(i32 %16, i32 %17, %struct.cfg80211_chan_def** %6)
  %19 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %20 = icmp ne %struct.cfg80211_chan_def* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON_ONCE(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %152

28:                                               ; preds = %2
  %29 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %30 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %29, i32 0, i32 2
  %31 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %30, align 8
  store %struct.ieee80211_channel* %31, %struct.ieee80211_channel** %7, align 8
  %32 = load i32, i32* %5, align 4
  %33 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %8, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %35 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %8, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 8
  store i32 %36, i32* %38, align 4
  %39 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %40 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %8, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 8
  %44 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %45 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %8, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 4
  %49 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %50 = call i32 @chan_to_phymode(%struct.cfg80211_chan_def* %49)
  %51 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %8, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  %53 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %54 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %8, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %8, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 4
  store i64 0, i64* %65, align 8
  %66 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %67 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %68, 2
  %70 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %8, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %73 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %74, 2
  %76 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %8, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %79 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %80, 2
  %82 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %8, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %85 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %84, i32 0, i32 3
  %86 = call i32 @reinit_completion(i32* %85)
  %87 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %88 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %87, i32 0, i32 2
  %89 = call i32 @reinit_completion(i32* %88)
  %90 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %91 = call i32 @ath10k_wmi_vdev_start(%struct.ath10k* %90, %struct.wmi_vdev_start_request_arg* %8)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %28
  %95 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @ath10k_warn(%struct.ath10k* %95, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %97)
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %3, align 4
  br label %152

100:                                              ; preds = %28
  %101 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %102 = call i32 @ath10k_vdev_setup_sync(%struct.ath10k* %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @ath10k_warn(%struct.ath10k* %106, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %107, i32 %108)
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %3, align 4
  br label %152

111:                                              ; preds = %100
  %112 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %113 = load i32, i32* %5, align 4
  %114 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %115 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @ath10k_wmi_vdev_up(%struct.ath10k* %112, i32 %113, i32 0, i32 %116)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %111
  %121 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @ath10k_warn(%struct.ath10k* %121, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %122, i32 %123)
  br label %135

125:                                              ; preds = %111
  %126 = load i32, i32* %5, align 4
  %127 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %128 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  %129 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %130 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %131 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %132 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @ath10k_dbg(%struct.ath10k* %129, i32 %130, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %133)
  store i32 0, i32* %3, align 4
  br label %152

135:                                              ; preds = %120
  %136 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %137 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %138 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @ath10k_wmi_vdev_stop(%struct.ath10k* %136, i32 %139)
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %135
  %144 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %145 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %146 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @ath10k_warn(%struct.ath10k* %144, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %143, %135
  %151 = load i32, i32* %9, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %150, %125, %105, %94, %25
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @lockdep_assert_held(i32*) #2

declare dso_local i32 @ieee80211_iter_chan_contexts_atomic(i32, i32, %struct.cfg80211_chan_def**) #2

declare dso_local i64 @WARN_ON_ONCE(i32) #2

declare dso_local i32 @chan_to_phymode(%struct.cfg80211_chan_def*) #2

declare dso_local i32 @reinit_completion(i32*) #2

declare dso_local i32 @ath10k_wmi_vdev_start(%struct.ath10k*, %struct.wmi_vdev_start_request_arg*) #2

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32) #2

declare dso_local i32 @ath10k_vdev_setup_sync(%struct.ath10k*) #2

declare dso_local i32 @ath10k_wmi_vdev_up(%struct.ath10k*, i32, i32, i32) #2

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #2

declare dso_local i32 @ath10k_wmi_vdev_stop(%struct.ath10k*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
