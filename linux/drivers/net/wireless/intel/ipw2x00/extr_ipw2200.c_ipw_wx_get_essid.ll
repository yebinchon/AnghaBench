; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_wx_get_essid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_wx_get_essid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ipw_priv = type { i32, i32, i32, i32, i32 }

@CFG_STATIC_ESSID = common dso_local global i32 0, align 4
@STATUS_ASSOCIATED = common dso_local global i32 0, align 4
@STATUS_ASSOCIATING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Getting essid: '%*pE'\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Getting essid: ANY\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw_wx_get_essid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_wx_get_essid(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ipw_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.ipw_priv* @libipw_priv(%struct.net_device* %10)
  store %struct.ipw_priv* %11, %struct.ipw_priv** %9, align 8
  %12 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %13 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %12, i32 0, i32 2
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %16 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CFG_STATIC_ESSID, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %4
  %22 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %23 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @STATUS_ASSOCIATED, align 4
  %26 = load i32, i32* @STATUS_ASSOCIATING, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %21, %4
  %31 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %32 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %35 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, ...) @IPW_DEBUG_WX(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36)
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %40 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %43 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @memcpy(i8* %38, i32 %41, i32 %44)
  %46 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %47 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %50 = bitcast %union.iwreq_data* %49 to %struct.TYPE_2__*
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %53 = bitcast %union.iwreq_data* %52 to %struct.TYPE_2__*
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  br label %63

55:                                               ; preds = %21
  %56 = call i32 (i8*, ...) @IPW_DEBUG_WX(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %58 = bitcast %union.iwreq_data* %57 to %struct.TYPE_2__*
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  %60 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %61 = bitcast %union.iwreq_data* %60 to %struct.TYPE_2__*
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 4
  br label %63

63:                                               ; preds = %55, %30
  %64 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %65 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %64, i32 0, i32 2
  %66 = call i32 @mutex_unlock(i32* %65)
  ret i32 0
}

declare dso_local %struct.ipw_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IPW_DEBUG_WX(i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
