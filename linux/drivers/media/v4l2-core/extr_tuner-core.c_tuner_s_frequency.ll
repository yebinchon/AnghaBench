; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_tuner-core.c_tuner_s_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_tuner-core.c_tuner_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_frequency = type { i32, i32 }
%struct.tuner = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_frequency*)* @tuner_s_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuner_s_frequency(%struct.v4l2_subdev* %0, %struct.v4l2_frequency* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_frequency*, align 8
  %5 = alloca %struct.tuner*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_frequency* %1, %struct.v4l2_frequency** %4, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.tuner* @to_tuner(%struct.v4l2_subdev* %6)
  store %struct.tuner* %7, %struct.tuner** %5, align 8
  %8 = load %struct.tuner*, %struct.tuner** %5, align 8
  %9 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %4, align 8
  %10 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @set_mode(%struct.tuner* %8, i32 %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.tuner*, %struct.tuner** %5, align 8
  %16 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %4, align 8
  %17 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @set_freq(%struct.tuner* %15, i32 %18)
  br label %20

20:                                               ; preds = %14, %2
  ret i32 0
}

declare dso_local %struct.tuner* @to_tuner(%struct.v4l2_subdev*) #1

declare dso_local i64 @set_mode(%struct.tuner*, i32) #1

declare dso_local i32 @set_freq(%struct.tuner*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
