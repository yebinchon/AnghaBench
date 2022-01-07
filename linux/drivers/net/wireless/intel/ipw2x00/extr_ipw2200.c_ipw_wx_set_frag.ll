; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_wx_set_frag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_wx_set_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.ipw_priv = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@DEFAULT_FTS = common dso_local global i32 0, align 4
@MIN_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@MAX_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"SET Frag Threshold -> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw_wx_set_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_wx_set_frag(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
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
  %17 = bitcast %union.iwreq_data* %16 to %struct.TYPE_4__*
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %4
  %22 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %23 = bitcast %union.iwreq_data* %22 to %struct.TYPE_4__*
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %21, %4
  %28 = load i32, i32* @DEFAULT_FTS, align 4
  %29 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %30 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 4
  br label %63

33:                                               ; preds = %21
  %34 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %35 = bitcast %union.iwreq_data* %34 to %struct.TYPE_4__*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MIN_FRAG_THRESHOLD, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %33
  %41 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %42 = bitcast %union.iwreq_data* %41 to %struct.TYPE_4__*
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @MAX_FRAG_THRESHOLD, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %40, %33
  %48 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %49 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %78

53:                                               ; preds = %40
  %54 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %55 = bitcast %union.iwreq_data* %54 to %struct.TYPE_4__*
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, -2
  %59 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %60 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %53, %27
  %64 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %65 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %66 = bitcast %union.iwreq_data* %65 to %struct.TYPE_4__*
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @ipw_send_frag_threshold(%struct.ipw_priv* %64, i32 %68)
  %70 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %71 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %70, i32 0, i32 0
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %74 = bitcast %union.iwreq_data* %73 to %struct.TYPE_4__*
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @IPW_DEBUG_WX(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %76)
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %63, %47
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.ipw_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ipw_send_frag_threshold(%struct.ipw_priv*, i32) #1

declare dso_local i32 @IPW_DEBUG_WX(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
