; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_alloc_rx_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_alloc_rx_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar5523 = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AR5523_MAX_RXCMDSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar5523*)* @ar5523_alloc_rx_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5523_alloc_rx_cmd(%struct.ar5523* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar5523*, align 8
  store %struct.ar5523* %0, %struct.ar5523** %3, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.TYPE_3__* @usb_alloc_urb(i32 0, i32 %4)
  %6 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %7 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %6, i32 0, i32 0
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %7, align 8
  %8 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %9 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %40

15:                                               ; preds = %1
  %16 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %17 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @AR5523_MAX_RXCMDSZ, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %22 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @usb_alloc_coherent(i32 %18, i32 %19, i32 %20, i32* %24)
  %26 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %27 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %29 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %15
  %33 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %34 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = call i32 @usb_free_urb(%struct.TYPE_3__* %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %40

39:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %32, %12
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.TYPE_3__* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_alloc_coherent(i32, i32, i32, i32*) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
