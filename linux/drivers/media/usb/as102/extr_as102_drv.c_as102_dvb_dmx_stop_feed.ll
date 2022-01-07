; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/as102/extr_as102_drv.c_as102_dvb_dmx_stop_feed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/as102/extr_as102_drv.c_as102_dvb_dmx_stop_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { i32, i32, %struct.dvb_demux* }
%struct.dvb_demux = type { %struct.as102_dev_t* }
%struct.as102_dev_t = type { i64, i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@pid_filtering = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*)* @as102_dvb_dmx_stop_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as102_dvb_dmx_stop_feed(%struct.dvb_demux_feed* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_demux_feed*, align 8
  %4 = alloca %struct.dvb_demux*, align 8
  %5 = alloca %struct.as102_dev_t*, align 8
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %3, align 8
  %6 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %6, i32 0, i32 2
  %8 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  store %struct.dvb_demux* %8, %struct.dvb_demux** %4, align 8
  %9 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %9, i32 0, i32 0
  %11 = load %struct.as102_dev_t*, %struct.as102_dev_t** %10, align 8
  store %struct.as102_dev_t* %11, %struct.as102_dev_t** %5, align 8
  %12 = load %struct.as102_dev_t*, %struct.as102_dev_t** %5, align 8
  %13 = getelementptr inbounds %struct.as102_dev_t, %struct.as102_dev_t* %12, i32 0, i32 1
  %14 = call i64 @mutex_lock_interruptible(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ERESTARTSYS, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %44

19:                                               ; preds = %1
  %20 = load %struct.as102_dev_t*, %struct.as102_dev_t** %5, align 8
  %21 = getelementptr inbounds %struct.as102_dev_t, %struct.as102_dev_t* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %21, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.as102_dev_t*, %struct.as102_dev_t** %5, align 8
  %27 = call i32 @as102_stop_stream(%struct.as102_dev_t* %26)
  br label %28

28:                                               ; preds = %25, %19
  %29 = load i64, i64* @pid_filtering, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load %struct.as102_dev_t*, %struct.as102_dev_t** %5, align 8
  %33 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %34 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %37 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @as10x_pid_filter(%struct.as102_dev_t* %32, i32 %35, i32 %38, i32 0)
  br label %40

40:                                               ; preds = %31, %28
  %41 = load %struct.as102_dev_t*, %struct.as102_dev_t** %5, align 8
  %42 = getelementptr inbounds %struct.as102_dev_t, %struct.as102_dev_t* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %40, %16
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @as102_stop_stream(%struct.as102_dev_t*) #1

declare dso_local i32 @as10x_pid_filter(%struct.as102_dev_t*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
