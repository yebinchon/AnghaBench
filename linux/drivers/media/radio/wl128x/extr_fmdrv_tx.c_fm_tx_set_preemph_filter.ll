; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_tx.c_fm_tx_set_preemph_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_tx.c_fm_tx_set_preemph_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmdev = type { i64, %struct.fmtx_data }
%struct.fmtx_data = type { i32 }

@FM_MODE_TX = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@FM_TX_PREEMPH_OFF = common dso_local global i32 0, align 4
@FM_TX_PREEMPH_50US = common dso_local global i32 0, align 4
@FM_TX_PREEMPH_75US = common dso_local global i32 0, align 4
@PREMPH_SET = common dso_local global i32 0, align 4
@REG_WR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm_tx_set_preemph_filter(%struct.fmdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fmdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fmtx_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fmdev* %0, %struct.fmdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %10 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %9, i32 0, i32 1
  store %struct.fmtx_data* %10, %struct.fmtx_data** %6, align 8
  %11 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %12 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @FM_MODE_TX, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EPERM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %41

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %27 [
    i32 128, label %21
    i32 130, label %23
    i32 129, label %25
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* @FM_TX_PREEMPH_OFF, align 4
  store i32 %22, i32* %7, align 4
  br label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @FM_TX_PREEMPH_50US, align 4
  store i32 %24, i32* %7, align 4
  br label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @FM_TX_PREEMPH_75US, align 4
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %19, %25, %23, %21
  %28 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %29 = load i32, i32* @PREMPH_SET, align 4
  %30 = load i32, i32* @REG_WR, align 4
  %31 = call i32 @fmc_send_cmd(%struct.fmdev* %28, i32 %29, i32 %30, i32* %7, i32 4, i32* null, i32* null)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %41

36:                                               ; preds = %27
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.fmtx_data*, %struct.fmtx_data** %6, align 8
  %39 = getelementptr inbounds %struct.fmtx_data, %struct.fmtx_data* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %36, %34, %16
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @fmc_send_cmd(%struct.fmdev*, i32, i32, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
