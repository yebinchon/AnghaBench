; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_video-i2c.c_amg88xx_set_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_video-i2c.c_amg88xx_set_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_i2c_data = type { i32 }

@AMG88XX_REG_PCTL = common dso_local global i32 0, align 4
@AMG88XX_PCTL_NORMAL = common dso_local global i32 0, align 4
@AMG88XX_REG_RST = common dso_local global i32 0, align 4
@AMG88XX_RST_INIT = common dso_local global i32 0, align 4
@AMG88XX_RST_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.video_i2c_data*)* @amg88xx_set_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amg88xx_set_power_on(%struct.video_i2c_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.video_i2c_data*, align 8
  %4 = alloca i32, align 4
  store %struct.video_i2c_data* %0, %struct.video_i2c_data** %3, align 8
  %5 = load %struct.video_i2c_data*, %struct.video_i2c_data** %3, align 8
  %6 = getelementptr inbounds %struct.video_i2c_data, %struct.video_i2c_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @AMG88XX_REG_PCTL, align 4
  %9 = load i32, i32* @AMG88XX_PCTL_NORMAL, align 4
  %10 = call i32 @regmap_write(i32 %7, i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %41

15:                                               ; preds = %1
  %16 = call i32 @msleep(i32 50)
  %17 = load %struct.video_i2c_data*, %struct.video_i2c_data** %3, align 8
  %18 = getelementptr inbounds %struct.video_i2c_data, %struct.video_i2c_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @AMG88XX_REG_RST, align 4
  %21 = load i32, i32* @AMG88XX_RST_INIT, align 4
  %22 = call i32 @regmap_write(i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %41

27:                                               ; preds = %15
  %28 = call i32 @usleep_range(i32 2000, i32 3000)
  %29 = load %struct.video_i2c_data*, %struct.video_i2c_data** %3, align 8
  %30 = getelementptr inbounds %struct.video_i2c_data, %struct.video_i2c_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @AMG88XX_REG_RST, align 4
  %33 = load i32, i32* @AMG88XX_RST_FLAG, align 4
  %34 = call i32 @regmap_write(i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %41

39:                                               ; preds = %27
  %40 = call i32 @msleep(i32 200)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %37, %25, %13
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
