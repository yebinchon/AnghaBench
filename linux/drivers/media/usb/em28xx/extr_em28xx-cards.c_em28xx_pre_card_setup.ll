; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-cards.c_em28xx_pre_card_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-cards.c_em28xx_pre_card_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EM2820_R08_GPIO_CTRL = common dso_local global i32 0, align 4
@EM2880_R04_GPO = common dso_local global i32 0, align 4
@EM28XX_R0F_XCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\07\00", align 1
@EM28XX_R06_I2C_CLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\FD\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\FF\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\7F\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\F8\00", align 1
@EM28XX_ANALOG_MODE = common dso_local global i32 0, align 4
@EM28XX_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.em28xx*)* @em28xx_pre_card_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em28xx_pre_card_setup(%struct.em28xx* %0) #0 {
  %2 = alloca %struct.em28xx*, align 8
  store %struct.em28xx* %0, %struct.em28xx** %2, align 8
  %3 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %4 = call i32 @em28xx_set_xclk_i2c_speed(%struct.em28xx* %3)
  %5 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %6 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %135 [
    i32 133, label %8
    i32 134, label %11
    i32 129, label %11
    i32 132, label %20
    i32 130, label %45
    i32 131, label %58
    i32 140, label %71
    i32 138, label %71
    i32 128, label %75
    i32 136, label %92
    i32 137, label %112
    i32 139, label %115
    i32 135, label %132
  ]

8:                                                ; preds = %1
  %9 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %10 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %9, i32 0, i32 1
  store i32 2048000, i32* %10, align 4
  br label %135

11:                                               ; preds = %1, %1
  %12 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %13 = load i32, i32* @EM2820_R08_GPIO_CTRL, align 4
  %14 = call i32 @em28xx_write_reg(%struct.em28xx* %12, i32 %13, i32 109)
  %15 = call i32 @usleep_range(i32 10000, i32 11000)
  %16 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %17 = load i32, i32* @EM2820_R08_GPIO_CTRL, align 4
  %18 = call i32 @em28xx_write_reg(%struct.em28xx* %16, i32 %17, i32 125)
  %19 = call i32 @usleep_range(i32 10000, i32 11000)
  br label %135

20:                                               ; preds = %1
  %21 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %22 = load i32, i32* @EM2880_R04_GPO, align 4
  %23 = call i32 @em28xx_write_reg(%struct.em28xx* %21, i32 %22, i32 0)
  %24 = call i32 @usleep_range(i32 10000, i32 11000)
  %25 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %26 = load i32, i32* @EM2880_R04_GPO, align 4
  %27 = call i32 @em28xx_write_reg(%struct.em28xx* %25, i32 %26, i32 1)
  %28 = call i32 @usleep_range(i32 10000, i32 11000)
  %29 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %30 = load i32, i32* @EM2820_R08_GPIO_CTRL, align 4
  %31 = call i32 @em28xx_write_reg(%struct.em28xx* %29, i32 %30, i32 253)
  %32 = call i32 @msleep(i32 70)
  %33 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %34 = load i32, i32* @EM2820_R08_GPIO_CTRL, align 4
  %35 = call i32 @em28xx_write_reg(%struct.em28xx* %33, i32 %34, i32 252)
  %36 = call i32 @msleep(i32 70)
  %37 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %38 = load i32, i32* @EM2820_R08_GPIO_CTRL, align 4
  %39 = call i32 @em28xx_write_reg(%struct.em28xx* %37, i32 %38, i32 220)
  %40 = call i32 @msleep(i32 70)
  %41 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %42 = load i32, i32* @EM2820_R08_GPIO_CTRL, align 4
  %43 = call i32 @em28xx_write_reg(%struct.em28xx* %41, i32 %42, i32 252)
  %44 = call i32 @msleep(i32 70)
  br label %135

45:                                               ; preds = %1
  %46 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %47 = load i32, i32* @EM2820_R08_GPIO_CTRL, align 4
  %48 = call i32 @em28xx_write_reg(%struct.em28xx* %46, i32 %47, i32 254)
  %49 = call i32 @msleep(i32 70)
  %50 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %51 = load i32, i32* @EM2820_R08_GPIO_CTRL, align 4
  %52 = call i32 @em28xx_write_reg(%struct.em28xx* %50, i32 %51, i32 222)
  %53 = call i32 @msleep(i32 70)
  %54 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %55 = load i32, i32* @EM2820_R08_GPIO_CTRL, align 4
  %56 = call i32 @em28xx_write_reg(%struct.em28xx* %54, i32 %55, i32 254)
  %57 = call i32 @msleep(i32 70)
  br label %135

58:                                               ; preds = %1
  %59 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %60 = load i32, i32* @EM2820_R08_GPIO_CTRL, align 4
  %61 = call i32 @em28xx_write_reg(%struct.em28xx* %59, i32 %60, i32 254)
  %62 = call i32 @msleep(i32 70)
  %63 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %64 = load i32, i32* @EM2820_R08_GPIO_CTRL, align 4
  %65 = call i32 @em28xx_write_reg(%struct.em28xx* %63, i32 %64, i32 222)
  %66 = call i32 @msleep(i32 70)
  %67 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %68 = load i32, i32* @EM2820_R08_GPIO_CTRL, align 4
  %69 = call i32 @em28xx_write_reg(%struct.em28xx* %67, i32 %68, i32 254)
  %70 = call i32 @msleep(i32 70)
  br label %135

71:                                               ; preds = %1, %1
  %72 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %73 = load i32, i32* @EM2820_R08_GPIO_CTRL, align 4
  %74 = call i32 @em28xx_write_reg(%struct.em28xx* %72, i32 %73, i32 253)
  br label %135

75:                                               ; preds = %1
  %76 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %77 = load i32, i32* @EM2820_R08_GPIO_CTRL, align 4
  %78 = call i32 @em28xx_write_reg(%struct.em28xx* %76, i32 %77, i32 255)
  %79 = call i32 @usleep_range(i32 10000, i32 11000)
  %80 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %81 = load i32, i32* @EM2820_R08_GPIO_CTRL, align 4
  %82 = call i32 @em28xx_write_reg(%struct.em28xx* %80, i32 %81, i32 254)
  %83 = call i32 @usleep_range(i32 10000, i32 11000)
  %84 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %85 = load i32, i32* @EM2880_R04_GPO, align 4
  %86 = call i32 @em28xx_write_reg(%struct.em28xx* %84, i32 %85, i32 0)
  %87 = call i32 @usleep_range(i32 10000, i32 11000)
  %88 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %89 = load i32, i32* @EM2880_R04_GPO, align 4
  %90 = call i32 @em28xx_write_reg(%struct.em28xx* %88, i32 %89, i32 8)
  %91 = call i32 @usleep_range(i32 10000, i32 11000)
  br label %135

92:                                               ; preds = %1
  %93 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %94 = load i32, i32* @EM28XX_R0F_XCLK, align 4
  %95 = call i32 @em28xx_write_regs(%struct.em28xx* %93, i32 %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %96 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %97 = load i32, i32* @EM28XX_R06_I2C_CLK, align 4
  %98 = call i32 @em28xx_write_regs(%struct.em28xx* %96, i32 %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %99 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %100 = call i32 @em28xx_write_regs(%struct.em28xx* %99, i32 13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %101 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %102 = call i32 @em28xx_write_regs(%struct.em28xx* %101, i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %103 = call i32 @usleep_range(i32 10000, i32 11000)
  %104 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %105 = call i32 @em28xx_write_regs(%struct.em28xx* %104, i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %106 = call i32 @usleep_range(i32 10000, i32 11000)
  %107 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %108 = call i32 @em28xx_write_regs(%struct.em28xx* %107, i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %109 = call i32 @usleep_range(i32 10000, i32 11000)
  %110 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %111 = call i32 @em28xx_write_regs(%struct.em28xx* %110, i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 1)
  br label %135

112:                                              ; preds = %1
  %113 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %114 = call i32 @em28xx_write_regs(%struct.em28xx* %113, i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 1)
  br label %135

115:                                              ; preds = %1
  %116 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %117 = load i32, i32* @EM2820_R08_GPIO_CTRL, align 4
  %118 = call i32 @em28xx_write_reg(%struct.em28xx* %116, i32 %117, i32 255)
  %119 = call i32 @msleep(i32 70)
  %120 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %121 = load i32, i32* @EM2820_R08_GPIO_CTRL, align 4
  %122 = call i32 @em28xx_write_reg(%struct.em28xx* %120, i32 %121, i32 247)
  %123 = call i32 @usleep_range(i32 10000, i32 11000)
  %124 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %125 = load i32, i32* @EM2820_R08_GPIO_CTRL, align 4
  %126 = call i32 @em28xx_write_reg(%struct.em28xx* %124, i32 %125, i32 254)
  %127 = call i32 @msleep(i32 70)
  %128 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %129 = load i32, i32* @EM2820_R08_GPIO_CTRL, align 4
  %130 = call i32 @em28xx_write_reg(%struct.em28xx* %128, i32 %129, i32 253)
  %131 = call i32 @msleep(i32 70)
  br label %135

132:                                              ; preds = %1
  %133 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %134 = call i32 @em28xx_wait_until_ac97_features_equals(%struct.em28xx* %133, i32 27280)
  br label %135

135:                                              ; preds = %1, %132, %115, %112, %92, %75, %71, %58, %45, %20, %11, %8
  %136 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %137 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %138 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @em28xx_gpio_set(%struct.em28xx* %136, i32 %140)
  %142 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %143 = load i32, i32* @EM28XX_ANALOG_MODE, align 4
  %144 = call i32 @em28xx_set_mode(%struct.em28xx* %142, i32 %143)
  %145 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %146 = load i32, i32* @EM28XX_SUSPEND, align 4
  %147 = call i32 @em28xx_set_mode(%struct.em28xx* %145, i32 %146)
  ret void
}

declare dso_local i32 @em28xx_set_xclk_i2c_speed(%struct.em28xx*) #1

declare dso_local i32 @em28xx_write_reg(%struct.em28xx*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @em28xx_write_regs(%struct.em28xx*, i32, i8*, i32) #1

declare dso_local i32 @em28xx_wait_until_ac97_features_equals(%struct.em28xx*, i32) #1

declare dso_local i32 @em28xx_gpio_set(%struct.em28xx*, i32) #1

declare dso_local i32 @em28xx_set_mode(%struct.em28xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
