; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_wx_set_essid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_wx_set_essid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ipw_priv = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Setting ESSID to ANY\0A\00", align 1
@CFG_STATIC_ESSID = common dso_local global i32 0, align 4
@IW_ESSID_MAX_SIZE = common dso_local global i32 0, align 4
@STATUS_ASSOCIATED = common dso_local global i32 0, align 4
@STATUS_ASSOCIATING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"ESSID set to current ESSID.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Setting ESSID: '%*pE' (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"[re]association triggered due to ESSID change.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw_wx_set_essid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_wx_set_essid(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ipw_priv*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.ipw_priv* @libipw_priv(%struct.net_device* %12)
  store %struct.ipw_priv* %13, %struct.ipw_priv** %10, align 8
  %14 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %15 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %14, i32 0, i32 2
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %18 = bitcast %union.iwreq_data* %17 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %4
  %23 = call i32 (i8*, ...) @IPW_DEBUG_WX(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %25 = call i32 @ipw_disassociate(%struct.ipw_priv* %24)
  %26 = load i32, i32* @CFG_STATIC_ESSID, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %29 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %33 = call i32 @ipw_associate(%struct.ipw_priv* %32)
  %34 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %35 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %34, i32 0, i32 2
  %36 = call i32 @mutex_unlock(i32* %35)
  store i32 0, i32* %5, align 4
  br label %104

37:                                               ; preds = %4
  %38 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %39 = bitcast %union.iwreq_data* %38 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %44 = call i32 @min(i32 %42, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* @CFG_STATIC_ESSID, align 4
  %46 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %47 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %51 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %37
  %56 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %57 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @memcmp(i32 %58, i8* %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %77, label %63

63:                                               ; preds = %55
  %64 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %65 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @STATUS_ASSOCIATED, align 4
  %68 = load i32, i32* @STATUS_ASSOCIATING, align 4
  %69 = or i32 %67, %68
  %70 = and i32 %66, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %63
  %73 = call i32 (i8*, ...) @IPW_DEBUG_WX(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %75 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %74, i32 0, i32 2
  %76 = call i32 @mutex_unlock(i32* %75)
  store i32 0, i32* %5, align 4
  br label %104

77:                                               ; preds = %63, %55, %37
  %78 = load i32, i32* %11, align 4
  %79 = load i8*, i8** %9, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 (i8*, ...) @IPW_DEBUG_WX(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %78, i8* %79, i32 %80)
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %84 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %86 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i8*, i8** %9, align 8
  %89 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %90 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @memcpy(i32 %87, i8* %88, i32 %91)
  %93 = call i32 @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %94 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %95 = call i32 @ipw_disassociate(%struct.ipw_priv* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %77
  %98 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %99 = call i32 @ipw_associate(%struct.ipw_priv* %98)
  br label %100

100:                                              ; preds = %97, %77
  %101 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %102 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %101, i32 0, i32 2
  %103 = call i32 @mutex_unlock(i32* %102)
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %100, %72, %22
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local %struct.ipw_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IPW_DEBUG_WX(i8*, ...) #1

declare dso_local i32 @ipw_disassociate(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_associate(%struct.ipw_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @IPW_DEBUG_ASSOC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
