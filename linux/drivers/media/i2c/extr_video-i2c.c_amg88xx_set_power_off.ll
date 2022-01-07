; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_video-i2c.c_amg88xx_set_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_video-i2c.c_amg88xx_set_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_i2c_data = type { i32 }

@AMG88XX_REG_PCTL = common dso_local global i32 0, align 4
@AMG88XX_PCTL_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.video_i2c_data*)* @amg88xx_set_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amg88xx_set_power_off(%struct.video_i2c_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.video_i2c_data*, align 8
  %4 = alloca i32, align 4
  store %struct.video_i2c_data* %0, %struct.video_i2c_data** %3, align 8
  %5 = load %struct.video_i2c_data*, %struct.video_i2c_data** %3, align 8
  %6 = getelementptr inbounds %struct.video_i2c_data, %struct.video_i2c_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @AMG88XX_REG_PCTL, align 4
  %9 = load i32, i32* @AMG88XX_PCTL_SLEEP, align 4
  %10 = call i32 @regmap_write(i32 %7, i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %17

15:                                               ; preds = %1
  %16 = call i32 @msleep(i32 100)
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
