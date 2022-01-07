; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_tx.c_fm_tx_set_radio_text.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_tx.c_fm_tx_set_radio_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmdev = type { i64 }

@FM_MODE_TX = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@RDS_DATA_ENB = common dso_local global i32 0, align 4
@REG_WR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm_tx_set_radio_text(%struct.fmdev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fmdev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fmdev* %0, %struct.fmdev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.fmdev*, %struct.fmdev** %5, align 8
  %11 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @FM_MODE_TX, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EPERM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %40

18:                                               ; preds = %3
  %19 = load %struct.fmdev*, %struct.fmdev** %5, align 8
  %20 = call i32 @fm_tx_set_rds_mode(%struct.fmdev* %19, i32 0)
  %21 = load %struct.fmdev*, %struct.fmdev** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @strlen(i32* %23)
  %25 = call i32 @set_rds_len(%struct.fmdev* %21, i32 %22, i32 %24)
  %26 = load %struct.fmdev*, %struct.fmdev** %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @set_rds_text(%struct.fmdev* %26, i32* %27)
  %29 = load %struct.fmdev*, %struct.fmdev** %5, align 8
  %30 = call i32 @set_rds_data_mode(%struct.fmdev* %29, i32 0)
  store i32 1, i32* %8, align 4
  %31 = load %struct.fmdev*, %struct.fmdev** %5, align 8
  %32 = load i32, i32* @RDS_DATA_ENB, align 4
  %33 = load i32, i32* @REG_WR, align 4
  %34 = call i32 @fmc_send_cmd(%struct.fmdev* %31, i32 %32, i32 %33, i32* %8, i32 4, i32* null, i32* null)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %18
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %40

39:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %37, %15
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @fm_tx_set_rds_mode(%struct.fmdev*, i32) #1

declare dso_local i32 @set_rds_len(%struct.fmdev*, i32, i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @set_rds_text(%struct.fmdev*, i32*) #1

declare dso_local i32 @set_rds_data_mode(%struct.fmdev*, i32) #1

declare dso_local i32 @fmc_send_cmd(%struct.fmdev*, i32, i32, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
