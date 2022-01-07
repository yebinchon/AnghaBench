; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_v4l2.c_fm_v4l2_fops_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_v4l2.c_fm_v4l2_fops_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.fmdev = type { i32 }

@radio_disconnected = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"FM device is already opened\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Unable to prepare FM CORE\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Load FM RX firmware..\0A\00", align 1
@FM_MODE_RX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Unable to load FM RX firmware\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @fm_v4l2_fops_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm_v4l2_fops_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fmdev*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.fmdev* null, %struct.fmdev** %5, align 8
  %6 = load i32, i32* @radio_disconnected, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = call i32 @fmerr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @EBUSY, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %44

12:                                               ; preds = %1
  %13 = load %struct.file*, %struct.file** %3, align 8
  %14 = call %struct.fmdev* @video_drvdata(%struct.file* %13)
  store %struct.fmdev* %14, %struct.fmdev** %5, align 8
  %15 = load %struct.fmdev*, %struct.fmdev** %5, align 8
  %16 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %15, i32 0, i32 0
  %17 = call i64 @mutex_lock_interruptible(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i32, i32* @ERESTARTSYS, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %44

22:                                               ; preds = %12
  %23 = load %struct.fmdev*, %struct.fmdev** %5, align 8
  %24 = call i32 @fmc_prepare(%struct.fmdev* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @fmerr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %39

29:                                               ; preds = %22
  %30 = call i32 @fmdbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.fmdev*, %struct.fmdev** %5, align 8
  %32 = load i32, i32* @FM_MODE_RX, align 4
  %33 = call i32 @fmc_set_mode(%struct.fmdev* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = call i32 @fmerr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %39

38:                                               ; preds = %29
  store i32 1, i32* @radio_disconnected, align 4
  br label %39

39:                                               ; preds = %38, %36, %27
  %40 = load %struct.fmdev*, %struct.fmdev** %5, align 8
  %41 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %39, %19, %8
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @fmerr(i8*) #1

declare dso_local %struct.fmdev* @video_drvdata(%struct.file*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @fmc_prepare(%struct.fmdev*) #1

declare dso_local i32 @fmdbg(i8*) #1

declare dso_local i32 @fmc_set_mode(%struct.fmdev*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
