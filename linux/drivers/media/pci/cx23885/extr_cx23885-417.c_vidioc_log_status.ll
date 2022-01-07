; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-417.c_vidioc_log_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-417.c_vidioc_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.cx23885_dev = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s/2\00", align 1
@core = common dso_local global i32 0, align 4
@log_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*)* @vidioc_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_log_status(%struct.file* %0, i8* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cx23885_dev*, align 8
  %6 = alloca [34 x i8], align 16
  store %struct.file* %0, %struct.file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.cx23885_dev* @video_drvdata(%struct.file* %7)
  store %struct.cx23885_dev* %8, %struct.cx23885_dev** %5, align 8
  %9 = getelementptr inbounds [34 x i8], [34 x i8]* %6, i64 0, i64 0
  %10 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %11 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @snprintf(i8* %9, i32 34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %15 = load i32, i32* @core, align 4
  %16 = load i32, i32* @log_status, align 4
  %17 = call i32 @call_all(%struct.cx23885_dev* %14, i32 %15, i32 %16)
  %18 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %19 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = getelementptr inbounds [34 x i8], [34 x i8]* %6, i64 0, i64 0
  %22 = call i32 @v4l2_ctrl_handler_log_status(i32* %20, i8* %21)
  ret i32 0
}

declare dso_local %struct.cx23885_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @call_all(%struct.cx23885_dev*, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_log_status(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
