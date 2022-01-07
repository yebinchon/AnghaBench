; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_submit_rx_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_submit_rx_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar5523 = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@AR5523_MAX_RXCMDSZ = common dso_local global i32 0, align 4
@ar5523_cmd_rx_cb = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"error %d when submitting rx urb\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar5523*)* @ar5523_submit_rx_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5523_submit_rx_cmd(%struct.ar5523* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar5523*, align 8
  %4 = alloca i32, align 4
  store %struct.ar5523* %0, %struct.ar5523** %3, align 8
  %5 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %6 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %9 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %12 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ar5523_cmd_rx_pipe(i32 %13)
  %15 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %16 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @AR5523_MAX_RXCMDSZ, align 4
  %19 = load i32, i32* @ar5523_cmd_rx_cb, align 4
  %20 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %21 = call i32 @usb_fill_bulk_urb(%struct.TYPE_3__* %7, i32 %10, i32 %14, i32 %17, i32 %18, i32 %19, %struct.ar5523* %20)
  %22 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %23 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %24 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %22
  store i32 %28, i32* %26, align 4
  %29 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %30 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* @GFP_ATOMIC, align 4
  %33 = call i32 @usb_submit_urb(%struct.TYPE_3__* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %1
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @ar5523_err(%struct.ar5523* %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %48

47:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %45
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_3__*, i32, i32, i32, i32, i32, %struct.ar5523*) #1

declare dso_local i32 @ar5523_cmd_rx_pipe(i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @ar5523_err(%struct.ar5523*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
