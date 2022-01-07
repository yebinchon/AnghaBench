; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_wx_set_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_wx_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_freq }
%struct.iw_freq = type { i64, i32 }
%struct.ipw_priv = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.libipw_geo = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"SET Freq/Channel -> any\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@LIBIPW_24GHZ_BAND = common dso_local global i32 0, align 4
@LIBIPW_CH_PASSIVE_ONLY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Invalid Ad-Hoc channel for 802.11a\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"SET Freq/Channel -> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw_wx_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_wx_set_freq(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ipw_priv*, align 8
  %11 = alloca %struct.libipw_geo*, align 8
  %12 = alloca %struct.iw_freq*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = call %struct.ipw_priv* @libipw_priv(%struct.net_device* %18)
  store %struct.ipw_priv* %19, %struct.ipw_priv** %10, align 8
  %20 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %21 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %20, i32 0, i32 1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = call %struct.libipw_geo* @libipw_get_geo(%struct.TYPE_9__* %22)
  store %struct.libipw_geo* %23, %struct.libipw_geo** %11, align 8
  %24 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %25 = bitcast %union.iwreq_data* %24 to %struct.iw_freq*
  store %struct.iw_freq* %25, %struct.iw_freq** %12, align 8
  store i32 0, i32* %13, align 4
  %26 = load %struct.iw_freq*, %struct.iw_freq** %12, align 8
  %27 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %4
  %31 = call i32 (i8*, ...) @IPW_DEBUG_WX(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %33 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %36 = call i32 @ipw_set_channel(%struct.ipw_priv* %35, i64 0)
  store i32 %36, i32* %13, align 4
  %37 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %38 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %5, align 4
  br label %141

41:                                               ; preds = %4
  %42 = load %struct.iw_freq*, %struct.iw_freq** %12, align 8
  %43 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %48 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = load %struct.iw_freq*, %struct.iw_freq** %12, align 8
  %51 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @libipw_freq_to_channel(%struct.TYPE_9__* %49, i64 %52)
  store i64 %53, i64* %15, align 8
  %54 = load i64, i64* %15, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %141

59:                                               ; preds = %46
  br label %64

60:                                               ; preds = %41
  %61 = load %struct.iw_freq*, %struct.iw_freq** %12, align 8
  %62 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %15, align 8
  br label %64

64:                                               ; preds = %60, %59
  %65 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %66 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %65, i32 0, i32 1
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = load i64, i64* %15, align 8
  %69 = call i32 @libipw_is_valid_channel(%struct.TYPE_9__* %67, i64 %68)
  store i32 %69, i32* %17, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %64
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %141

74:                                               ; preds = %64
  %75 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %76 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %75, i32 0, i32 1
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @IW_MODE_ADHOC, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %126

82:                                               ; preds = %74
  %83 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %84 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %83, i32 0, i32 1
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = load i64, i64* %15, align 8
  %87 = call i32 @libipw_channel_to_index(%struct.TYPE_9__* %85, i64 %86)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  br label %141

93:                                               ; preds = %82
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* @LIBIPW_24GHZ_BAND, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load %struct.libipw_geo*, %struct.libipw_geo** %11, align 8
  %99 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %98, i32 0, i32 1
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  br label %115

106:                                              ; preds = %93
  %107 = load %struct.libipw_geo*, %struct.libipw_geo** %11, align 8
  %108 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %107, i32 0, i32 0
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  br label %115

115:                                              ; preds = %106, %97
  %116 = phi i64 [ %105, %97 ], [ %114, %106 ]
  store i64 %116, i64* %16, align 8
  %117 = load i64, i64* %16, align 8
  %118 = load i64, i64* @LIBIPW_CH_PASSIVE_ONLY, align 8
  %119 = and i64 %117, %118
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = call i32 (i8*, ...) @IPW_DEBUG_WX(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %5, align 4
  br label %141

125:                                              ; preds = %115
  br label %126

126:                                              ; preds = %125, %74
  %127 = load %struct.iw_freq*, %struct.iw_freq** %12, align 8
  %128 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 (i8*, ...) @IPW_DEBUG_WX(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %129)
  %131 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %132 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %131, i32 0, i32 0
  %133 = call i32 @mutex_lock(i32* %132)
  %134 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %135 = load i64, i64* %15, align 8
  %136 = call i32 @ipw_set_channel(%struct.ipw_priv* %134, i64 %135)
  store i32 %136, i32* %13, align 4
  %137 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %138 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %137, i32 0, i32 0
  %139 = call i32 @mutex_unlock(i32* %138)
  %140 = load i32, i32* %13, align 4
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %126, %121, %90, %71, %56, %30
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local %struct.ipw_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local %struct.libipw_geo* @libipw_get_geo(%struct.TYPE_9__*) #1

declare dso_local i32 @IPW_DEBUG_WX(i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ipw_set_channel(%struct.ipw_priv*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @libipw_freq_to_channel(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @libipw_is_valid_channel(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @libipw_channel_to_index(%struct.TYPE_9__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
