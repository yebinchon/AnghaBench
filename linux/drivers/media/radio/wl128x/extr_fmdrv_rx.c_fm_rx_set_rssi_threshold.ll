; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_rx.c_fm_rx_set_rssi_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_rx.c_fm_rx_set_rssi_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmdev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i16 }

@FM_RX_RSSI_THRESHOLD_MIN = common dso_local global i16 0, align 2
@FM_RX_RSSI_THRESHOLD_MAX = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [30 x i8] c"Invalid RSSI threshold level\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SEARCH_LVL_SET = common dso_local global i32 0, align 4
@REG_WR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm_rx_set_rssi_threshold(%struct.fmdev* %0, i16 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fmdev*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.fmdev* %0, %struct.fmdev** %4, align 8
  store i16 %1, i16* %5, align 2
  %8 = load i16, i16* %5, align 2
  %9 = sext i16 %8 to i32
  %10 = load i16, i16* @FM_RX_RSSI_THRESHOLD_MIN, align 2
  %11 = sext i16 %10 to i32
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load i16, i16* %5, align 2
  %15 = sext i16 %14 to i32
  %16 = load i16, i16* @FM_RX_RSSI_THRESHOLD_MAX, align 2
  %17 = sext i16 %16 to i32
  %18 = icmp sgt i32 %15, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13, %2
  %20 = call i32 @fmerr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %39

23:                                               ; preds = %13
  %24 = load i16, i16* %5, align 2
  %25 = sext i16 %24 to i64
  store i64 %25, i64* %6, align 8
  %26 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %27 = load i32, i32* @SEARCH_LVL_SET, align 4
  %28 = load i32, i32* @REG_WR, align 4
  %29 = call i32 @fmc_send_cmd(%struct.fmdev* %26, i32 %27, i32 %28, i64* %6, i32 8, i32* null, i32* null)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %39

34:                                               ; preds = %23
  %35 = load i16, i16* %5, align 2
  %36 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %37 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i16 %35, i16* %38, align 2
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %34, %32, %19
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @fmerr(i8*) #1

declare dso_local i32 @fmc_send_cmd(%struct.fmdev*, i32, i32, i64*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
