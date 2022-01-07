; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_wx_set_essid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_wx_set_essid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.ipw2100_priv = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@STATUS_INITIALIZED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Setting ESSID to ANY\0A\00", align 1
@CFG_STATIC_ESSID = common dso_local global i32 0, align 4
@IW_ESSID_MAX_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"ESSID set to current ESSID.\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Setting ESSID: '%*pE' (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw2100_wx_set_essid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_wx_set_essid(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ipw2100_priv*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.ipw2100_priv* @libipw_priv(%struct.net_device* %13)
  store %struct.ipw2100_priv* %14, %struct.ipw2100_priv** %9, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %16 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %15, i32 0, i32 2
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %19 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @STATUS_INITIALIZED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %12, align 4
  br label %102

27:                                               ; preds = %4
  %28 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %29 = bitcast %union.iwreq_data* %28 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %35 = bitcast %union.iwreq_data* %34 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %41 = bitcast %union.iwreq_data* %40 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %11, align 4
  %44 = load i8*, i8** %8, align 8
  store i8* %44, i8** %10, align 8
  br label %45

45:                                               ; preds = %39, %33, %27
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = call i32 (i8*, ...) @IPW_DEBUG_WX(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @CFG_STATIC_ESSID, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %53 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %57 = call i32 @ipw2100_set_essid(%struct.ipw2100_priv* %56, i8* null, i32 0, i32 0)
  store i32 %57, i32* %12, align 4
  br label %102

58:                                               ; preds = %45
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %61 = call i32 @min(i32 %59, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* @CFG_STATIC_ESSID, align 4
  %63 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %64 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %68 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %58
  %73 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %74 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i8*, i8** %8, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @memcmp(i32 %75, i8* %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %72
  %81 = call i32 (i8*, ...) @IPW_DEBUG_WX(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %102

82:                                               ; preds = %72, %58
  %83 = load i32, i32* %11, align 4
  %84 = load i8*, i8** %10, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 (i8*, ...) @IPW_DEBUG_WX(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %83, i8* %84, i32 %85)
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %89 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %91 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load i8*, i8** %10, align 8
  %94 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %95 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @memcpy(i32 %92, i8* %93, i32 %96)
  %98 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @ipw2100_set_essid(%struct.ipw2100_priv* %98, i8* %99, i32 %100, i32 0)
  store i32 %101, i32* %12, align 4
  br label %102

102:                                              ; preds = %82, %80, %48, %24
  %103 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %104 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %103, i32 0, i32 2
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load i32, i32* %12, align 4
  ret i32 %106
}

declare dso_local %struct.ipw2100_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IPW_DEBUG_WX(i8*, ...) #1

declare dso_local i32 @ipw2100_set_essid(%struct.ipw2100_priv*, i8*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
