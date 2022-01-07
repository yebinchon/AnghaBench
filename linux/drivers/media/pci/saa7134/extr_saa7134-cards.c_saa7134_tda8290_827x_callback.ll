; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-cards.c_saa7134_tda8290_827x_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-cards.c_saa7134_tda8290_827x_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32 }

@SAA7134_VIDEO_PORT_CTRL3 = common dso_local global i32 0, align 4
@SAA7134_VIDEO_PORT_CTRL6 = common dso_local global i32 0, align 4
@SAA7134_VGATE_START = common dso_local global i32 0, align 4
@SAA7134_VGATE_STOP = common dso_local global i32 0, align 4
@SAA7134_MISC_VGATE_MSB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7134_dev*, i32, i32)* @saa7134_tda8290_827x_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_tda8290_827x_callback(%struct.saa7134_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.saa7134_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %33 [
    i32 0, label %10
    i32 1, label %14
  ]

10:                                               ; preds = %3
  %11 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @saa7134_set_gpio(%struct.saa7134_dev* %11, i32 22, i32 %12)
  br label %36

14:                                               ; preds = %3
  %15 = load i32, i32* @SAA7134_VIDEO_PORT_CTRL3, align 4
  %16 = call i32 @saa_andorb(i32 %15, i32 128, i32 128)
  %17 = load i32, i32* @SAA7134_VIDEO_PORT_CTRL6, align 4
  %18 = call i32 @saa_andorb(i32 %17, i32 15, i32 3)
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 11, i32* %8, align 4
  br label %23

22:                                               ; preds = %14
  store i32 17, i32* %8, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i32, i32* @SAA7134_VGATE_START, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @saa_writeb(i32 %24, i32 %25)
  %27 = load i32, i32* @SAA7134_VGATE_STOP, align 4
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i32 @saa_writeb(i32 %27, i32 %29)
  %31 = load i32, i32* @SAA7134_MISC_VGATE_MSB, align 4
  %32 = call i32 @saa_andorb(i32 %31, i32 3, i32 0)
  br label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %37

36:                                               ; preds = %23, %10
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @saa7134_set_gpio(%struct.saa7134_dev*, i32, i32) #1

declare dso_local i32 @saa_andorb(i32, i32, i32) #1

declare dso_local i32 @saa_writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
