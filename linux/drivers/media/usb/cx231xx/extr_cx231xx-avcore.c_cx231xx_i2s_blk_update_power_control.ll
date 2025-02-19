; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_i2s_blk_update_power_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_i2s_blk_update_power_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }

@POLARIS_AVMODE_ENXTERNAL_AV = common dso_local global i32 0, align 4
@I2S_BLK_DEVICE_ADDRESS = common dso_local global i32 0, align 4
@CH_PWR_CTRL2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_i2s_blk_update_power_control(%struct.cx231xx* %0, i32 %1) #0 {
  %3 = alloca %struct.cx231xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @POLARIS_AVMODE_ENXTERNAL_AV, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %12 = load i32, i32* @I2S_BLK_DEVICE_ADDRESS, align 4
  %13 = load i32, i32* @CH_PWR_CTRL2, align 4
  %14 = call i32 @cx231xx_read_i2c_data(%struct.cx231xx* %11, i32 %12, i32 %13, i32 1, i32* %6, i32 1)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = or i32 %15, 254
  store i32 %16, i32* %6, align 4
  %17 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %18 = load i32, i32* @I2S_BLK_DEVICE_ADDRESS, align 4
  %19 = load i32, i32* @CH_PWR_CTRL2, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @cx231xx_write_i2c_data(%struct.cx231xx* %17, i32 %18, i32 %19, i32 1, i32 %20, i32 1)
  store i32 %21, i32* %5, align 4
  br label %27

22:                                               ; preds = %2
  %23 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %24 = load i32, i32* @I2S_BLK_DEVICE_ADDRESS, align 4
  %25 = load i32, i32* @CH_PWR_CTRL2, align 4
  %26 = call i32 @cx231xx_write_i2c_data(%struct.cx231xx* %23, i32 %24, i32 %25, i32 1, i32 0, i32 1)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %22, %10
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @cx231xx_read_i2c_data(%struct.cx231xx*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @cx231xx_write_i2c_data(%struct.cx231xx*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
