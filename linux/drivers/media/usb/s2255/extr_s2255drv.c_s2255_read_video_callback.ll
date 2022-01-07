; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_s2255_read_video_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_s2255_read_video_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2255_dev = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.s2255_pipeinfo = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"callback read video\0A\00", align 1
@MAX_CHANNELS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid channel\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"s2255: read callback failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"callback read video done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s2255_dev*, %struct.s2255_pipeinfo*)* @s2255_read_video_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s2255_read_video_callback(%struct.s2255_dev* %0, %struct.s2255_pipeinfo* %1) #0 {
  %3 = alloca %struct.s2255_dev*, align 8
  %4 = alloca %struct.s2255_pipeinfo*, align 8
  %5 = alloca i32, align 4
  store %struct.s2255_dev* %0, %struct.s2255_dev** %3, align 8
  store %struct.s2255_pipeinfo* %1, %struct.s2255_pipeinfo** %4, align 8
  %6 = load %struct.s2255_dev*, %struct.s2255_dev** %3, align 8
  %7 = call i32 @dprintk(%struct.s2255_dev* %6, i32 50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.s2255_dev*, %struct.s2255_dev** %3, align 8
  %9 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MAX_CHANNELS, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.s2255_dev*, %struct.s2255_dev** %3, align 8
  %15 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.s2255_dev*, %struct.s2255_dev** %3, align 8
  %17 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %33

21:                                               ; preds = %2
  %22 = load %struct.s2255_dev*, %struct.s2255_dev** %3, align 8
  %23 = load %struct.s2255_pipeinfo*, %struct.s2255_pipeinfo** %4, align 8
  %24 = call i32 @save_frame(%struct.s2255_dev* %22, %struct.s2255_pipeinfo* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.s2255_dev*, %struct.s2255_dev** %3, align 8
  %29 = call i32 @dprintk(%struct.s2255_dev* %28, i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %21
  %31 = load %struct.s2255_dev*, %struct.s2255_dev** %3, align 8
  %32 = call i32 @dprintk(%struct.s2255_dev* %31, i32 50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %13
  ret void
}

declare dso_local i32 @dprintk(%struct.s2255_dev*, i32, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @save_frame(%struct.s2255_dev*, %struct.s2255_pipeinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
