; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11h.c_mwifiex_11h_handle_radar_detected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11h.c_mwifiex_11h_handle_radar_detected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.mwifiex_radar_det_event = type { i32, i32 }

@MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"radar detected; indicating kernel\0A\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to stop CAC in FW\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"regdomain: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"radar detection type: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_11h_handle_radar_detected(%struct.mwifiex_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.mwifiex_radar_det_event*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %8, 4
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.mwifiex_radar_det_event*
  store %struct.mwifiex_radar_det_event* %11, %struct.mwifiex_radar_det_event** %5, align 8
  %12 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %13 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* @MSG, align 4
  %16 = call i32 (%struct.TYPE_2__*, i32, i8*, ...) @mwifiex_dbg(%struct.TYPE_2__* %14, i32 %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %18 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %19 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %18, i32 0, i32 1
  %20 = call i64 @mwifiex_stop_radar_detection(%struct.mwifiex_private* %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %24 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* @ERROR, align 4
  %27 = call i32 (%struct.TYPE_2__*, i32, i8*, ...) @mwifiex_dbg(%struct.TYPE_2__* %25, i32 %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %22, %2
  %29 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %30 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %35 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %34, i32 0, i32 1
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i32 @cfg80211_radar_event(i32 %33, i32* %35, i32 %36)
  %38 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %39 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* @MSG, align 4
  %42 = load %struct.mwifiex_radar_det_event*, %struct.mwifiex_radar_det_event** %5, align 8
  %43 = getelementptr inbounds %struct.mwifiex_radar_det_event, %struct.mwifiex_radar_det_event* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (%struct.TYPE_2__*, i32, i8*, ...) @mwifiex_dbg(%struct.TYPE_2__* %40, i32 %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %47 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* @MSG, align 4
  %50 = load %struct.mwifiex_radar_det_event*, %struct.mwifiex_radar_det_event** %5, align 8
  %51 = getelementptr inbounds %struct.mwifiex_radar_det_event, %struct.mwifiex_radar_det_event* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (%struct.TYPE_2__*, i32, i8*, ...) @mwifiex_dbg(%struct.TYPE_2__* %48, i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  ret i32 0
}

declare dso_local i32 @mwifiex_dbg(%struct.TYPE_2__*, i32, i8*, ...) #1

declare dso_local i64 @mwifiex_stop_radar_detection(%struct.mwifiex_private*, i32*) #1

declare dso_local i32 @cfg80211_radar_event(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
