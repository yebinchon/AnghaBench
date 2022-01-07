; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_wx_get_powermode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_wx_get_powermode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ipw_priv = type { i32 }

@MAX_WX_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Power save level: %d \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"(AC)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"(BATTERY)\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"(Timeout %dms, Period %dms)\00", align 1
@timeout_duration = common dso_local global i32* null, align 8
@period_duration = common dso_local global i32* null, align 8
@IPW_POWER_ENABLED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c" OFF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw_wx_get_powermode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_wx_get_powermode(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ipw_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.ipw_priv* @libipw_priv(%struct.net_device* %12)
  store %struct.ipw_priv* %13, %struct.ipw_priv** %9, align 8
  %14 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %15 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @IPW_POWER_LEVEL(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i8*, i8** %8, align 8
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = load i64, i64* @MAX_WX_STRING, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %19, i64 %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i8*, i8** %11, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8* %25, i8** %11, align 8
  %26 = load i32, i32* %10, align 4
  switch i32 %26, label %53 [
    i32 129, label %27
    i32 128, label %40
  ]

27:                                               ; preds = %4
  %28 = load i8*, i8** %11, align 8
  %29 = load i64, i64* @MAX_WX_STRING, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sub nsw i64 %29, %34
  %36 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %28, i64 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i8*, i8** %11, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %11, align 8
  br label %80

40:                                               ; preds = %4
  %41 = load i8*, i8** %11, align 8
  %42 = load i64, i64* @MAX_WX_STRING, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = sub nsw i64 %42, %47
  %49 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %41, i64 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i8*, i8** %11, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %11, align 8
  br label %80

53:                                               ; preds = %4
  %54 = load i8*, i8** %11, align 8
  %55 = load i64, i64* @MAX_WX_STRING, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = sub nsw i64 %55, %60
  %62 = load i32*, i32** @timeout_duration, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = sdiv i32 %67, 1000
  %69 = load i32*, i32** @period_duration, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = sdiv i32 %74, 1000
  %76 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %54, i64 %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %68, i32 %75)
  %77 = load i8*, i8** %11, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8* %79, i8** %11, align 8
  br label %80

80:                                               ; preds = %53, %40, %27
  %81 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %82 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IPW_POWER_ENABLED, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %100, label %87

87:                                               ; preds = %80
  %88 = load i8*, i8** %11, align 8
  %89 = load i64, i64* @MAX_WX_STRING, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = ptrtoint i8* %90 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = sub nsw i64 %89, %94
  %96 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %88, i64 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %97 = load i8*, i8** %11, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %11, align 8
  br label %100

100:                                              ; preds = %87, %80
  %101 = load i8*, i8** %11, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = ptrtoint i8* %101 to i64
  %104 = ptrtoint i8* %102 to i64
  %105 = sub i64 %103, %104
  %106 = add nsw i64 %105, 1
  %107 = trunc i64 %106 to i32
  %108 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %109 = bitcast %union.iwreq_data* %108 to %struct.TYPE_2__*
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 4
  ret i32 0
}

declare dso_local %struct.ipw_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @IPW_POWER_LEVEL(i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
