; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_wx_get_retry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_wx_get_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.ipw_priv = type { i32, i32, i32 }

@IW_RETRY_TYPE = common dso_local global i32 0, align 4
@IW_RETRY_LIFETIME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_RETRY_LONG = common dso_local global i32 0, align 4
@IW_RETRY_LIMIT = common dso_local global i32 0, align 4
@IW_RETRY_SHORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"GET retry -> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw_wx_get_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_wx_get_retry(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
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
  %14 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %17 = bitcast %union.iwreq_data* %16 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %20 = bitcast %union.iwreq_data* %19 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IW_RETRY_TYPE, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @IW_RETRY_LIFETIME, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %4
  %28 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %29 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %96

33:                                               ; preds = %4
  %34 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %35 = bitcast %union.iwreq_data* %34 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IW_RETRY_LONG, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %33
  %42 = load i32, i32* @IW_RETRY_LIMIT, align 4
  %43 = load i32, i32* @IW_RETRY_LONG, align 4
  %44 = or i32 %42, %43
  %45 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %46 = bitcast %union.iwreq_data* %45 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %49 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %52 = bitcast %union.iwreq_data* %51 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  br label %87

54:                                               ; preds = %33
  %55 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %56 = bitcast %union.iwreq_data* %55 to %struct.TYPE_2__*
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @IW_RETRY_SHORT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %54
  %63 = load i32, i32* @IW_RETRY_LIMIT, align 4
  %64 = load i32, i32* @IW_RETRY_SHORT, align 4
  %65 = or i32 %63, %64
  %66 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %67 = bitcast %union.iwreq_data* %66 to %struct.TYPE_2__*
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %70 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %73 = bitcast %union.iwreq_data* %72 to %struct.TYPE_2__*
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  br label %86

75:                                               ; preds = %54
  %76 = load i32, i32* @IW_RETRY_LIMIT, align 4
  %77 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %78 = bitcast %union.iwreq_data* %77 to %struct.TYPE_2__*
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  %80 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %81 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %84 = bitcast %union.iwreq_data* %83 to %struct.TYPE_2__*
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  br label %86

86:                                               ; preds = %75, %62
  br label %87

87:                                               ; preds = %86, %41
  %88 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %89 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %88, i32 0, i32 0
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %92 = bitcast %union.iwreq_data* %91 to %struct.TYPE_2__*
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @IPW_DEBUG_WX(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %94)
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %87, %27
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local %struct.ipw_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @IPW_DEBUG_WX(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
