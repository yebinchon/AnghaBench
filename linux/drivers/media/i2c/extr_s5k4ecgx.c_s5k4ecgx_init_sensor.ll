; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k4ecgx.c_s5k4ecgx_init_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k4ecgx.c_s5k4ecgx_init_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Failed to write initial settings\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @s5k4ecgx_init_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k4ecgx_init_sensor(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %4 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %5 = call i32 @s5k4ecgx_set_ahb_address(%struct.v4l2_subdev* %4)
  store i32 %5, i32* %3, align 4
  %6 = call i32 @msleep(i32 100)
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %11 = call i32 @s5k4ecgx_load_firmware(%struct.v4l2_subdev* %10)
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %9, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %17 = call i32 @v4l2_err(%struct.v4l2_subdev* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @s5k4ecgx_set_ahb_address(%struct.v4l2_subdev*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @s5k4ecgx_load_firmware(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
