; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5647.c_ov5647_stream_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5647.c_ov5647_stream_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }

@OV5647_REG_MIPI_CTRL00 = common dso_local global i32 0, align 4
@MIPI_CTRL00_CLOCK_LANE_GATE = common dso_local global i32 0, align 4
@MIPI_CTRL00_BUS_IDLE = common dso_local global i32 0, align 4
@MIPI_CTRL00_CLOCK_LANE_DISABLE = common dso_local global i32 0, align 4
@OV5647_REG_FRAME_OFF_NUMBER = common dso_local global i32 0, align 4
@OV5640_REG_PAD_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @ov5647_stream_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5647_stream_off(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %5 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %6 = load i32, i32* @OV5647_REG_MIPI_CTRL00, align 4
  %7 = load i32, i32* @MIPI_CTRL00_CLOCK_LANE_GATE, align 4
  %8 = load i32, i32* @MIPI_CTRL00_BUS_IDLE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @MIPI_CTRL00_CLOCK_LANE_DISABLE, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @ov5647_write(%struct.v4l2_subdev* %5, i32 %6, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %29

17:                                               ; preds = %1
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %19 = load i32, i32* @OV5647_REG_FRAME_OFF_NUMBER, align 4
  %20 = call i32 @ov5647_write(%struct.v4l2_subdev* %18, i32 %19, i32 15)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %29

25:                                               ; preds = %17
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %27 = load i32, i32* @OV5640_REG_PAD_OUT, align 4
  %28 = call i32 @ov5647_write(%struct.v4l2_subdev* %26, i32 %27, i32 1)
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %25, %23, %15
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @ov5647_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
