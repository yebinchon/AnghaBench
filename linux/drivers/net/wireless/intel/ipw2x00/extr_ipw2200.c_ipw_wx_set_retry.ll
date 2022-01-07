; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_wx_set_retry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_wx_set_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.ipw_priv = type { i8*, i8*, i32 }

@IW_RETRY_LIFETIME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_RETRY_LIMIT = common dso_local global i32 0, align 4
@IW_RETRY_SHORT = common dso_local global i32 0, align 4
@IW_RETRY_LONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"SET retry limit -> short:%d long:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw_wx_set_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_wx_set_retry(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
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
  %13 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %14 = bitcast %union.iwreq_data* %13 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IW_RETRY_LIFETIME, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %4
  %21 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %22 = bitcast %union.iwreq_data* %21 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %127

29:                                               ; preds = %20
  %30 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %31 = bitcast %union.iwreq_data* %30 to %struct.TYPE_2__*
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @IW_RETRY_LIMIT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %127

38:                                               ; preds = %29
  %39 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %40 = bitcast %union.iwreq_data* %39 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %46 = bitcast %union.iwreq_data* %45 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp sge i32 %48, 255
  br i1 %49, label %50, label %53

50:                                               ; preds = %44, %38
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %127

53:                                               ; preds = %44
  %54 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %55 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %54, i32 0, i32 2
  %56 = call i32 @mutex_lock(i32* %55)
  %57 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %58 = bitcast %union.iwreq_data* %57 to %struct.TYPE_2__*
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @IW_RETRY_SHORT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %53
  %65 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %66 = bitcast %union.iwreq_data* %65 to %struct.TYPE_2__*
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %72 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  br label %108

73:                                               ; preds = %53
  %74 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %75 = bitcast %union.iwreq_data* %74 to %struct.TYPE_2__*
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @IW_RETRY_LONG, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %73
  %82 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %83 = bitcast %union.iwreq_data* %82 to %struct.TYPE_2__*
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %89 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  br label %107

90:                                               ; preds = %73
  %91 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %92 = bitcast %union.iwreq_data* %91 to %struct.TYPE_2__*
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  %97 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %98 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  %99 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %100 = bitcast %union.iwreq_data* %99 to %struct.TYPE_2__*
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i8*
  %105 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %106 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  br label %107

107:                                              ; preds = %90, %81
  br label %108

108:                                              ; preds = %107, %64
  %109 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %110 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %111 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %114 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @ipw_send_retry_limit(%struct.ipw_priv* %109, i8* %112, i8* %115)
  %117 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %118 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %117, i32 0, i32 2
  %119 = call i32 @mutex_unlock(i32* %118)
  %120 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %121 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %124 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @IPW_DEBUG_WX(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %122, i8* %125)
  store i32 0, i32* %5, align 4
  br label %127

127:                                              ; preds = %108, %50, %37, %26
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local %struct.ipw_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ipw_send_retry_limit(%struct.ipw_priv*, i8*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @IPW_DEBUG_WX(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
