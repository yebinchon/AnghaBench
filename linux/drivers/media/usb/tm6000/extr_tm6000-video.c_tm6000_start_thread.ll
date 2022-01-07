; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_tm6000_start_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_tm6000_start_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm6000_core = type { %struct.TYPE_2__, %struct.tm6000_dmaqueue }
%struct.TYPE_2__ = type { i32, i32* }
%struct.tm6000_dmaqueue = type { i32, i32, i64 }

@jiffies = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"submit of urb %i failed (error=%i)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tm6000_core*)* @tm6000_start_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tm6000_start_thread(%struct.tm6000_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tm6000_core*, align 8
  %4 = alloca %struct.tm6000_dmaqueue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tm6000_core* %0, %struct.tm6000_core** %3, align 8
  %7 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %8 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %7, i32 0, i32 1
  store %struct.tm6000_dmaqueue* %8, %struct.tm6000_dmaqueue** %4, align 8
  %9 = load %struct.tm6000_dmaqueue*, %struct.tm6000_dmaqueue** %4, align 8
  %10 = getelementptr inbounds %struct.tm6000_dmaqueue, %struct.tm6000_dmaqueue* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @jiffies, align 4
  %12 = load %struct.tm6000_dmaqueue*, %struct.tm6000_dmaqueue** %4, align 8
  %13 = getelementptr inbounds %struct.tm6000_dmaqueue, %struct.tm6000_dmaqueue* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.tm6000_dmaqueue*, %struct.tm6000_dmaqueue** %4, align 8
  %15 = getelementptr inbounds %struct.tm6000_dmaqueue, %struct.tm6000_dmaqueue* %14, i32 0, i32 0
  %16 = call i32 @init_waitqueue_head(i32* %15)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %45, %1
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %20 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %17
  %25 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %26 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = call i32 @usb_submit_urb(i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %24
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @tm6000_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %42 = call i32 @tm6000_uninit_isoc(%struct.tm6000_core* %41)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %49

44:                                               ; preds = %24
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %17

48:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %37
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @tm6000_err(i8*, i32, i32) #1

declare dso_local i32 @tm6000_uninit_isoc(%struct.tm6000_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
