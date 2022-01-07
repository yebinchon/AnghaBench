; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_alloc_tx_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_alloc_tx_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar5523 = type { i32, %struct.ar5523_tx_cmd }
%struct.ar5523_tx_cmd = type { %struct.TYPE_3__*, i32, i32, %struct.ar5523* }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AR5523_MAX_TXCMDSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar5523*)* @ar5523_alloc_tx_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5523_alloc_tx_cmd(%struct.ar5523* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar5523*, align 8
  %4 = alloca %struct.ar5523_tx_cmd*, align 8
  store %struct.ar5523* %0, %struct.ar5523** %3, align 8
  %5 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %6 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %5, i32 0, i32 1
  store %struct.ar5523_tx_cmd* %6, %struct.ar5523_tx_cmd** %4, align 8
  %7 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %8 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %4, align 8
  %9 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %8, i32 0, i32 3
  store %struct.ar5523* %7, %struct.ar5523** %9, align 8
  %10 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %4, align 8
  %11 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %10, i32 0, i32 2
  %12 = call i32 @init_completion(i32* %11)
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.TYPE_3__* @usb_alloc_urb(i32 0, i32 %13)
  %15 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %4, align 8
  %16 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %15, i32 0, i32 0
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %16, align 8
  %17 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %4, align 8
  %18 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %49

24:                                               ; preds = %1
  %25 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %26 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @AR5523_MAX_TXCMDSZ, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %4, align 8
  %31 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = call i32 @usb_alloc_coherent(i32 %27, i32 %28, i32 %29, i32* %33)
  %35 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %4, align 8
  %36 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %4, align 8
  %38 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %24
  %42 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %4, align 8
  %43 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = call i32 @usb_free_urb(%struct.TYPE_3__* %44)
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %49

48:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %41, %21
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local %struct.TYPE_3__* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_alloc_coherent(i32, i32, i32, i32*) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
