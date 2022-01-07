; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_wx_set_retry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_wx_set_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.ipw2100_priv = type { i32, i32 }

@IW_RETRY_LIFETIME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_RETRY_LIMIT = common dso_local global i32 0, align 4
@STATUS_INITIALIZED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IW_RETRY_SHORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"SET Short Retry Limit -> %d\0A\00", align 1
@IW_RETRY_LONG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"SET Long Retry Limit -> %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"SET Both Retry Limits -> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw2100_wx_set_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_wx_set_retry(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
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
  %15 = bitcast %union.iwreq_data* %14 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IW_RETRY_LIFETIME, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %4
  %22 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %23 = bitcast %union.iwreq_data* %22 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21, %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %119

30:                                               ; preds = %21
  %31 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %32 = bitcast %union.iwreq_data* %31 to %struct.TYPE_2__*
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IW_RETRY_LIMIT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %119

39:                                               ; preds = %30
  %40 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %41 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %40, i32 0, i32 1
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %44 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @STATUS_INITIALIZED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %39
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %11, align 4
  br label %114

52:                                               ; preds = %39
  %53 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %54 = bitcast %union.iwreq_data* %53 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @IW_RETRY_SHORT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %52
  %61 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %62 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %63 = bitcast %union.iwreq_data* %62 to %struct.TYPE_2__*
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ipw2100_set_short_retry(%struct.ipw2100_priv* %61, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %68 = bitcast %union.iwreq_data* %67 to %struct.TYPE_2__*
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @IPW_DEBUG_WX(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %114

72:                                               ; preds = %52
  %73 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %74 = bitcast %union.iwreq_data* %73 to %struct.TYPE_2__*
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @IW_RETRY_LONG, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %72
  %81 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %82 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %83 = bitcast %union.iwreq_data* %82 to %struct.TYPE_2__*
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ipw2100_set_long_retry(%struct.ipw2100_priv* %81, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %88 = bitcast %union.iwreq_data* %87 to %struct.TYPE_2__*
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @IPW_DEBUG_WX(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %114

92:                                               ; preds = %72
  %93 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %94 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %95 = bitcast %union.iwreq_data* %94 to %struct.TYPE_2__*
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ipw2100_set_short_retry(%struct.ipw2100_priv* %93, i32 %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %92
  %102 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %103 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %104 = bitcast %union.iwreq_data* %103 to %struct.TYPE_2__*
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ipw2100_set_long_retry(%struct.ipw2100_priv* %102, i32 %106)
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %101, %92
  %109 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %110 = bitcast %union.iwreq_data* %109 to %struct.TYPE_2__*
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @IPW_DEBUG_WX(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %108, %80, %60, %49
  %115 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %116 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %115, i32 0, i32 1
  %117 = call i32 @mutex_unlock(i32* %116)
  %118 = load i32, i32* %11, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %114, %38, %27
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local %struct.ipw2100_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ipw2100_set_short_retry(%struct.ipw2100_priv*, i32) #1

declare dso_local i32 @IPW_DEBUG_WX(i8*, i32) #1

declare dso_local i32 @ipw2100_set_long_retry(%struct.ipw2100_priv*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
