; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_rx.c_fm_config_rx_mute_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_rx.c_fm_config_rx_mute_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmdev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@FM_RX_AC_MUTE_MODE = common dso_local global i32 0, align 4
@FM_RX_UNMUTE_MODE = common dso_local global i32 0, align 4
@FM_RX_SOFT_MUTE_FORCE_MODE = common dso_local global i32 0, align 4
@FM_RX_RF_DEPENDENT_MUTE_ON = common dso_local global i64 0, align 8
@FM_RX_RF_DEP_MODE = common dso_local global i32 0, align 4
@MUTE_STATUS_SET = common dso_local global i32 0, align 4
@REG_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fmdev*)* @fm_config_rx_mute_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm_config_rx_mute_reg(%struct.fmdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fmdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fmdev* %0, %struct.fmdev** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %8 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %17 [
    i32 128, label %11
    i32 129, label %13
    i32 130, label %15
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @FM_RX_AC_MUTE_MODE, align 4
  store i32 %12, i32* %5, align 4
  br label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @FM_RX_UNMUTE_MODE, align 4
  store i32 %14, i32* %5, align 4
  br label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @FM_RX_SOFT_MUTE_FORCE_MODE, align 4
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %1, %15, %13, %11
  %18 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %19 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FM_RX_RF_DEPENDENT_MUTE_ON, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i32, i32* @FM_RX_RF_DEP_MODE, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %33

28:                                               ; preds = %17
  %29 = load i32, i32* @FM_RX_RF_DEP_MODE, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %28, %24
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %4, align 4
  %35 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %36 = load i32, i32* @MUTE_STATUS_SET, align 4
  %37 = load i32, i32* @REG_WR, align 4
  %38 = call i32 @fmc_send_cmd(%struct.fmdev* %35, i32 %36, i32 %37, i32* %4, i32 4, i32* null, i32* null)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %41
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @fmc_send_cmd(%struct.fmdev*, i32, i32, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
