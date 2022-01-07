; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_av.c_dvb_audio_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_av.c_dvb_audio_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.dvb_device* }
%struct.dvb_device = type { %struct.av7110* }
%struct.av7110 = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"av7110:%p, \0A\00", align 1
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @dvb_audio_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_audio_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dvb_device*, align 8
  %6 = alloca %struct.av7110*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.dvb_device*, %struct.dvb_device** %9, align 8
  store %struct.dvb_device* %10, %struct.dvb_device** %5, align 8
  %11 = load %struct.dvb_device*, %struct.dvb_device** %5, align 8
  %12 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %11, i32 0, i32 0
  %13 = load %struct.av7110*, %struct.av7110** %12, align 8
  store %struct.av7110* %13, %struct.av7110** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.av7110*, %struct.av7110** %6, align 8
  %15 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.av7110* %14)
  %16 = load %struct.file*, %struct.file** %3, align 8
  %17 = load %struct.av7110*, %struct.av7110** %6, align 8
  %18 = getelementptr inbounds %struct.av7110, %struct.av7110* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @poll_wait(%struct.file* %16, i32* %19, i32* %20)
  %22 = load %struct.av7110*, %struct.av7110** %6, align 8
  %23 = getelementptr inbounds %struct.av7110, %struct.av7110* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %2
  %27 = load %struct.av7110*, %struct.av7110** %6, align 8
  %28 = getelementptr inbounds %struct.av7110, %struct.av7110* %27, i32 0, i32 0
  %29 = call i32 @dvb_ringbuffer_free(%struct.TYPE_2__* %28)
  %30 = icmp sge i32 %29, 20480
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32, i32* @EPOLLOUT, align 4
  %33 = load i32, i32* @EPOLLWRNORM, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %31, %26
  br label %42

38:                                               ; preds = %2
  %39 = load i32, i32* @EPOLLOUT, align 4
  %40 = load i32, i32* @EPOLLWRNORM, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %38, %37
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @dprintk(i32, i8*, %struct.av7110*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @dvb_ringbuffer_free(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
