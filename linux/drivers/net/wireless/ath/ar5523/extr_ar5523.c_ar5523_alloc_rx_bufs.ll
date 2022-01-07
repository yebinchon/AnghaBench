; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_alloc_rx_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_alloc_rx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar5523 = type { i32, i32, %struct.ar5523_rx_data* }
%struct.ar5523_rx_data = type { i32, i32, %struct.ar5523* }

@AR5523_RX_DATA_COUNT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar5523*)* @ar5523_alloc_rx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5523_alloc_rx_bufs(%struct.ar5523* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar5523*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ar5523_rx_data*, align 8
  store %struct.ar5523* %0, %struct.ar5523** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %38, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @AR5523_RX_DATA_COUNT, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %41

10:                                               ; preds = %6
  %11 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %12 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %11, i32 0, i32 2
  %13 = load %struct.ar5523_rx_data*, %struct.ar5523_rx_data** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ar5523_rx_data, %struct.ar5523_rx_data* %13, i64 %15
  store %struct.ar5523_rx_data* %16, %struct.ar5523_rx_data** %5, align 8
  %17 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %18 = load %struct.ar5523_rx_data*, %struct.ar5523_rx_data** %5, align 8
  %19 = getelementptr inbounds %struct.ar5523_rx_data, %struct.ar5523_rx_data* %18, i32 0, i32 2
  store %struct.ar5523* %17, %struct.ar5523** %19, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32 @usb_alloc_urb(i32 0, i32 %20)
  %22 = load %struct.ar5523_rx_data*, %struct.ar5523_rx_data** %5, align 8
  %23 = getelementptr inbounds %struct.ar5523_rx_data, %struct.ar5523_rx_data* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ar5523_rx_data*, %struct.ar5523_rx_data** %5, align 8
  %25 = getelementptr inbounds %struct.ar5523_rx_data, %struct.ar5523_rx_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %10
  br label %42

29:                                               ; preds = %10
  %30 = load %struct.ar5523_rx_data*, %struct.ar5523_rx_data** %5, align 8
  %31 = getelementptr inbounds %struct.ar5523_rx_data, %struct.ar5523_rx_data* %30, i32 0, i32 0
  %32 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %33 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %32, i32 0, i32 1
  %34 = call i32 @list_add_tail(i32* %31, i32* %33)
  %35 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %36 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %35, i32 0, i32 0
  %37 = call i32 @atomic_inc(i32* %36)
  br label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %6

41:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %47

42:                                               ; preds = %28
  %43 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %44 = call i32 @ar5523_free_rx_bufs(%struct.ar5523* %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %42, %41
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ar5523_free_rx_bufs(%struct.ar5523*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
