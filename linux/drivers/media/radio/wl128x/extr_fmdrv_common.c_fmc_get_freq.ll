; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_fmc_get_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_fmc_get_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmdev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@FM_UNDEFINED_FREQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"RX frequency is not set\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Invalid memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fmc_get_freq(%struct.fmdev* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fmdev*, align 8
  %5 = alloca i64*, align 8
  store %struct.fmdev* %0, %struct.fmdev** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %7 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @FM_UNDEFINED_FREQ, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = call i32 @fmerr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EPERM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %38

16:                                               ; preds = %2
  %17 = load i64*, i64** %5, align 8
  %18 = icmp eq i64* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = call i32 @fmerr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %38

23:                                               ; preds = %16
  %24 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %25 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %35 [
    i32 129, label %27
    i32 128, label %33
  ]

27:                                               ; preds = %23
  %28 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %29 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %5, align 8
  store i64 %31, i64* %32, align 8
  store i32 0, i32* %3, align 4
  br label %38

33:                                               ; preds = %23
  %34 = load i64*, i64** %5, align 8
  store i64 0, i64* %34, align 8
  store i32 0, i32* %3, align 4
  br label %38

35:                                               ; preds = %23
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %33, %27, %19, %12
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @fmerr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
