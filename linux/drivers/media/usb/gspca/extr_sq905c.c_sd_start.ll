; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sq905c.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sq905c.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sd = type { i32, i32, i32 }

@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Start streaming at high resolution\0A\00", align 1
@SQ905C_CAPTURE_HI = common dso_local global i32 0, align 4
@SQ905C_CAPTURE_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Start streaming at medium resolution\0A\00", align 1
@SQ905C_CAPTURE_MED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Start streaming command failed\0A\00", align 1
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
  %9 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.sd*, %struct.sd** %4, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %15 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %30 [
    i32 640, label %18
  ]

18:                                               ; preds = %1
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %20 = load i32, i32* @D_STREAM, align 4
  %21 = call i32 @gspca_dbg(%struct.gspca_dev* %19, i32 %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.sd*, %struct.sd** %4, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %27 = load i32, i32* @SQ905C_CAPTURE_HI, align 4
  %28 = load i32, i32* @SQ905C_CAPTURE_INDEX, align 4
  %29 = call i32 @sq905c_command(%struct.gspca_dev* %26, i32 %27, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %38

30:                                               ; preds = %1
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %32 = load i32, i32* @D_STREAM, align 4
  %33 = call i32 @gspca_dbg(%struct.gspca_dev* %31, i32 %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %35 = load i32, i32* @SQ905C_CAPTURE_MED, align 4
  %36 = load i32, i32* @SQ905C_CAPTURE_INDEX, align 4
  %37 = call i32 @sq905c_command(%struct.gspca_dev* %34, i32 %35, i32 %36)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %30, %18
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %43 = call i32 @gspca_err(%struct.gspca_dev* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %56

45:                                               ; preds = %38
  %46 = load i32, i32* @MODULE_NAME, align 4
  %47 = call i32 @create_singlethread_workqueue(i32 %46)
  %48 = load %struct.sd*, %struct.sd** %4, align 8
  %49 = getelementptr inbounds %struct.sd, %struct.sd* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.sd*, %struct.sd** %4, align 8
  %51 = getelementptr inbounds %struct.sd, %struct.sd* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sd*, %struct.sd** %4, align 8
  %54 = getelementptr inbounds %struct.sd, %struct.sd* %53, i32 0, i32 0
  %55 = call i32 @queue_work(i32 %52, i32* %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %45, %41
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #1

declare dso_local i32 @sq905c_command(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*) #1

declare dso_local i32 @create_singlethread_workqueue(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
