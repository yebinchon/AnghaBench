; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v032.c_mt9v032_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v032.c_mt9v032_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.mt9v032 = type { i32, i32, %struct.regmap*, %struct.v4l2_rect }
%struct.regmap = type { i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@MT9V032_CHIP_CONTROL_DOUT_ENABLE = common dso_local global i32 0, align 4
@MT9V032_CHIP_CONTROL_SEQUENTIAL = common dso_local global i32 0, align 4
@MT9V032_CHIP_CONTROL = common dso_local global i32 0, align 4
@MT9V032_READ_MODE = common dso_local global i32 0, align 4
@MT9V032_READ_MODE_RESERVED = common dso_local global i32 0, align 4
@MT9V032_READ_MODE_COLUMN_BIN_SHIFT = common dso_local global i32 0, align 4
@MT9V032_READ_MODE_ROW_BIN_SHIFT = common dso_local global i32 0, align 4
@MT9V032_COLUMN_START = common dso_local global i32 0, align 4
@MT9V032_ROW_START = common dso_local global i32 0, align 4
@MT9V032_WINDOW_WIDTH = common dso_local global i32 0, align 4
@MT9V032_WINDOW_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @mt9v032_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v032_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mt9v032*, align 8
  %8 = alloca %struct.v4l2_rect*, align 8
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* @MT9V032_CHIP_CONTROL_DOUT_ENABLE, align 4
  %14 = load i32, i32* @MT9V032_CHIP_CONTROL_SEQUENTIAL, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %17 = call %struct.mt9v032* @to_mt9v032(%struct.v4l2_subdev* %16)
  store %struct.mt9v032* %17, %struct.mt9v032** %7, align 8
  %18 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %19 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %18, i32 0, i32 3
  store %struct.v4l2_rect* %19, %struct.v4l2_rect** %8, align 8
  %20 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %21 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %20, i32 0, i32 2
  %22 = load %struct.regmap*, %struct.regmap** %21, align 8
  store %struct.regmap* %22, %struct.regmap** %9, align 8
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %2
  %26 = load %struct.regmap*, %struct.regmap** %9, align 8
  %27 = load i32, i32* @MT9V032_CHIP_CONTROL, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @regmap_update_bits(%struct.regmap* %26, i32 %27, i32 %28, i32 0)
  store i32 %29, i32* %3, align 4
  br label %114

30:                                               ; preds = %2
  %31 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %32 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @fls(i32 %33)
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  %36 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %37 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @fls(i32 %38)
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  %41 = load %struct.regmap*, %struct.regmap** %9, align 8
  %42 = load i32, i32* @MT9V032_READ_MODE, align 4
  %43 = load i32, i32* @MT9V032_READ_MODE_RESERVED, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @MT9V032_READ_MODE_COLUMN_BIN_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @MT9V032_READ_MODE_ROW_BIN_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = or i32 %47, %50
  %52 = call i32 @regmap_update_bits(%struct.regmap* %41, i32 %42, i32 %44, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %30
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %3, align 4
  br label %114

57:                                               ; preds = %30
  %58 = load %struct.regmap*, %struct.regmap** %9, align 8
  %59 = load i32, i32* @MT9V032_COLUMN_START, align 4
  %60 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %61 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @regmap_write(%struct.regmap* %58, i32 %59, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %3, align 4
  br label %114

68:                                               ; preds = %57
  %69 = load %struct.regmap*, %struct.regmap** %9, align 8
  %70 = load i32, i32* @MT9V032_ROW_START, align 4
  %71 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %72 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @regmap_write(%struct.regmap* %69, i32 %70, i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %3, align 4
  br label %114

79:                                               ; preds = %68
  %80 = load %struct.regmap*, %struct.regmap** %9, align 8
  %81 = load i32, i32* @MT9V032_WINDOW_WIDTH, align 4
  %82 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %83 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @regmap_write(%struct.regmap* %80, i32 %81, i32 %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %3, align 4
  br label %114

90:                                               ; preds = %79
  %91 = load %struct.regmap*, %struct.regmap** %9, align 8
  %92 = load i32, i32* @MT9V032_WINDOW_HEIGHT, align 4
  %93 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %94 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @regmap_write(%struct.regmap* %91, i32 %92, i32 %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %3, align 4
  br label %114

101:                                              ; preds = %90
  %102 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %103 = call i32 @mt9v032_update_hblank(%struct.mt9v032* %102)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %3, align 4
  br label %114

108:                                              ; preds = %101
  %109 = load %struct.regmap*, %struct.regmap** %9, align 8
  %110 = load i32, i32* @MT9V032_CHIP_CONTROL, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @regmap_update_bits(%struct.regmap* %109, i32 %110, i32 %111, i32 %112)
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %108, %106, %99, %88, %77, %66, %55, %25
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.mt9v032* @to_mt9v032(%struct.v4l2_subdev*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @mt9v032_update_hblank(%struct.mt9v032*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
