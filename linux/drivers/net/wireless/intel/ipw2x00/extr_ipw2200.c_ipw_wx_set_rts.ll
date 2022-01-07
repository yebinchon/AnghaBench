; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_wx_set_rts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_wx_set_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.ipw_priv = type { i64, i32 }

@DEFAULT_RTS_THRESHOLD = common dso_local global i64 0, align 8
@MIN_RTS_THRESHOLD = common dso_local global i64 0, align 8
@MAX_RTS_THRESHOLD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"SET RTS Threshold -> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw_wx_set_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_wx_set_rts(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ipw_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.ipw_priv* @libipw_priv(%struct.net_device* %11)
  store %struct.ipw_priv* %12, %struct.ipw_priv** %10, align 8
  %13 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %14 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %17 = bitcast %union.iwreq_data* %16 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %4
  %22 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %23 = bitcast %union.iwreq_data* %22 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %21, %4
  %28 = load i64, i64* @DEFAULT_RTS_THRESHOLD, align 8
  %29 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %30 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %58

31:                                               ; preds = %21
  %32 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %33 = bitcast %union.iwreq_data* %32 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MIN_RTS_THRESHOLD, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %31
  %39 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %40 = bitcast %union.iwreq_data* %39 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MAX_RTS_THRESHOLD, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %38, %31
  %46 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %47 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %46, i32 0, i32 1
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %71

51:                                               ; preds = %38
  %52 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %53 = bitcast %union.iwreq_data* %52 to %struct.TYPE_2__*
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %57 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %51, %27
  %59 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %60 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %61 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @ipw_send_rts_threshold(%struct.ipw_priv* %59, i64 %62)
  %64 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %65 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %64, i32 0, i32 1
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %68 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @IPW_DEBUG_WX(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %69)
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %58, %45
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local %struct.ipw_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ipw_send_rts_threshold(%struct.ipw_priv*, i64) #1

declare dso_local i32 @IPW_DEBUG_WX(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
