; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-cards.c_saa7134_xc5000_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-cards.c_saa7134_xc5000_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32 }

@XC5000_TUNER_RESET = common dso_local global i32 0, align 4
@SAA7134_SPECIAL_MODE = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPMODE0 = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPSTATUS0 = common dso_local global i32 0, align 4
@SAA7133_ANALOG_IO_SELECT = common dso_local global i32 0, align 4
@SAA7134_ANALOG_IN_CTRL1 = common dso_local global i32 0, align 4
@SAA7134_AUDIO_CLOCK0 = common dso_local global i32 0, align 4
@SAA7134_AUDIO_PLL_CTRL = common dso_local global i32 0, align 4
@SAA7134_AUDIO_CLOCKS_PER_FIELD0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7134_dev*, i32, i32)* @saa7134_xc5000_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_xc5000_callback(%struct.saa7134_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.saa7134_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %8 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %22 [
    i32 128, label %10
    i32 129, label %10
    i32 130, label %10
  ]

10:                                               ; preds = %3, %3, %3
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @XC5000_TUNER_RESET, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load i32, i32* @SAA7134_SPECIAL_MODE, align 4
  %16 = call i32 @saa_writeb(i32 %15, i32 0)
  %17 = call i32 @msleep(i32 10)
  %18 = load i32, i32* @SAA7134_SPECIAL_MODE, align 4
  %19 = call i32 @saa_writeb(i32 %18, i32 1)
  %20 = call i32 @msleep(i32 10)
  br label %21

21:                                               ; preds = %14, %10
  br label %44

22:                                               ; preds = %3
  %23 = load i32, i32* @SAA7134_GPIO_GPMODE0, align 4
  %24 = ashr i32 %23, 2
  %25 = call i32 @saa_andorl(i32 %24, i32 115474432, i32 115474432)
  %26 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %27 = ashr i32 %26, 2
  %28 = call i32 @saa_andorl(i32 %27, i32 111280128, i32 111280128)
  %29 = load i32, i32* @SAA7133_ANALOG_IO_SELECT, align 4
  %30 = ashr i32 %29, 2
  %31 = call i32 @saa_andorl(i32 %30, i32 2, i32 2)
  %32 = load i32, i32* @SAA7134_ANALOG_IN_CTRL1, align 4
  %33 = ashr i32 %32, 2
  %34 = call i32 @saa_andorl(i32 %33, i32 129, i32 129)
  %35 = load i32, i32* @SAA7134_AUDIO_CLOCK0, align 4
  %36 = ashr i32 %35, 2
  %37 = call i32 @saa_andorl(i32 %36, i32 51936743, i32 51936743)
  %38 = load i32, i32* @SAA7134_AUDIO_PLL_CTRL, align 4
  %39 = ashr i32 %38, 2
  %40 = call i32 @saa_andorl(i32 %39, i32 3, i32 3)
  %41 = load i32, i32* @SAA7134_AUDIO_CLOCKS_PER_FIELD0, align 4
  %42 = ashr i32 %41, 2
  %43 = call i32 @saa_andorl(i32 %42, i32 122880, i32 122880)
  br label %44

44:                                               ; preds = %22, %21
  ret i32 0
}

declare dso_local i32 @saa_writeb(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @saa_andorl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
