; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_tx.c_fm_tx_set_stereo_mono.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_tx.c_fm_tx_set_stereo_mono.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmdev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"stereo mode: %d\0A\00", align 1
@MONO_SET = common dso_local global i32 0, align 4
@REG_WR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm_tx_set_stereo_mono(%struct.fmdev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fmdev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.fmdev* %0, %struct.fmdev** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %9 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @fmdbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i64, i64* %5, align 8
  %19 = sub nsw i64 1, %18
  store i64 %19, i64* %6, align 8
  %20 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %21 = load i32, i32* @MONO_SET, align 4
  %22 = load i32, i32* @REG_WR, align 4
  %23 = call i32 @fmc_send_cmd(%struct.fmdev* %20, i32 %21, i32 %22, i64* %6, i32 8, i32* null, i32* null)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %34

28:                                               ; preds = %15
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %31 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %28, %26, %14
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @fmdbg(i8*, i64) #1

declare dso_local i32 @fmc_send_cmd(%struct.fmdev*, i32, i32, i64*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
