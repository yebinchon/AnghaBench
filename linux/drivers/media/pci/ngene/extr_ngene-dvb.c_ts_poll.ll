; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-dvb.c_ts_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-dvb.c_ts_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.dvb_device* }
%struct.dvb_device = type { %struct.ngene_channel* }
%struct.ngene_channel = type { %struct.ngene* }
%struct.ngene = type { %struct.dvb_ringbuffer, %struct.dvb_ringbuffer }
%struct.dvb_ringbuffer = type { i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @ts_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dvb_device*, align 8
  %6 = alloca %struct.ngene_channel*, align 8
  %7 = alloca %struct.ngene*, align 8
  %8 = alloca %struct.dvb_ringbuffer*, align 8
  %9 = alloca %struct.dvb_ringbuffer*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.file*, %struct.file** %3, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.dvb_device*, %struct.dvb_device** %12, align 8
  store %struct.dvb_device* %13, %struct.dvb_device** %5, align 8
  %14 = load %struct.dvb_device*, %struct.dvb_device** %5, align 8
  %15 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %14, i32 0, i32 0
  %16 = load %struct.ngene_channel*, %struct.ngene_channel** %15, align 8
  store %struct.ngene_channel* %16, %struct.ngene_channel** %6, align 8
  %17 = load %struct.ngene_channel*, %struct.ngene_channel** %6, align 8
  %18 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %17, i32 0, i32 0
  %19 = load %struct.ngene*, %struct.ngene** %18, align 8
  store %struct.ngene* %19, %struct.ngene** %7, align 8
  %20 = load %struct.ngene*, %struct.ngene** %7, align 8
  %21 = getelementptr inbounds %struct.ngene, %struct.ngene* %20, i32 0, i32 1
  store %struct.dvb_ringbuffer* %21, %struct.dvb_ringbuffer** %8, align 8
  %22 = load %struct.ngene*, %struct.ngene** %7, align 8
  %23 = getelementptr inbounds %struct.ngene, %struct.ngene* %22, i32 0, i32 0
  store %struct.dvb_ringbuffer* %23, %struct.dvb_ringbuffer** %9, align 8
  store i32 0, i32* %10, align 4
  %24 = load %struct.file*, %struct.file** %3, align 8
  %25 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %8, align 8
  %26 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %25, i32 0, i32 0
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @poll_wait(%struct.file* %24, i32* %26, i32* %27)
  %29 = load %struct.file*, %struct.file** %3, align 8
  %30 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %9, align 8
  %31 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %30, i32 0, i32 0
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @poll_wait(%struct.file* %29, i32* %31, i32* %32)
  %34 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %8, align 8
  %35 = call i32 @dvb_ringbuffer_empty(%struct.dvb_ringbuffer* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %2
  %38 = load i32, i32* @EPOLLIN, align 4
  %39 = load i32, i32* @EPOLLRDNORM, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %10, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %37, %2
  %44 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %9, align 8
  %45 = call i32 @dvb_ringbuffer_free(%struct.dvb_ringbuffer* %44)
  %46 = icmp sge i32 %45, 188
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i32, i32* @EPOLLOUT, align 4
  %49 = load i32, i32* @EPOLLWRNORM, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %10, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %47, %43
  %54 = load i32, i32* %10, align 4
  ret i32 %54
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @dvb_ringbuffer_empty(%struct.dvb_ringbuffer*) #1

declare dso_local i32 @dvb_ringbuffer_free(%struct.dvb_ringbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
