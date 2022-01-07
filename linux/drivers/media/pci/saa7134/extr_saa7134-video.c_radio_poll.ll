; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_radio_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_radio_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.saa7134_dev = type { i32 }
%struct.saa6588_command = type { i32, i32*, %struct.file* }

@core = common dso_local global i32 0, align 4
@ioctl = common dso_local global i32 0, align 4
@SAA6588_CMD_POLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @radio_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radio_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.saa7134_dev*, align 8
  %6 = alloca %struct.saa6588_command, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.saa7134_dev* @video_drvdata(%struct.file* %8)
  store %struct.saa7134_dev* %9, %struct.saa7134_dev** %5, align 8
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @v4l2_ctrl_poll(%struct.file* %10, i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.file*, %struct.file** %3, align 8
  %14 = getelementptr inbounds %struct.saa6588_command, %struct.saa6588_command* %6, i32 0, i32 2
  store %struct.file* %13, %struct.file** %14, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds %struct.saa6588_command, %struct.saa6588_command* %6, i32 0, i32 1
  store i32* %15, i32** %16, align 8
  %17 = getelementptr inbounds %struct.saa6588_command, %struct.saa6588_command* %6, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %19 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %22 = load i32, i32* @core, align 4
  %23 = load i32, i32* @ioctl, align 4
  %24 = load i32, i32* @SAA6588_CMD_POLL, align 4
  %25 = call i32 @saa_call_all(%struct.saa7134_dev* %21, i32 %22, i32 %23, i32 %24, %struct.saa6588_command* %6)
  %26 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %27 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load i32, i32* %7, align 4
  %30 = getelementptr inbounds %struct.saa6588_command, %struct.saa6588_command* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %29, %31
  ret i32 %32
}

declare dso_local %struct.saa7134_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_ctrl_poll(%struct.file*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @saa_call_all(%struct.saa7134_dev*, i32, i32, i32, %struct.saa6588_command*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
