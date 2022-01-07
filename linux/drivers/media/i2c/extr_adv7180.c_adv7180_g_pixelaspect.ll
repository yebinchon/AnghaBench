; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7180_g_pixelaspect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7180_g_pixelaspect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.adv7180_state = type { i32 }

@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_fract*)* @adv7180_g_pixelaspect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7180_g_pixelaspect(%struct.v4l2_subdev* %0, %struct.v4l2_fract* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_fract*, align 8
  %5 = alloca %struct.adv7180_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_fract* %1, %struct.v4l2_fract** %4, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.adv7180_state* @to_state(%struct.v4l2_subdev* %6)
  store %struct.adv7180_state* %7, %struct.adv7180_state** %5, align 8
  %8 = load %struct.adv7180_state*, %struct.adv7180_state** %5, align 8
  %9 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @V4L2_STD_525_60, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %16 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %15, i32 0, i32 0
  store i32 11, i32* %16, align 4
  %17 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %18 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %17, i32 0, i32 1
  store i32 10, i32* %18, align 4
  br label %24

19:                                               ; preds = %2
  %20 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %21 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %20, i32 0, i32 0
  store i32 54, i32* %21, align 4
  %22 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %23 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %22, i32 0, i32 1
  store i32 59, i32* %23, align 4
  br label %24

24:                                               ; preds = %19, %14
  ret i32 0
}

declare dso_local %struct.adv7180_state* @to_state(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
