; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_rx.c_fm_rx_get_deemph_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_rx.c_fm_rx_get_deemph_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmdev = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FM_MODE_RX = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Invalid memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm_rx_get_deemph_mode(%struct.fmdev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fmdev*, align 8
  %5 = alloca i32*, align 8
  store %struct.fmdev* %0, %struct.fmdev** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %7 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @FM_MODE_RX, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EPERM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %27

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = call i32 @fmerr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %27

21:                                               ; preds = %14
  %22 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %23 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32*, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %21, %17, %11
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @fmerr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
