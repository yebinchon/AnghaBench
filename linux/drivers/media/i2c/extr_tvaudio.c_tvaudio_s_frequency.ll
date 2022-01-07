; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_tvaudio_s_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_tvaudio_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_frequency = type { i32 }
%struct.CHIPSTATE = type { i32, i32, i64, %struct.CHIPDESC* }
%struct.CHIPDESC = type { i32 (%struct.CHIPSTATE*, i32)* }

@V4L2_TUNER_MODE_MONO = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_frequency*)* @tvaudio_s_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvaudio_s_frequency(%struct.v4l2_subdev* %0, %struct.v4l2_frequency* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_frequency*, align 8
  %5 = alloca %struct.CHIPSTATE*, align 8
  %6 = alloca %struct.CHIPDESC*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_frequency* %1, %struct.v4l2_frequency** %4, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.CHIPSTATE* @to_state(%struct.v4l2_subdev* %7)
  store %struct.CHIPSTATE* %8, %struct.CHIPSTATE** %5, align 8
  %9 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %5, align 8
  %10 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %9, i32 0, i32 3
  %11 = load %struct.CHIPDESC*, %struct.CHIPDESC** %10, align 8
  store %struct.CHIPDESC* %11, %struct.CHIPDESC** %6, align 8
  %12 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %5, align 8
  %13 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = load %struct.CHIPDESC*, %struct.CHIPDESC** %6, align 8
  %18 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %17, i32 0, i32 0
  %19 = load i32 (%struct.CHIPSTATE*, i32)*, i32 (%struct.CHIPSTATE*, i32)** %18, align 8
  %20 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %5, align 8
  %21 = load i32, i32* @V4L2_TUNER_MODE_MONO, align 4
  %22 = call i32 %19(%struct.CHIPSTATE* %20, i32 %21)
  %23 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %5, align 8
  %24 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %23, i32 0, i32 0
  store i32 -1, i32* %24, align 8
  %25 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %5, align 8
  %26 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %25, i32 0, i32 1
  %27 = load i64, i64* @jiffies, align 8
  %28 = call i64 @msecs_to_jiffies(i32 2000)
  %29 = add nsw i64 %27, %28
  %30 = call i32 @mod_timer(i32* %26, i64 %29)
  br label %31

31:                                               ; preds = %16, %2
  ret i32 0
}

declare dso_local %struct.CHIPSTATE* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
