; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_rx.c_fm_rx_set_volume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_rx.c_fm_rx_set_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmdev = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FM_MODE_RX = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@FM_RX_VOLUME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Volume is not within(%d-%d) range\0A\00", align 1
@FM_RX_VOLUME_MIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FM_RX_VOLUME_GAIN_STEP = common dso_local global i32 0, align 4
@VOLUME_SET = common dso_local global i32 0, align 4
@REG_WR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm_rx_set_volume(%struct.fmdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fmdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fmdev* %0, %struct.fmdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %9 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @FM_MODE_RX, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EPERM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %45

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @FM_RX_VOLUME_MAX, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i32, i32* @FM_RX_VOLUME_MIN, align 4
  %22 = load i32, i32* @FM_RX_VOLUME_MAX, align 4
  %23 = call i32 @fmerr(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %45

26:                                               ; preds = %16
  %27 = load i32, i32* @FM_RX_VOLUME_GAIN_STEP, align 4
  %28 = load i32, i32* %5, align 4
  %29 = mul nsw i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %6, align 4
  %31 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %32 = load i32, i32* @VOLUME_SET, align 4
  %33 = load i32, i32* @REG_WR, align 4
  %34 = call i32 @fmc_send_cmd(%struct.fmdev* %31, i32 %32, i32 %33, i32* %6, i32 4, i32* null, i32* null)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %45

39:                                               ; preds = %26
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %42 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %39, %37, %20, %13
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @fmerr(i8*, i32, i32) #1

declare dso_local i32 @fmc_send_cmd(%struct.fmdev*, i32, i32, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
