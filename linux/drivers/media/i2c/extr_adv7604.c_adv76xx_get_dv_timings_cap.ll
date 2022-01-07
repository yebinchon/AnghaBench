; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7604.c_adv76xx_get_dv_timings_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7604.c_adv76xx_get_dv_timings_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_dv_timings_cap = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.adv76xx_state = type { i32 }

@adv76xx_timings_cap_digital = common dso_local global %struct.v4l2_dv_timings_cap zeroinitializer, align 4
@adv7604_timings_cap_analog = common dso_local global %struct.v4l2_dv_timings_cap zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.v4l2_dv_timings_cap* (%struct.v4l2_subdev*, i32)* @adv76xx_get_dv_timings_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.v4l2_dv_timings_cap* @adv76xx_get_dv_timings_cap(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_dv_timings_cap*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.adv76xx_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.adv76xx_state* @to_state(%struct.v4l2_subdev* %10)
  store %struct.adv76xx_state* %11, %struct.adv76xx_state** %6, align 8
  %12 = load %struct.adv76xx_state*, %struct.adv76xx_state** %6, align 8
  %13 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %9, %2
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %19 [
    i32 128, label %17
    i32 133, label %17
    i32 132, label %17
    i32 131, label %17
    i32 129, label %18
    i32 130, label %18
  ]

17:                                               ; preds = %15, %15, %15, %15
  store %struct.v4l2_dv_timings_cap* @adv76xx_timings_cap_digital, %struct.v4l2_dv_timings_cap** %3, align 8
  br label %20

18:                                               ; preds = %15, %15
  br label %19

19:                                               ; preds = %15, %18
  store %struct.v4l2_dv_timings_cap* @adv7604_timings_cap_analog, %struct.v4l2_dv_timings_cap** %3, align 8
  br label %20

20:                                               ; preds = %19, %17
  %21 = load %struct.v4l2_dv_timings_cap*, %struct.v4l2_dv_timings_cap** %3, align 8
  ret %struct.v4l2_dv_timings_cap* %21
}

declare dso_local %struct.adv76xx_state* @to_state(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
