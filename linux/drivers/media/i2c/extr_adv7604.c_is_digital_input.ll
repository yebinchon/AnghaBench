; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7604.c_is_digital_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7604.c_is_digital_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.adv76xx_state = type { i64 }

@ADV76XX_PAD_HDMI_PORT_A = common dso_local global i64 0, align 8
@ADV7604_PAD_HDMI_PORT_B = common dso_local global i64 0, align 8
@ADV7604_PAD_HDMI_PORT_C = common dso_local global i64 0, align 8
@ADV7604_PAD_HDMI_PORT_D = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @is_digital_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_digital_input(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.adv76xx_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %4 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %5 = call %struct.adv76xx_state* @to_state(%struct.v4l2_subdev* %4)
  store %struct.adv76xx_state* %5, %struct.adv76xx_state** %3, align 8
  %6 = load %struct.adv76xx_state*, %struct.adv76xx_state** %3, align 8
  %7 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ADV76XX_PAD_HDMI_PORT_A, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %29, label %11

11:                                               ; preds = %1
  %12 = load %struct.adv76xx_state*, %struct.adv76xx_state** %3, align 8
  %13 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ADV7604_PAD_HDMI_PORT_B, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %29, label %17

17:                                               ; preds = %11
  %18 = load %struct.adv76xx_state*, %struct.adv76xx_state** %3, align 8
  %19 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ADV7604_PAD_HDMI_PORT_C, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.adv76xx_state*, %struct.adv76xx_state** %3, align 8
  %25 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ADV7604_PAD_HDMI_PORT_D, align 8
  %28 = icmp eq i64 %26, %27
  br label %29

29:                                               ; preds = %23, %17, %11, %1
  %30 = phi i1 [ true, %17 ], [ true, %11 ], [ true, %1 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  ret i32 %31
}

declare dso_local %struct.adv76xx_state* @to_state(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
