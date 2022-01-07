; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7180_g_mbus_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7180_g_mbus_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_mbus_config = type { i32, i32 }
%struct.adv7180_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ADV7180_FLAG_MIPI_CSI2 = common dso_local global i32 0, align 4
@V4L2_MBUS_CSI2_DPHY = common dso_local global i32 0, align 4
@V4L2_MBUS_CSI2_1_LANE = common dso_local global i32 0, align 4
@V4L2_MBUS_CSI2_CHANNEL_0 = common dso_local global i32 0, align 4
@V4L2_MBUS_CSI2_CONTINUOUS_CLOCK = common dso_local global i32 0, align 4
@V4L2_MBUS_MASTER = common dso_local global i32 0, align 4
@V4L2_MBUS_PCLK_SAMPLE_RISING = common dso_local global i32 0, align 4
@V4L2_MBUS_DATA_ACTIVE_HIGH = common dso_local global i32 0, align 4
@V4L2_MBUS_BT656 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_mbus_config*)* @adv7180_g_mbus_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7180_g_mbus_config(%struct.v4l2_subdev* %0, %struct.v4l2_mbus_config* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_mbus_config*, align 8
  %5 = alloca %struct.adv7180_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_mbus_config* %1, %struct.v4l2_mbus_config** %4, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.adv7180_state* @to_state(%struct.v4l2_subdev* %6)
  store %struct.adv7180_state* %7, %struct.adv7180_state** %5, align 8
  %8 = load %struct.adv7180_state*, %struct.adv7180_state** %5, align 8
  %9 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ADV7180_FLAG_MIPI_CSI2, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load i32, i32* @V4L2_MBUS_CSI2_DPHY, align 4
  %18 = load %struct.v4l2_mbus_config*, %struct.v4l2_mbus_config** %4, align 8
  %19 = getelementptr inbounds %struct.v4l2_mbus_config, %struct.v4l2_mbus_config* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @V4L2_MBUS_CSI2_1_LANE, align 4
  %21 = load i32, i32* @V4L2_MBUS_CSI2_CHANNEL_0, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @V4L2_MBUS_CSI2_CONTINUOUS_CLOCK, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.v4l2_mbus_config*, %struct.v4l2_mbus_config** %4, align 8
  %26 = getelementptr inbounds %struct.v4l2_mbus_config, %struct.v4l2_mbus_config* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %38

27:                                               ; preds = %2
  %28 = load i32, i32* @V4L2_MBUS_MASTER, align 4
  %29 = load i32, i32* @V4L2_MBUS_PCLK_SAMPLE_RISING, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @V4L2_MBUS_DATA_ACTIVE_HIGH, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.v4l2_mbus_config*, %struct.v4l2_mbus_config** %4, align 8
  %34 = getelementptr inbounds %struct.v4l2_mbus_config, %struct.v4l2_mbus_config* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @V4L2_MBUS_BT656, align 4
  %36 = load %struct.v4l2_mbus_config*, %struct.v4l2_mbus_config** %4, align 8
  %37 = getelementptr inbounds %struct.v4l2_mbus_config, %struct.v4l2_mbus_config* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %27, %16
  ret i32 0
}

declare dso_local %struct.adv7180_state* @to_state(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
