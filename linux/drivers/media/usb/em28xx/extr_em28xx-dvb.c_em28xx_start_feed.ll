; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-dvb.c_em28xx_start_feed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-dvb.c_em28xx_start_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { %struct.dvb_demux* }
%struct.dvb_demux = type { %struct.TYPE_2__, %struct.em28xx_dvb* }
%struct.TYPE_2__ = type { i32 }
%struct.em28xx_dvb = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*)* @em28xx_start_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_start_feed(%struct.dvb_demux_feed* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_demux_feed*, align 8
  %4 = alloca %struct.dvb_demux*, align 8
  %5 = alloca %struct.em28xx_dvb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %3, align 8
  %8 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %8, i32 0, i32 0
  %10 = load %struct.dvb_demux*, %struct.dvb_demux** %9, align 8
  store %struct.dvb_demux* %10, %struct.dvb_demux** %4, align 8
  %11 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %11, i32 0, i32 1
  %13 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %12, align 8
  store %struct.em28xx_dvb* %13, %struct.em28xx_dvb** %5, align 8
  %14 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %15 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %50

22:                                               ; preds = %1
  %23 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %5, align 8
  %24 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %5, align 8
  %27 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %5, align 8
  %31 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  %33 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %5, align 8
  %34 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %45

37:                                               ; preds = %22
  %38 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %5, align 8
  %39 = call i32 @em28xx_start_streaming(%struct.em28xx_dvb* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %42, %37
  br label %45

45:                                               ; preds = %44, %22
  %46 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %5, align 8
  %47 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %46, i32 0, i32 1
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %45, %19
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @em28xx_start_streaming(%struct.em28xx_dvb*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
