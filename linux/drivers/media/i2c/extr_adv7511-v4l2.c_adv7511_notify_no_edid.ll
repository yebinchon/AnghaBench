; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7511-v4l2.c_adv7511_notify_no_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7511-v4l2.c_adv7511_notify_no_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.adv7511_state = type { i32, i32 }
%struct.adv7511_edid_detect = type { i32, i32, i32 }

@CEC_PHYS_ADDR_INVALID = common dso_local global i32 0, align 4
@ADV7511_EDID_DETECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*)* @adv7511_notify_no_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adv7511_notify_no_edid(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.adv7511_state*, align 8
  %4 = alloca %struct.adv7511_edid_detect, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %5 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %6 = call %struct.adv7511_state* @get_adv7511_state(%struct.v4l2_subdev* %5)
  store %struct.adv7511_state* %6, %struct.adv7511_state** %3, align 8
  %7 = getelementptr inbounds %struct.adv7511_edid_detect, %struct.adv7511_edid_detect* %4, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %9 = call i32 @adv7511_rd(%struct.v4l2_subdev* %8, i32 196)
  %10 = getelementptr inbounds %struct.adv7511_edid_detect, %struct.adv7511_edid_detect* %4, i32 0, i32 2
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @CEC_PHYS_ADDR_INVALID, align 4
  %12 = getelementptr inbounds %struct.adv7511_edid_detect, %struct.adv7511_edid_detect* %4, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load %struct.adv7511_state*, %struct.adv7511_state** %3, align 8
  %14 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.adv7511_edid_detect, %struct.adv7511_edid_detect* %4, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cec_s_phys_addr(i32 %15, i32 %17, i32 0)
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %20 = load i32, i32* @ADV7511_EDID_DETECT, align 4
  %21 = bitcast %struct.adv7511_edid_detect* %4 to i8*
  %22 = call i32 @v4l2_subdev_notify(%struct.v4l2_subdev* %19, i32 %20, i8* %21)
  %23 = load %struct.adv7511_state*, %struct.adv7511_state** %3, align 8
  %24 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @v4l2_ctrl_s_ctrl(i32 %25, i32 0)
  ret void
}

declare dso_local %struct.adv7511_state* @get_adv7511_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @adv7511_rd(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @cec_s_phys_addr(i32, i32, i32) #1

declare dso_local i32 @v4l2_subdev_notify(%struct.v4l2_subdev*, i32, i8*) #1

declare dso_local i32 @v4l2_ctrl_s_ctrl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
