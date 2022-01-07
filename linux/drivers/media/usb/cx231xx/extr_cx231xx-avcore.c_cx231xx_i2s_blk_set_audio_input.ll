; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_i2s_blk_set_audio_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_i2s_blk_set_audio_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }

@I2S_BLK_DEVICE_ADDRESS = common dso_local global i32 0, align 4
@CH_PWR_CTRL2 = common dso_local global i32 0, align 4
@CH_PWR_CTRL1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_i2s_blk_set_audio_input(%struct.cx231xx* %0, i32 %1) #0 {
  %3 = alloca %struct.cx231xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %17 [
    i32 129, label %7
    i32 128, label %16
  ]

7:                                                ; preds = %2
  %8 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %9 = load i32, i32* @I2S_BLK_DEVICE_ADDRESS, align 4
  %10 = load i32, i32* @CH_PWR_CTRL2, align 4
  %11 = call i32 @cx231xx_write_i2c_data(%struct.cx231xx* %8, i32 %9, i32 %10, i32 1, i32 0, i32 1)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %13 = load i32, i32* @I2S_BLK_DEVICE_ADDRESS, align 4
  %14 = load i32, i32* @CH_PWR_CTRL1, align 4
  %15 = call i32 @cx231xx_write_i2c_data(%struct.cx231xx* %12, i32 %13, i32 %14, i32 1, i32 128, i32 1)
  store i32 %15, i32* %5, align 4
  br label %18

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %2, %16
  br label %18

18:                                               ; preds = %17, %7
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %21 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local i32 @cx231xx_write_i2c_data(%struct.cx231xx*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
