; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7604.c_adv76xx_enum_dv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7604.c_adv76xx_enum_dv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_enum_dv_timings = type { i64 }
%struct.adv76xx_state = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@adv76xx_check_dv_timings = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_enum_dv_timings*)* @adv76xx_enum_dv_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv76xx_enum_dv_timings(%struct.v4l2_subdev* %0, %struct.v4l2_enum_dv_timings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_enum_dv_timings*, align 8
  %6 = alloca %struct.adv76xx_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_enum_dv_timings* %1, %struct.v4l2_enum_dv_timings** %5, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %8 = call %struct.adv76xx_state* @to_state(%struct.v4l2_subdev* %7)
  store %struct.adv76xx_state* %8, %struct.adv76xx_state** %6, align 8
  %9 = load %struct.v4l2_enum_dv_timings*, %struct.v4l2_enum_dv_timings** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_enum_dv_timings, %struct.v4l2_enum_dv_timings* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.adv76xx_state*, %struct.adv76xx_state** %6, align 8
  %13 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %11, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %28

19:                                               ; preds = %2
  %20 = load %struct.v4l2_enum_dv_timings*, %struct.v4l2_enum_dv_timings** %5, align 8
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %22 = load %struct.v4l2_enum_dv_timings*, %struct.v4l2_enum_dv_timings** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_enum_dv_timings, %struct.v4l2_enum_dv_timings* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @adv76xx_get_dv_timings_cap(%struct.v4l2_subdev* %21, i64 %24)
  %26 = load i32, i32* @adv76xx_check_dv_timings, align 4
  %27 = call i32 @v4l2_enum_dv_timings_cap(%struct.v4l2_enum_dv_timings* %20, i32 %25, i32 %26, i32* null)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %19, %16
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.adv76xx_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_enum_dv_timings_cap(%struct.v4l2_enum_dv_timings*, i32, i32, i32*) #1

declare dso_local i32 @adv76xx_get_dv_timings_cap(%struct.v4l2_subdev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
