; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sq905.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sq905.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32, i32 }

@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Start streaming at high resolution\0A\00", align 1
@SQ905_CAPTURE_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Start streaming at medium resolution\0A\00", align 1
@SQ905_CAPTURE_MED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Start streaming at low resolution\0A\00", align 1
@SQ905_CAPTURE_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Start streaming command failed\0A\00", align 1
@MODULE_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %4, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %11 [
    i32 1, label %19
    i32 0, label %27
  ]

11:                                               ; preds = %1
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %13 = load i32, i32* @D_STREAM, align 4
  %14 = call i32 @gspca_dbg(%struct.gspca_dev* %12, i32 %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.sd*, %struct.sd** %4, align 8
  %16 = getelementptr inbounds %struct.sd, %struct.sd* %15, i32 0, i32 2
  %17 = load i32, i32* @SQ905_CAPTURE_HIGH, align 4
  %18 = call i32 @sq905_command(i32* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  br label %35

19:                                               ; preds = %1
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %21 = load i32, i32* @D_STREAM, align 4
  %22 = call i32 @gspca_dbg(%struct.gspca_dev* %20, i32 %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.sd*, %struct.sd** %4, align 8
  %24 = getelementptr inbounds %struct.sd, %struct.sd* %23, i32 0, i32 2
  %25 = load i32, i32* @SQ905_CAPTURE_MED, align 4
  %26 = call i32 @sq905_command(i32* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  br label %35

27:                                               ; preds = %1
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %29 = load i32, i32* @D_STREAM, align 4
  %30 = call i32 @gspca_dbg(%struct.gspca_dev* %28, i32 %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.sd*, %struct.sd** %4, align 8
  %32 = getelementptr inbounds %struct.sd, %struct.sd* %31, i32 0, i32 2
  %33 = load i32, i32* @SQ905_CAPTURE_LOW, align 4
  %34 = call i32 @sq905_command(i32* %32, i32 %33)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %27, %19, %11
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %40 = call i32 @gspca_err(%struct.gspca_dev* %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %53

42:                                               ; preds = %35
  %43 = load i32, i32* @MODULE_NAME, align 4
  %44 = call i32 @create_singlethread_workqueue(i32 %43)
  %45 = load %struct.sd*, %struct.sd** %4, align 8
  %46 = getelementptr inbounds %struct.sd, %struct.sd* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.sd*, %struct.sd** %4, align 8
  %48 = getelementptr inbounds %struct.sd, %struct.sd* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sd*, %struct.sd** %4, align 8
  %51 = getelementptr inbounds %struct.sd, %struct.sd* %50, i32 0, i32 0
  %52 = call i32 @queue_work(i32 %49, i32* %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %42, %38
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #1

declare dso_local i32 @sq905_command(i32*, i32) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*) #1

declare dso_local i32 @create_singlethread_workqueue(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
