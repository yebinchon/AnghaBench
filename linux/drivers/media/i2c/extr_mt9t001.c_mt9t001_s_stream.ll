; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9t001.c_mt9t001_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9t001.c_mt9t001_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mt9t001_platform_data* }
%struct.mt9t001_platform_data = type { i64 }
%struct.mt9t001 = type { %struct.v4l2_rect, %struct.v4l2_mbus_framefmt }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32 }

@MT9T001_OUTPUT_CONTROL_CHIP_ENABLE = common dso_local global i32 0, align 4
@MT9T001_PIXEL_CLOCK = common dso_local global i32 0, align 4
@MT9T001_PIXEL_CLOCK_INVERT = common dso_local global i32 0, align 4
@MT9T001_ROW_ADDRESS_MODE = common dso_local global i32 0, align 4
@MT9T001_COLUMN_ADDRESS_MODE = common dso_local global i32 0, align 4
@MT9T001_COLUMN_START = common dso_local global i32 0, align 4
@MT9T001_ROW_START = common dso_local global i32 0, align 4
@MT9T001_WINDOW_WIDTH = common dso_local global i32 0, align 4
@MT9T001_WINDOW_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @mt9t001_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9t001_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.mt9t001_platform_data*, align 8
  %9 = alloca %struct.mt9t001*, align 8
  %10 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %11 = alloca %struct.v4l2_rect*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* @MT9T001_OUTPUT_CONTROL_CHIP_ENABLE, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %17 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %16)
  store %struct.i2c_client* %17, %struct.i2c_client** %7, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.mt9t001_platform_data*, %struct.mt9t001_platform_data** %20, align 8
  store %struct.mt9t001_platform_data* %21, %struct.mt9t001_platform_data** %8, align 8
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %23 = call %struct.mt9t001* @to_mt9t001(%struct.v4l2_subdev* %22)
  store %struct.mt9t001* %23, %struct.mt9t001** %9, align 8
  %24 = load %struct.mt9t001*, %struct.mt9t001** %9, align 8
  %25 = getelementptr inbounds %struct.mt9t001, %struct.mt9t001* %24, i32 0, i32 1
  store %struct.v4l2_mbus_framefmt* %25, %struct.v4l2_mbus_framefmt** %10, align 8
  %26 = load %struct.mt9t001*, %struct.mt9t001** %9, align 8
  %27 = getelementptr inbounds %struct.mt9t001, %struct.mt9t001* %26, i32 0, i32 0
  store %struct.v4l2_rect* %27, %struct.v4l2_rect** %11, align 8
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %2
  %31 = load %struct.mt9t001*, %struct.mt9t001** %9, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @mt9t001_set_output_control(%struct.mt9t001* %31, i32 %32, i32 0)
  store i32 %33, i32* %3, align 4
  br label %133

34:                                               ; preds = %2
  %35 = load %struct.mt9t001_platform_data*, %struct.mt9t001_platform_data** %8, align 8
  %36 = getelementptr inbounds %struct.mt9t001_platform_data, %struct.mt9t001_platform_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %41 = load i32, i32* @MT9T001_PIXEL_CLOCK, align 4
  %42 = load i32, i32* @MT9T001_PIXEL_CLOCK_INVERT, align 4
  %43 = call i32 @mt9t001_write(%struct.i2c_client* %40, i32 %41, i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %3, align 4
  br label %133

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %34
  %50 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %51 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %54 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @DIV_ROUND_CLOSEST(i32 %52, i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %58 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %61 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @DIV_ROUND_CLOSEST(i32 %59, i32 %62)
  store i32 %63, i32* %13, align 4
  %64 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %65 = load i32, i32* @MT9T001_ROW_ADDRESS_MODE, align 4
  %66 = load i32, i32* %12, align 4
  %67 = sub i32 %66, 1
  %68 = call i32 @mt9t001_write(%struct.i2c_client* %64, i32 %65, i32 %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %49
  %72 = load i32, i32* %14, align 4
  store i32 %72, i32* %3, align 4
  br label %133

73:                                               ; preds = %49
  %74 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %75 = load i32, i32* @MT9T001_COLUMN_ADDRESS_MODE, align 4
  %76 = load i32, i32* %13, align 4
  %77 = sub i32 %76, 1
  %78 = call i32 @mt9t001_write(%struct.i2c_client* %74, i32 %75, i32 %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32, i32* %14, align 4
  store i32 %82, i32* %3, align 4
  br label %133

83:                                               ; preds = %73
  %84 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %85 = load i32, i32* @MT9T001_COLUMN_START, align 4
  %86 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %87 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @mt9t001_write(%struct.i2c_client* %84, i32 %85, i32 %88)
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = load i32, i32* %14, align 4
  store i32 %93, i32* %3, align 4
  br label %133

94:                                               ; preds = %83
  %95 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %96 = load i32, i32* @MT9T001_ROW_START, align 4
  %97 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %98 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @mt9t001_write(%struct.i2c_client* %95, i32 %96, i32 %99)
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %3, align 4
  br label %133

105:                                              ; preds = %94
  %106 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %107 = load i32, i32* @MT9T001_WINDOW_WIDTH, align 4
  %108 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %109 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %110, 1
  %112 = call i32 @mt9t001_write(%struct.i2c_client* %106, i32 %107, i32 %111)
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %105
  %116 = load i32, i32* %14, align 4
  store i32 %116, i32* %3, align 4
  br label %133

117:                                              ; preds = %105
  %118 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %119 = load i32, i32* @MT9T001_WINDOW_HEIGHT, align 4
  %120 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %121 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 %122, 1
  %124 = call i32 @mt9t001_write(%struct.i2c_client* %118, i32 %119, i32 %123)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %117
  %128 = load i32, i32* %14, align 4
  store i32 %128, i32* %3, align 4
  br label %133

129:                                              ; preds = %117
  %130 = load %struct.mt9t001*, %struct.mt9t001** %9, align 8
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @mt9t001_set_output_control(%struct.mt9t001* %130, i32 0, i32 %131)
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %129, %127, %115, %103, %92, %81, %71, %46, %30
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.mt9t001* @to_mt9t001(%struct.v4l2_subdev*) #1

declare dso_local i32 @mt9t001_set_output_control(%struct.mt9t001*, i32, i32) #1

declare dso_local i32 @mt9t001_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
