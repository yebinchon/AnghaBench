; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_wx_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_wx_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { i64 }
%struct.ipw2100_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"SET Mode -> %d\0A\00", align 1
@STATUS_INITIALIZED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw2100_wx_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_wx_set_mode(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ipw2100_priv*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.ipw2100_priv* @libipw_priv(%struct.net_device* %12)
  store %struct.ipw2100_priv* %13, %struct.ipw2100_priv** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %15 = bitcast %union.iwreq_data* %14 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @IPW_DEBUG_WX(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %19 = bitcast %union.iwreq_data* %18 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %22 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %20, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %58

28:                                               ; preds = %4
  %29 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %30 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %33 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @STATUS_INITIALIZED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %28
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %11, align 4
  br label %53

41:                                               ; preds = %28
  %42 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %43 = bitcast %union.iwreq_data* %42 to i64*
  %44 = load i64, i64* %43, align 8
  switch i64 %44, label %49 [
    i64 131, label %45
    i64 129, label %48
    i64 130, label %48
  ]

45:                                               ; preds = %41
  %46 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %47 = call i32 @ipw2100_switch_mode(%struct.ipw2100_priv* %46, i32 131)
  store i32 %47, i32* %11, align 4
  br label %52

48:                                               ; preds = %41, %41
  br label %49

49:                                               ; preds = %41, %48
  %50 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %51 = call i32 @ipw2100_switch_mode(%struct.ipw2100_priv* %50, i32 129)
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %49, %45
  br label %53

53:                                               ; preds = %52, %38
  %54 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %55 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %54, i32 0, i32 1
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %53, %27
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.ipw2100_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @IPW_DEBUG_WX(i8*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ipw2100_switch_mode(%struct.ipw2100_priv*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
