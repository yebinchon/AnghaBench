; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_radio_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_radio_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.bttv_fh* }
%struct.bttv_fh = type { %struct.TYPE_2__, %struct.bttv* }
%struct.TYPE_2__ = type { i32 }
%struct.bttv = type { i32 }
%struct.saa6588_command = type { i32, i32*, %struct.file* }

@EPOLLPRI = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@ioctl = common dso_local global i32 0, align 4
@SAA6588_CMD_POLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @radio_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radio_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bttv_fh*, align 8
  %6 = alloca %struct.bttv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.saa6588_command, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.bttv_fh*, %struct.bttv_fh** %11, align 8
  store %struct.bttv_fh* %12, %struct.bttv_fh** %5, align 8
  %13 = load %struct.bttv_fh*, %struct.bttv_fh** %5, align 8
  %14 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %13, i32 0, i32 1
  %15 = load %struct.bttv*, %struct.bttv** %14, align 8
  store %struct.bttv* %15, %struct.bttv** %6, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @poll_requested_events(i32* %16)
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %18 = load %struct.bttv_fh*, %struct.bttv_fh** %5, align 8
  %19 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %18, i32 0, i32 0
  %20 = call i64 @v4l2_event_pending(%struct.TYPE_2__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @EPOLLPRI, align 4
  store i32 %23, i32* %9, align 4
  br label %37

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @EPOLLPRI, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.file*, %struct.file** %3, align 8
  %31 = load %struct.bttv_fh*, %struct.bttv_fh** %5, align 8
  %32 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @poll_wait(%struct.file* %30, i32* %33, i32* %34)
  br label %36

36:                                               ; preds = %29, %24
  br label %37

37:                                               ; preds = %36, %22
  %38 = load %struct.bttv*, %struct.bttv** %6, align 8
  %39 = call i32 @radio_enable(%struct.bttv* %38)
  %40 = load %struct.file*, %struct.file** %3, align 8
  %41 = getelementptr inbounds %struct.saa6588_command, %struct.saa6588_command* %8, i32 0, i32 2
  store %struct.file* %40, %struct.file** %41, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds %struct.saa6588_command, %struct.saa6588_command* %8, i32 0, i32 1
  store i32* %42, i32** %43, align 8
  %44 = load i32, i32* %9, align 4
  %45 = getelementptr inbounds %struct.saa6588_command, %struct.saa6588_command* %8, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  %46 = load %struct.bttv*, %struct.bttv** %6, align 8
  %47 = load i32, i32* @core, align 4
  %48 = load i32, i32* @ioctl, align 4
  %49 = load i32, i32* @SAA6588_CMD_POLL, align 4
  %50 = call i32 @bttv_call_all(%struct.bttv* %46, i32 %47, i32 %48, i32 %49, %struct.saa6588_command* %8)
  %51 = getelementptr inbounds %struct.saa6588_command, %struct.saa6588_command* %8, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  ret i32 %52
}

declare dso_local i32 @poll_requested_events(i32*) #1

declare dso_local i64 @v4l2_event_pending(%struct.TYPE_2__*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @radio_enable(%struct.bttv*) #1

declare dso_local i32 @bttv_call_all(%struct.bttv*, i32, i32, i32, %struct.saa6588_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
