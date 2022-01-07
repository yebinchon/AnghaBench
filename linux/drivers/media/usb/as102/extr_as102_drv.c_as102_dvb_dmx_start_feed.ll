; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/as102/extr_as102_drv.c_as102_dvb_dmx_start_feed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/as102/extr_as102_drv.c_as102_dvb_dmx_start_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { i32, i32, %struct.dvb_demux* }
%struct.dvb_demux = type { %struct.as102_dev_t* }
%struct.as102_dev_t = type { i32, i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@pid_filtering = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*)* @as102_dvb_dmx_start_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as102_dvb_dmx_start_feed(%struct.dvb_demux_feed* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_demux_feed*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_demux*, align 8
  %6 = alloca %struct.as102_dev_t*, align 8
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %7, i32 0, i32 2
  %9 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  store %struct.dvb_demux* %9, %struct.dvb_demux** %5, align 8
  %10 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %11 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %10, i32 0, i32 0
  %12 = load %struct.as102_dev_t*, %struct.as102_dev_t** %11, align 8
  store %struct.as102_dev_t* %12, %struct.as102_dev_t** %6, align 8
  %13 = load %struct.as102_dev_t*, %struct.as102_dev_t** %6, align 8
  %14 = getelementptr inbounds %struct.as102_dev_t, %struct.as102_dev_t* %13, i32 0, i32 0
  %15 = call i64 @mutex_lock_interruptible(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ERESTARTSYS, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %46

20:                                               ; preds = %1
  %21 = load i64, i64* @pid_filtering, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load %struct.as102_dev_t*, %struct.as102_dev_t** %6, align 8
  %25 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %26 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %29 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @as10x_pid_filter(%struct.as102_dev_t* %24, i32 %27, i32 %30, i32 1)
  br label %32

32:                                               ; preds = %23, %20
  %33 = load %struct.as102_dev_t*, %struct.as102_dev_t** %6, align 8
  %34 = getelementptr inbounds %struct.as102_dev_t, %struct.as102_dev_t* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = icmp eq i32 %35, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.as102_dev_t*, %struct.as102_dev_t** %6, align 8
  %40 = call i32 @as102_start_stream(%struct.as102_dev_t* %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %32
  %42 = load %struct.as102_dev_t*, %struct.as102_dev_t** %6, align 8
  %43 = getelementptr inbounds %struct.as102_dev_t, %struct.as102_dev_t* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %41, %17
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @as10x_pid_filter(%struct.as102_dev_t*, i32, i32, i32) #1

declare dso_local i32 @as102_start_stream(%struct.as102_dev_t*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
