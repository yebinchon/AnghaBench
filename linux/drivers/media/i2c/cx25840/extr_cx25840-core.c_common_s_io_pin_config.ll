; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_common_s_io_pin_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_common_s_io_pin_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_io_pin_config = type { i32 }
%struct.cx25840_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i64, %struct.v4l2_subdev_io_pin_config*)* @common_s_io_pin_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @common_s_io_pin_config(%struct.v4l2_subdev* %0, i64 %1, %struct.v4l2_subdev_io_pin_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.v4l2_subdev_io_pin_config*, align 8
  %8 = alloca %struct.cx25840_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.v4l2_subdev_io_pin_config* %2, %struct.v4l2_subdev_io_pin_config** %7, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %10 = call %struct.cx25840_state* @to_state(%struct.v4l2_subdev* %9)
  store %struct.cx25840_state* %10, %struct.cx25840_state** %8, align 8
  %11 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %12 = call i64 @is_cx2388x(%struct.cx25840_state* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %7, align 8
  %18 = call i32 @cx23885_s_io_pin_config(%struct.v4l2_subdev* %15, i64 %16, %struct.v4l2_subdev_io_pin_config* %17)
  store i32 %18, i32* %4, align 4
  br label %30

19:                                               ; preds = %3
  %20 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %21 = call i64 @is_cx2584x(%struct.cx25840_state* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.v4l2_subdev_io_pin_config*, %struct.v4l2_subdev_io_pin_config** %7, align 8
  %27 = call i32 @cx25840_s_io_pin_config(%struct.v4l2_subdev* %24, i64 %25, %struct.v4l2_subdev_io_pin_config* %26)
  store i32 %27, i32* %4, align 4
  br label %30

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %23, %14
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.cx25840_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i64 @is_cx2388x(%struct.cx25840_state*) #1

declare dso_local i32 @cx23885_s_io_pin_config(%struct.v4l2_subdev*, i64, %struct.v4l2_subdev_io_pin_config*) #1

declare dso_local i64 @is_cx2584x(%struct.cx25840_state*) #1

declare dso_local i32 @cx25840_s_io_pin_config(%struct.v4l2_subdev*, i64, %struct.v4l2_subdev_io_pin_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
