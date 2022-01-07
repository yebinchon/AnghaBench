; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_av.c_dvb_audio_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_av.c_dvb_audio_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.dvb_device* }
%struct.dvb_device = type { %struct.av7110* }
%struct.av7110 = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"av7110:%p, \0A\00", align 1
@AUDIO_SOURCE_DEMUX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @dvb_audio_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_audio_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.dvb_device*, align 8
  %7 = alloca %struct.av7110*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.dvb_device*, %struct.dvb_device** %10, align 8
  store %struct.dvb_device* %11, %struct.dvb_device** %6, align 8
  %12 = load %struct.dvb_device*, %struct.dvb_device** %6, align 8
  %13 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %12, i32 0, i32 0
  %14 = load %struct.av7110*, %struct.av7110** %13, align 8
  store %struct.av7110* %14, %struct.av7110** %7, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = call i32 @dvb_generic_open(%struct.inode* %15, %struct.file* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.av7110*, %struct.av7110** %7, align 8
  %19 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.av7110* %18)
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %32

24:                                               ; preds = %2
  %25 = load %struct.av7110*, %struct.av7110** %7, align 8
  %26 = getelementptr inbounds %struct.av7110, %struct.av7110* %25, i32 0, i32 1
  %27 = call i32 @dvb_ringbuffer_flush_spinlock_wakeup(i32* %26)
  %28 = load i32, i32* @AUDIO_SOURCE_DEMUX, align 4
  %29 = load %struct.av7110*, %struct.av7110** %7, align 8
  %30 = getelementptr inbounds %struct.av7110, %struct.av7110* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %24, %22
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @dvb_generic_open(%struct.inode*, %struct.file*) #1

declare dso_local i32 @dprintk(i32, i8*, %struct.av7110*) #1

declare dso_local i32 @dvb_ringbuffer_flush_spinlock_wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
