; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-blackbird.c_vidioc_log_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-blackbird.c_vidioc_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.cx8802_dev = type { %struct.TYPE_2__, %struct.cx88_core* }
%struct.TYPE_2__ = type { i32 }
%struct.cx88_core = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"%s/2\00", align 1
@log_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*)* @vidioc_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_log_status(%struct.file* %0, i8* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cx8802_dev*, align 8
  %6 = alloca %struct.cx88_core*, align 8
  %7 = alloca [34 x i8], align 16
  store %struct.file* %0, %struct.file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.cx8802_dev* @video_drvdata(%struct.file* %8)
  store %struct.cx8802_dev* %9, %struct.cx8802_dev** %5, align 8
  %10 = load %struct.cx8802_dev*, %struct.cx8802_dev** %5, align 8
  %11 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %10, i32 0, i32 1
  %12 = load %struct.cx88_core*, %struct.cx88_core** %11, align 8
  store %struct.cx88_core* %12, %struct.cx88_core** %6, align 8
  %13 = getelementptr inbounds [34 x i8], [34 x i8]* %7, i64 0, i64 0
  %14 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %15 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @snprintf(i8* %13, i32 34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %19 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %20 = load i32, i32* @log_status, align 4
  %21 = call i32 @call_all(%struct.cx88_core* %18, %struct.cx88_core* %19, i32 %20)
  %22 = load %struct.cx8802_dev*, %struct.cx8802_dev** %5, align 8
  %23 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = getelementptr inbounds [34 x i8], [34 x i8]* %7, i64 0, i64 0
  %26 = call i32 @v4l2_ctrl_handler_log_status(i32* %24, i8* %25)
  ret i32 0
}

declare dso_local %struct.cx8802_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @call_all(%struct.cx88_core*, %struct.cx88_core*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_log_status(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
