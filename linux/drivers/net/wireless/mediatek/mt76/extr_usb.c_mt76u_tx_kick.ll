; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_tx_kick.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_tx_kick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32, i32 }
%struct.mt76_queue = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.urb* }
%struct.urb = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MT76_REMOVED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"tx urb submit failed:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76_dev*, %struct.mt76_queue*)* @mt76u_tx_kick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76u_tx_kick(%struct.mt76_dev* %0, %struct.mt76_queue* %1) #0 {
  %3 = alloca %struct.mt76_dev*, align 8
  %4 = alloca %struct.mt76_queue*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %3, align 8
  store %struct.mt76_queue* %1, %struct.mt76_queue** %4, align 8
  br label %7

7:                                                ; preds = %50, %2
  %8 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %9 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %12 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %15, label %62

15:                                               ; preds = %7
  %16 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %17 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %20 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.urb*, %struct.urb** %23, align 8
  store %struct.urb* %24, %struct.urb** %5, align 8
  %25 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %26 = load %struct.urb*, %struct.urb** %5, align 8
  %27 = call i32 @trace_submit_urb(%struct.mt76_dev* %25, %struct.urb* %26)
  %28 = load %struct.urb*, %struct.urb** %5, align 8
  %29 = load i32, i32* @GFP_ATOMIC, align 4
  %30 = call i32 @usb_submit_urb(%struct.urb* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %15
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, i32* @MT76_REMOVED, align 4
  %40 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %41 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %40, i32 0, i32 1
  %42 = call i32 @set_bit(i32 %39, i32* %41)
  br label %49

43:                                               ; preds = %33
  %44 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %45 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %43, %38
  br label %62

50:                                               ; preds = %15
  %51 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %52 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, 1
  %55 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %56 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = urem i64 %54, %58
  %60 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %61 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  br label %7

62:                                               ; preds = %49, %7
  ret void
}

declare dso_local i32 @trace_submit_urb(%struct.mt76_dev*, %struct.urb*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
