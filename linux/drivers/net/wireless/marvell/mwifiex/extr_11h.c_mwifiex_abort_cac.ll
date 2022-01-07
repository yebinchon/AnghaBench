; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11h.c_mwifiex_abort_cac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11h.c_mwifiex_abort_cac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to stop CAC in FW\0A\00", align 1
@MSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Aborting delayed work for CAC.\0A\00", align 1
@NL80211_RADAR_CAC_ABORTED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_abort_cac(%struct.mwifiex_private* %0) #0 {
  %2 = alloca %struct.mwifiex_private*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %2, align 8
  %3 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %4 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %3, i32 0, i32 4
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %37

8:                                                ; preds = %1
  %9 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %10 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %11 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %10, i32 0, i32 0
  %12 = call i64 @mwifiex_stop_radar_detection(%struct.mwifiex_private* %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %16 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ERROR, align 4
  %19 = call i32 @mwifiex_dbg(i32 %17, i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %14, %8
  %21 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %22 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MSG, align 4
  %25 = call i32 @mwifiex_dbg(i32 %23, i32 %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %27 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %26, i32 0, i32 2
  %28 = call i32 @cancel_delayed_work_sync(i32* %27)
  %29 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %30 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %33 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %32, i32 0, i32 0
  %34 = load i32, i32* @NL80211_RADAR_CAC_ABORTED, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32 @cfg80211_cac_event(i32 %31, i32* %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %20, %1
  ret void
}

declare dso_local i64 @mwifiex_stop_radar_detection(%struct.mwifiex_private*, i32*) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @cfg80211_cac_event(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
