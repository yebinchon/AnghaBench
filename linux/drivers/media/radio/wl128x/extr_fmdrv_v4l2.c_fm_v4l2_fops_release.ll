; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_v4l2.c_fm_v4l2_fops_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_v4l2.c_fm_v4l2_fops_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.fmdev = type { i32 }

@radio_disconnected = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"FM device is already closed\0A\00", align 1
@FM_MODE_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unable to turn off the chip\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"FM CORE release failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @fm_v4l2_fops_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm_v4l2_fops_release(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fmdev*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = call %struct.fmdev* @video_drvdata(%struct.file* %6)
  store %struct.fmdev* %7, %struct.fmdev** %5, align 8
  %8 = load i64, i64* @radio_disconnected, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 @fmdbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %36

12:                                               ; preds = %1
  %13 = load %struct.fmdev*, %struct.fmdev** %5, align 8
  %14 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.fmdev*, %struct.fmdev** %5, align 8
  %17 = load i32, i32* @FM_MODE_OFF, align 4
  %18 = call i32 @fmc_set_mode(%struct.fmdev* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = call i32 @fmerr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %31

23:                                               ; preds = %12
  %24 = load %struct.fmdev*, %struct.fmdev** %5, align 8
  %25 = call i32 @fmc_release(%struct.fmdev* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 @fmerr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %31

30:                                               ; preds = %23
  store i64 0, i64* @radio_disconnected, align 8
  br label %31

31:                                               ; preds = %30, %28, %21
  %32 = load %struct.fmdev*, %struct.fmdev** %5, align 8
  %33 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %31, %10
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.fmdev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @fmdbg(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fmc_set_mode(%struct.fmdev*, i32) #1

declare dso_local i32 @fmerr(i8*) #1

declare dso_local i32 @fmc_release(%struct.fmdev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
