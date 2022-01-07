; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_wx_set_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_wx_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_freq }
%struct.iw_freq = type { i32, i32 }
%struct.ipw2100_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@IW_MODE_INFRA = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@STATUS_INITIALIZED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@REG_MAX_CHANNEL = common dso_local global i32 0, align 4
@ipw2100_frequencies = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"SET Freq/Channel -> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw2100_wx_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_wx_set_freq(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ipw2100_priv*, align 8
  %11 = alloca %struct.iw_freq*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.ipw2100_priv* @libipw_priv(%struct.net_device* %15)
  store %struct.ipw2100_priv* %16, %struct.ipw2100_priv** %10, align 8
  %17 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %18 = bitcast %union.iwreq_data* %17 to %struct.iw_freq*
  store %struct.iw_freq* %18, %struct.iw_freq** %11, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %20 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IW_MODE_INFRA, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %116

29:                                               ; preds = %4
  %30 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %31 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %30, i32 0, i32 1
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %34 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @STATUS_INITIALIZED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %12, align 4
  br label %111

42:                                               ; preds = %29
  %43 = load %struct.iw_freq*, %struct.iw_freq** %11, align 8
  %44 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %87

47:                                               ; preds = %42
  %48 = load %struct.iw_freq*, %struct.iw_freq** %11, align 8
  %49 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp sge i32 %50, 241200000
  br i1 %51, label %52, label %86

52:                                               ; preds = %47
  %53 = load %struct.iw_freq*, %struct.iw_freq** %11, align 8
  %54 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp sle i32 %55, 248700000
  br i1 %56, label %57, label %86

57:                                               ; preds = %52
  %58 = load %struct.iw_freq*, %struct.iw_freq** %11, align 8
  %59 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sdiv i32 %60, 100000
  store i32 %61, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %62

62:                                               ; preds = %76, %57
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* @REG_MAX_CHANNEL, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load i32, i32* %13, align 4
  %68 = load i32*, i32** @ipw2100_frequencies, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %67, %72
  br label %74

74:                                               ; preds = %66, %62
  %75 = phi i1 [ false, %62 ], [ %73, %66 ]
  br i1 %75, label %76, label %79

76:                                               ; preds = %74
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %14, align 4
  br label %62

79:                                               ; preds = %74
  %80 = load %struct.iw_freq*, %struct.iw_freq** %11, align 8
  %81 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %80, i32 0, i32 0
  store i32 0, i32* %81, align 4
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %82, 1
  %84 = load %struct.iw_freq*, %struct.iw_freq** %11, align 8
  %85 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %79, %52, %47
  br label %87

87:                                               ; preds = %86, %42
  %88 = load %struct.iw_freq*, %struct.iw_freq** %11, align 8
  %89 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load %struct.iw_freq*, %struct.iw_freq** %11, align 8
  %94 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %95, 1000
  br i1 %96, label %97, label %100

97:                                               ; preds = %92, %87
  %98 = load i32, i32* @EOPNOTSUPP, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %12, align 4
  br label %111

100:                                              ; preds = %92
  %101 = load %struct.iw_freq*, %struct.iw_freq** %11, align 8
  %102 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @IPW_DEBUG_WX(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %103)
  %105 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %106 = load %struct.iw_freq*, %struct.iw_freq** %11, align 8
  %107 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ipw2100_set_channel(%struct.ipw2100_priv* %105, i32 %108, i32 0)
  store i32 %109, i32* %12, align 4
  br label %110

110:                                              ; preds = %100
  br label %111

111:                                              ; preds = %110, %97, %39
  %112 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %113 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %112, i32 0, i32 1
  %114 = call i32 @mutex_unlock(i32* %113)
  %115 = load i32, i32* %12, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %111, %26
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local %struct.ipw2100_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IPW_DEBUG_WX(i8*, i32) #1

declare dso_local i32 @ipw2100_set_channel(%struct.ipw2100_priv*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
