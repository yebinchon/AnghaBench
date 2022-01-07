; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_wx_get_powermode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_wx_get_powermode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ipw2100_priv = type { i32 }

@IPW_POWER_ENABLED = common dso_local global i32 0, align 4
@MAX_POWER_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Power save level: %d (Off)\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Power save level: %d (None)\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Power save level: %d (Auto)\00", align 1
@timeout_duration = common dso_local global i32* null, align 8
@period_duration = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [49 x i8] c"Power save level: %d (Timeout %dms, Period %dms)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw2100_wx_get_powermode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_wx_get_powermode(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ipw2100_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.ipw2100_priv* @libipw_priv(%struct.net_device* %13)
  store %struct.ipw2100_priv* %14, %struct.ipw2100_priv** %9, align 8
  %15 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %16 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @IPW_POWER_LEVEL(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %20 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IPW_POWER_ENABLED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %4
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* @MAX_POWER_STRING, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %26, i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %64

30:                                               ; preds = %4
  %31 = load i32, i32* %10, align 4
  switch i32 %31, label %42 [
    i32 128, label %32
    i32 129, label %37
  ]

32:                                               ; preds = %30
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* @MAX_POWER_STRING, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %33, i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %63

37:                                               ; preds = %30
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* @MAX_POWER_STRING, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %38, i32 %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %63

42:                                               ; preds = %30
  %43 = load i32*, i32** @timeout_duration, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %48, 1000
  store i32 %49, i32* %11, align 4
  %50 = load i32*, i32** @period_duration, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = sdiv i32 %55, 1000
  store i32 %56, i32* %12, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* @MAX_POWER_STRING, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %57, i32 %58, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %42, %37, %32
  br label %64

64:                                               ; preds = %63, %25
  %65 = load i8*, i8** %8, align 8
  %66 = call i64 @strlen(i8* %65)
  %67 = add nsw i64 %66, 1
  %68 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %69 = bitcast %union.iwreq_data* %68 to %struct.TYPE_2__*
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i64 %67, i64* %70, align 8
  ret i32 0
}

declare dso_local %struct.ipw2100_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @IPW_POWER_LEVEL(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
