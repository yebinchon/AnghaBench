; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-video.c_vidioc_log_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-video.c_vidioc_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.cx25821_channel = type { %struct.sram_channel*, %struct.cx25821_dev* }
%struct.sram_channel = type { i32 }
%struct.cx25821_dev = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Video input 0 is %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"streaming\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"stopped\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*)* @vidioc_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_log_status(%struct.file* %0, i8* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cx25821_channel*, align 8
  %6 = alloca %struct.cx25821_dev*, align 8
  %7 = alloca %struct.sram_channel*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = call %struct.cx25821_channel* @video_drvdata(%struct.file* %9)
  store %struct.cx25821_channel* %10, %struct.cx25821_channel** %5, align 8
  %11 = load %struct.cx25821_channel*, %struct.cx25821_channel** %5, align 8
  %12 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %11, i32 0, i32 1
  %13 = load %struct.cx25821_dev*, %struct.cx25821_dev** %12, align 8
  store %struct.cx25821_dev* %13, %struct.cx25821_dev** %6, align 8
  %14 = load %struct.cx25821_channel*, %struct.cx25821_channel** %5, align 8
  %15 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %14, i32 0, i32 0
  %16 = load %struct.sram_channel*, %struct.sram_channel** %15, align 8
  store %struct.sram_channel* %16, %struct.sram_channel** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %18 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cx_read(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, 17
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %26 = call i32 @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %25)
  ret i32 0
}

declare dso_local %struct.cx25821_channel* @video_drvdata(%struct.file*) #1

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @pr_info(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
