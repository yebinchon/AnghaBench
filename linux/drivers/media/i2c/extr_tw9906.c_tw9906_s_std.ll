; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tw9906.c_tw9906_s_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tw9906.c_tw9906_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.tw9906 = type { i32 }

@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@tw9906_s_std.config_60hz = internal constant [10 x i32] [i32 5, i32 129, i32 7, i32 2, i32 8, i32 20, i32 9, i32 240, i32 0, i32 0], align 16
@tw9906_s_std.config_50hz = internal constant [10 x i32] [i32 5, i32 1, i32 7, i32 18, i32 8, i32 24, i32 9, i32 32, i32 0, i32 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @tw9906_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw9906_s_std(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tw9906*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.tw9906* @to_state(%struct.v4l2_subdev* %7)
  store %struct.tw9906* %8, %struct.tw9906** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @V4L2_STD_525_60, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tw9906_s_std.config_60hz, i64 0, i64 0), i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tw9906_s_std.config_50hz, i64 0, i64 0)
  %17 = call i32 @write_regs(%struct.v4l2_subdev* %12, i32* %16)
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.tw9906*, %struct.tw9906** %5, align 8
  %20 = getelementptr inbounds %struct.tw9906, %struct.tw9906* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  ret i32 0
}

declare dso_local %struct.tw9906* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @write_regs(%struct.v4l2_subdev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
