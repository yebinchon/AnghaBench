; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_rx.c_fm_rx_set_deemphasis_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_rx.c_fm_rx_set_deemphasis_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmdev = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@FM_MODE_RX = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@FM_RX_EMPHASIS_FILTER_50_USEC = common dso_local global i64 0, align 8
@FM_RX_EMPHASIS_FILTER_75_USEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Invalid rx de-emphasis mode (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DEMPH_MODE_SET = common dso_local global i32 0, align 4
@REG_WR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm_rx_set_deemphasis_mode(%struct.fmdev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fmdev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.fmdev* %0, %struct.fmdev** %4, align 8
  store i64 %1, i64* %5, align 8
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
  br label %44

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @FM_RX_EMPHASIS_FILTER_50_USEC, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @FM_RX_EMPHASIS_FILTER_75_USEC, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @fmerr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %44

29:                                               ; preds = %20, %16
  %30 = load i64, i64* %5, align 8
  store i64 %30, i64* %6, align 8
  %31 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %32 = load i32, i32* @DEMPH_MODE_SET, align 4
  %33 = load i32, i32* @REG_WR, align 4
  %34 = call i32 @fmc_send_cmd(%struct.fmdev* %31, i32 %32, i32 %33, i64* %6, i32 8, i32* null, i32* null)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %44

39:                                               ; preds = %29
  %40 = load i64, i64* %5, align 8
  %41 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %42 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i64 %40, i64* %43, align 8
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %39, %37, %24, %13
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @fmerr(i8*, i64) #1

declare dso_local i32 @fmc_send_cmd(%struct.fmdev*, i32, i32, i64*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
