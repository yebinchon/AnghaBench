; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_set_jpeg_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_set_jpeg_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5640_dev = type { i32 }
%struct.ov5640_mode_info = type { i32, i32 }

@OV5640_REG_JPG_MODE_SELECT = common dso_local global i32 0, align 4
@OV5640_REG_VFIFO_HSIZE = common dso_local global i32 0, align 4
@OV5640_REG_VFIFO_VSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov5640_dev*, %struct.ov5640_mode_info*)* @ov5640_set_jpeg_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5640_set_jpeg_timings(%struct.ov5640_dev* %0, %struct.ov5640_mode_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ov5640_dev*, align 8
  %5 = alloca %struct.ov5640_mode_info*, align 8
  %6 = alloca i32, align 4
  store %struct.ov5640_dev* %0, %struct.ov5640_dev** %4, align 8
  store %struct.ov5640_mode_info* %1, %struct.ov5640_mode_info** %5, align 8
  %7 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %8 = load i32, i32* @OV5640_REG_JPG_MODE_SELECT, align 4
  %9 = call i32 @ov5640_mod_reg(%struct.ov5640_dev* %7, i32 %8, i32 7, i32 3)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %32

14:                                               ; preds = %2
  %15 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %16 = load i32, i32* @OV5640_REG_VFIFO_HSIZE, align 4
  %17 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %5, align 8
  %18 = getelementptr inbounds %struct.ov5640_mode_info, %struct.ov5640_mode_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ov5640_write_reg16(%struct.ov5640_dev* %15, i32 %16, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %32

25:                                               ; preds = %14
  %26 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %27 = load i32, i32* @OV5640_REG_VFIFO_VSIZE, align 4
  %28 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %5, align 8
  %29 = getelementptr inbounds %struct.ov5640_mode_info, %struct.ov5640_mode_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ov5640_write_reg16(%struct.ov5640_dev* %26, i32 %27, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %25, %23, %12
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @ov5640_mod_reg(%struct.ov5640_dev*, i32, i32, i32) #1

declare dso_local i32 @ov5640_write_reg16(%struct.ov5640_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
