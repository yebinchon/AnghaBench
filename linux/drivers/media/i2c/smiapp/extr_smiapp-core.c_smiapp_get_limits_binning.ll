; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_get_limits_binning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_get_limits_binning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.smiapp_sensor = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_client = type { i32 }

@smiapp_get_limits_binning.limits = internal constant [7 x i64] [i64 132, i64 136, i64 128, i64 134, i64 130, i64 138, i64 140], align 16
@smiapp_get_limits_binning.limits_replace = internal constant [7 x i64] [i64 133, i64 137, i64 129, i64 135, i64 131, i64 139, i64 141], align 16
@SMIAPP_LIMIT_BINNING_CAPABILITY = common dso_local global i64 0, align 8
@SMIAPP_BINNING_CAPABILITY_NO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"replace limit 0x%8.8x \22%s\22 = %d, 0x%x\0A\00", align 1
@smiapp_reg_limits = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smiapp_sensor*)* @smiapp_get_limits_binning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smiapp_get_limits_binning(%struct.smiapp_sensor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smiapp_sensor*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.smiapp_sensor* %0, %struct.smiapp_sensor** %3, align 8
  %7 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %8 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %4, align 8
  %12 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %13 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @SMIAPP_LIMIT_BINNING_CAPABILITY, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SMIAPP_BINNING_CAPABILITY_NO, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %43, %20
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @ARRAY_SIZE(i64* getelementptr inbounds ([7 x i64], [7 x i64]* @smiapp_get_limits_binning.limits, i64 0, i64 0))
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %21
  %26 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %27 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [7 x i64], [7 x i64]* @smiapp_get_limits_binning.limits_replace, i64 0, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %36 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [7 x i64], [7 x i64]* @smiapp_get_limits_binning.limits, i64 0, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  store i32 %34, i32* %42, align 4
  br label %43

43:                                               ; preds = %25
  %44 = load i32, i32* %5, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %21

46:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %141

47:                                               ; preds = %1
  %48 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %49 = call i32 @ARRAY_SIZE(i64* getelementptr inbounds ([7 x i64], [7 x i64]* @smiapp_get_limits_binning.limits, i64 0, i64 0))
  %50 = call i32 @smiapp_get_limits(%struct.smiapp_sensor* %48, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @smiapp_get_limits_binning.limits, i64 0, i64 0), i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %141

55:                                               ; preds = %47
  %56 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %57 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 132
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %55
  %63 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %64 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 128
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %62
  %70 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %71 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 130
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %141

77:                                               ; preds = %69, %62, %55
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %137, %77
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @ARRAY_SIZE(i64* getelementptr inbounds ([7 x i64], [7 x i64]* @smiapp_get_limits_binning.limits, i64 0, i64 0))
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %140

82:                                               ; preds = %78
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** @smiapp_reg_limits, align 8
  %86 = load i32, i32* %5, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [7 x i64], [7 x i64]* @smiapp_get_limits_binning.limits, i64 0, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @smiapp_reg_limits, align 8
  %94 = load i32, i32* %5, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds [7 x i64], [7 x i64]* @smiapp_get_limits_binning.limits, i64 0, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %102 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [7 x i64], [7 x i64]* @smiapp_get_limits_binning.limits_replace, i64 0, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %111 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds [7 x i64], [7 x i64]* @smiapp_get_limits_binning.limits_replace, i64 0, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i32, i32* %112, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @dev_dbg(i32* %84, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %100, i32 %109, i32 %118)
  %120 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %121 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds [7 x i64], [7 x i64]* @smiapp_get_limits_binning.limits_replace, i64 0, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds i32, i32* %122, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %130 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds [7 x i64], [7 x i64]* @smiapp_get_limits_binning.limits, i64 0, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds i32, i32* %131, i64 %135
  store i32 %128, i32* %136, align 4
  br label %137

137:                                              ; preds = %82
  %138 = load i32, i32* %5, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %5, align 4
  br label %78

140:                                              ; preds = %78
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %140, %76, %53, %46
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @smiapp_get_limits(%struct.smiapp_sensor*, i64*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
