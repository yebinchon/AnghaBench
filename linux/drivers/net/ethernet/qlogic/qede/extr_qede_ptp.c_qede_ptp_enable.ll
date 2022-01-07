; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ptp.c_qede_ptp_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ptp.c_qede_ptp_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { %struct.qede_ptp*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.qede_ptp = type { i32, %struct.TYPE_8__, i32, %struct.qede_dev* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to allocate struct for PTP\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"PTP enable failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@QED_MAX_PHC_DRIFT_PPB = common dso_local global i32 0, align 4
@qede_ptp_adjfreq = common dso_local global i32 0, align 4
@qede_ptp_adjtime = common dso_local global i32 0, align 4
@qede_ptp_gettime = common dso_local global i32 0, align 4
@qede_ptp_settime = common dso_local global i32 0, align 4
@qede_ptp_ancillary_feature_enable = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"PTP clock registration failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qede_ptp_enable(%struct.qede_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qede_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qede_ptp*, align 8
  %7 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.qede_ptp* @kzalloc(i32 96, i32 %8)
  store %struct.qede_ptp* %9, %struct.qede_ptp** %6, align 8
  %10 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %11 = icmp ne %struct.qede_ptp* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %14 = call i32 @DP_INFO(%struct.qede_dev* %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %129

17:                                               ; preds = %2
  %18 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %19 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %20 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %19, i32 0, i32 3
  store %struct.qede_dev* %18, %struct.qede_dev** %20, align 8
  %21 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %22 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %21, i32 0, i32 3
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %27 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %29 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %17
  %33 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %34 = call i32 @DP_INFO(%struct.qede_dev* %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %122

37:                                               ; preds = %17
  %38 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %39 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %40 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %39, i32 0, i32 0
  store %struct.qede_ptp* %38, %struct.qede_ptp** %40, align 8
  %41 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @qede_ptp_init(%struct.qede_dev* %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %122

47:                                               ; preds = %37
  %48 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %49 = call i32 @qede_ptp_cfg_filters(%struct.qede_dev* %48)
  %50 = load i32, i32* @THIS_MODULE, align 4
  %51 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %52 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 11
  store i32 %50, i32* %53, align 8
  %54 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %55 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 10
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %59 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %58, i32 0, i32 2
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @snprintf(i32 %57, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* @QED_MAX_PHC_DRIFT_PPB, align 4
  %65 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %66 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 9
  store i32 %64, i32* %67, align 8
  %68 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %69 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 8
  store i64 0, i64* %70, align 8
  %71 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %72 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 7
  store i64 0, i64* %73, align 8
  %74 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %75 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 6
  store i64 0, i64* %76, align 8
  %77 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %78 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 5
  store i64 0, i64* %79, align 8
  %80 = load i32, i32* @qede_ptp_adjfreq, align 4
  %81 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %82 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 4
  store i32 %80, i32* %83, align 8
  %84 = load i32, i32* @qede_ptp_adjtime, align 4
  %85 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %86 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 3
  store i32 %84, i32* %87, align 4
  %88 = load i32, i32* @qede_ptp_gettime, align 4
  %89 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %90 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  store i32 %88, i32* %91, align 8
  %92 = load i32, i32* @qede_ptp_settime, align 4
  %93 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %94 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  store i32 %92, i32* %95, align 4
  %96 = load i32, i32* @qede_ptp_ancillary_feature_enable, align 4
  %97 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %98 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  %100 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %101 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %100, i32 0, i32 1
  %102 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %103 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %102, i32 0, i32 1
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = call i32 @ptp_clock_register(%struct.TYPE_8__* %101, i32* %105)
  %107 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %108 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %110 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @IS_ERR(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %47
  %115 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %116 = call i32 @DP_ERR(%struct.qede_dev* %115, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %117 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %118 = call i32 @qede_ptp_disable(%struct.qede_dev* %117)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %7, align 4
  br label %125

121:                                              ; preds = %47
  store i32 0, i32* %3, align 4
  br label %129

122:                                              ; preds = %46, %32
  %123 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %124 = call i32 @kfree(%struct.qede_ptp* %123)
  br label %125

125:                                              ; preds = %122, %114
  %126 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %127 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %126, i32 0, i32 0
  store %struct.qede_ptp* null, %struct.qede_ptp** %127, align 8
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %125, %121, %12
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.qede_ptp* @kzalloc(i32, i32) #1

declare dso_local i32 @DP_INFO(%struct.qede_dev*, i8*) #1

declare dso_local i32 @qede_ptp_init(%struct.qede_dev*, i32) #1

declare dso_local i32 @qede_ptp_cfg_filters(%struct.qede_dev*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @ptp_clock_register(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @DP_ERR(%struct.qede_dev*, i8*) #1

declare dso_local i32 @qede_ptp_disable(%struct.qede_dev*) #1

declare dso_local i32 @kfree(%struct.qede_ptp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
