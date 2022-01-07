; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_rx.c_fm_rx_set_channel_spacing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_rx.c_fm_rx_set_channel_spacing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmdev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@FM_CHANNEL_SPACING_50KHZ = common dso_local global i32 0, align 4
@FM_CHANNEL_SPACING_100KHZ = common dso_local global i32 0, align 4
@FM_CHANNEL_SPACING_200KHZ = common dso_local global i32 0, align 4
@CHANL_BW_SET = common dso_local global i32 0, align 4
@REG_WR = common dso_local global i32 0, align 4
@FM_FREQ_MUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fmdev*, i32)* @fm_rx_set_channel_spacing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm_rx_set_channel_spacing(%struct.fmdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fmdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fmdev* %0, %struct.fmdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp sle i32 %11, 50000
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i32, i32* @FM_CHANNEL_SPACING_50KHZ, align 4
  store i32 %14, i32* %5, align 4
  br label %26

15:                                               ; preds = %10, %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp sgt i32 %16, 50000
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = icmp sle i32 %19, 100000
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @FM_CHANNEL_SPACING_100KHZ, align 4
  store i32 %22, i32* %5, align 4
  br label %25

23:                                               ; preds = %18, %15
  %24 = load i32, i32* @FM_CHANNEL_SPACING_200KHZ, align 4
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %23, %21
  br label %26

26:                                               ; preds = %25, %13
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %6, align 4
  %28 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %29 = load i32, i32* @CHANL_BW_SET, align 4
  %30 = load i32, i32* @REG_WR, align 4
  %31 = call i32 @fmc_send_cmd(%struct.fmdev* %28, i32 %29, i32 %30, i32* %6, i32 4, i32* null, i32* null)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %45

36:                                               ; preds = %26
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @FM_FREQ_MUL, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %41 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 4
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %36, %34
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @fmc_send_cmd(%struct.fmdev*, i32, i32, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
