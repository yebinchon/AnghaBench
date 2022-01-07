; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_saa7706h.c_saa7706h_mute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_saa7706h.c_saa7706h_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.saa7706h_state = type { i32 }

@SAA7706H_REG_CTRL = common dso_local global i32 0, align 4
@SAA7706H_CTRL_PLL3_62975MHZ = common dso_local global i32 0, align 4
@SAA7706H_CTRL_PC_RESET_DSP1 = common dso_local global i32 0, align 4
@SAA7706H_CTRL_PC_RESET_DSP2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @saa7706h_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7706h_mute(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.saa7706h_state*, align 8
  %4 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %5 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %6 = call %struct.saa7706h_state* @to_state(%struct.v4l2_subdev* %5)
  store %struct.saa7706h_state* %6, %struct.saa7706h_state** %3, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %8 = load i32, i32* @SAA7706H_REG_CTRL, align 4
  %9 = load i32, i32* @SAA7706H_CTRL_PLL3_62975MHZ, align 4
  %10 = load i32, i32* @SAA7706H_CTRL_PC_RESET_DSP1, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @SAA7706H_CTRL_PC_RESET_DSP2, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @saa7706h_set_reg16(%struct.v4l2_subdev* %7, i32 %8, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load %struct.saa7706h_state*, %struct.saa7706h_state** %3, align 8
  %19 = getelementptr inbounds %struct.saa7706h_state, %struct.saa7706h_state* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  br label %20

20:                                               ; preds = %17, %1
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local %struct.saa7706h_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @saa7706h_set_reg16(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
