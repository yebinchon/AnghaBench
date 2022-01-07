; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-cards.c_em28xx_set_xclk_i2c_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-cards.c_em28xx_set_xclk_i2c_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx_board = type { i32, i32 }
%struct.em28xx = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@em28xx_boards = common dso_local global %struct.em28xx_board* null, align 8
@EM28XX_XCLK_IR_RC5_MODE = common dso_local global i32 0, align 4
@EM28XX_XCLK_FREQUENCY_12MHZ = common dso_local global i32 0, align 4
@EM28XX_R0F_XCLK = common dso_local global i32 0, align 4
@EM28XX_I2C_CLK_WAIT_ENABLE = common dso_local global i32 0, align 4
@EM28XX_I2C_FREQ_100_KHZ = common dso_local global i32 0, align 4
@EM28XX_R06_I2C_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.em28xx*)* @em28xx_set_xclk_i2c_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em28xx_set_xclk_i2c_speed(%struct.em28xx* %0) #0 {
  %2 = alloca %struct.em28xx*, align 8
  %3 = alloca %struct.em28xx_board*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %2, align 8
  %6 = load %struct.em28xx_board*, %struct.em28xx_board** @em28xx_boards, align 8
  %7 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %8 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.em28xx_board, %struct.em28xx_board* %6, i64 %9
  store %struct.em28xx_board* %10, %struct.em28xx_board** %3, align 8
  %11 = load %struct.em28xx_board*, %struct.em28xx_board** %3, align 8
  %12 = getelementptr inbounds %struct.em28xx_board, %struct.em28xx_board* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.em28xx_board*, %struct.em28xx_board** %3, align 8
  %15 = getelementptr inbounds %struct.em28xx_board, %struct.em28xx_board* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @EM28XX_XCLK_IR_RC5_MODE, align 4
  %21 = load i32, i32* @EM28XX_XCLK_FREQUENCY_12MHZ, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %25 = load i32, i32* @EM28XX_R0F_XCLK, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @em28xx_write_reg(%struct.em28xx* %24, i32 %25, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @EM28XX_I2C_CLK_WAIT_ENABLE, align 4
  %32 = load i32, i32* @EM28XX_I2C_FREQ_100_KHZ, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %30, %23
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, 3
  %37 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %38 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %40 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %34
  %45 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %46 = load i32, i32* @EM28XX_R06_I2C_CLK, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @em28xx_write_reg(%struct.em28xx* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %34
  %50 = call i32 @msleep(i32 50)
  ret void
}

declare dso_local i32 @em28xx_write_reg(%struct.em28xx*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
