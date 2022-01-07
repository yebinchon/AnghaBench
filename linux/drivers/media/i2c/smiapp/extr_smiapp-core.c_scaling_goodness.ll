; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_scaling_goodness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_scaling_goodness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.smiapp_sensor = type { i32* }
%struct.i2c_client = type { i32 }

@V4L2_SEL_FLAG_GE = common dso_local global i32 0, align 4
@SCALING_GOODNESS = common dso_local global i64 0, align 8
@V4L2_SEL_FLAG_LE = common dso_local global i32 0, align 4
@SMIAPP_LIMIT_MIN_X_OUTPUT_SIZE = common dso_local global i64 0, align 8
@SCALING_GOODNESS_EXTREME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"w %d ask_w %d h %d ask_h %d goodness %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32, i32, i32, i32)* @scaling_goodness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scaling_goodness(%struct.v4l2_subdev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.smiapp_sensor*, align 8
  %14 = alloca %struct.i2c_client*, align 8
  %15 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %17 = call %struct.smiapp_sensor* @to_smiapp_sensor(%struct.v4l2_subdev* %16)
  store %struct.smiapp_sensor* %17, %struct.smiapp_sensor** %13, align 8
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %19 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %18)
  store %struct.i2c_client* %19, %struct.i2c_client** %14, align 8
  store i32 0, i32* %15, align 4
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, -2
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = and i32 %22, -2
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = and i32 %24, -2
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = and i32 %26, -2
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @V4L2_SEL_FLAG_GE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %6
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i64, i64* @SCALING_GOODNESS, align 8
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %15, align 4
  br label %42

42:                                               ; preds = %36, %32
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i64, i64* @SCALING_GOODNESS, align 8
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = sub nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %15, align 4
  br label %52

52:                                               ; preds = %46, %42
  br label %53

53:                                               ; preds = %52, %6
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @V4L2_SEL_FLAG_LE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %53
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i64, i64* @SCALING_GOODNESS, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = sub nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %15, align 4
  br label %68

68:                                               ; preds = %62, %58
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i64, i64* @SCALING_GOODNESS, align 8
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = sub nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %15, align 4
  br label %78

78:                                               ; preds = %72, %68
  br label %79

79:                                               ; preds = %78, %53
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %9, align 4
  %82 = sub nsw i32 %80, %81
  %83 = call i64 @abs(i32 %82)
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = sub nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = sub nsw i32 %88, %89
  %91 = call i64 @abs(i32 %90)
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = sub nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %13, align 8
  %98 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* @SMIAPP_LIMIT_MIN_X_OUTPUT_SIZE, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %96, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %79
  %105 = load i64, i64* @SCALING_GOODNESS_EXTREME, align 8
  %106 = load i32, i32* %15, align 4
  %107 = sext i32 %106 to i64
  %108 = sub nsw i64 %107, %105
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %15, align 4
  br label %110

110:                                              ; preds = %104, %79
  %111 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  %112 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %111, i32 0, i32 0
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %15, align 4
  %118 = call i32 @dev_dbg(i32* %112, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %113, i32 %114, i32 %115, i32 %116, i32 %117)
  %119 = load i32, i32* %15, align 4
  ret i32 %119
}

declare dso_local %struct.smiapp_sensor* @to_smiapp_sensor(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
