; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-core.c_saa7134_track_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-core.c_saa7134_track_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32 }

@gpio_tracking = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPMODE3 = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPRESCAN = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPMODE0 = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPSTATUS0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%s: gpio: mode=0x%07lx in=0x%07lx out=0x%07lx [%s]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saa7134_track_gpio(%struct.saa7134_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.saa7134_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @gpio_tracking, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %41

10:                                               ; preds = %2
  %11 = load i32, i32* @SAA7134_GPIO_GPMODE3, align 4
  %12 = load i32, i32* @SAA7134_GPIO_GPRESCAN, align 4
  %13 = call i32 @saa_andorb(i32 %11, i32 %12, i32 0)
  %14 = load i32, i32* @SAA7134_GPIO_GPMODE3, align 4
  %15 = load i32, i32* @SAA7134_GPIO_GPRESCAN, align 4
  %16 = load i32, i32* @SAA7134_GPIO_GPRESCAN, align 4
  %17 = call i32 @saa_andorb(i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* @SAA7134_GPIO_GPMODE0, align 4
  %19 = ashr i32 %18, 2
  %20 = call i32 @saa_readl(i32 %19)
  %21 = and i32 %20, 268435455
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %5, align 8
  %23 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %24 = ashr i32 %23, 2
  %25 = call i32 @saa_readl(i32 %24)
  %26 = and i32 %25, 268435455
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %6, align 8
  %28 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %29 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = xor i64 %32, -1
  %34 = load i64, i64* %6, align 8
  %35 = and i64 %33, %34
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = and i64 %36, %37
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @core_dbg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %31, i64 %35, i64 %38, i8* %39)
  br label %41

41:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @saa_andorb(i32, i32, i32) #1

declare dso_local i32 @saa_readl(i32) #1

declare dso_local i32 @core_dbg(i8*, i32, i64, i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
