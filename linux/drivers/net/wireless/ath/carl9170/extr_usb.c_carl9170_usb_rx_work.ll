; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_rx_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_rx_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, i32, i32, i32 }
%struct.urb = type { i32, i32 }

@AR9170_NUM_RX_URBS_POOL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar9170*)* @carl9170_usb_rx_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_usb_rx_work(%struct.ar9170* %0) #0 {
  %2 = alloca %struct.ar9170*, align 8
  %3 = alloca %struct.urb*, align 8
  %4 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %45, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @AR9170_NUM_RX_URBS_POOL, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %48

9:                                                ; preds = %5
  %10 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %11 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %10, i32 0, i32 3
  %12 = call %struct.urb* @usb_get_from_anchor(i32* %11)
  store %struct.urb* %12, %struct.urb** %3, align 8
  %13 = load %struct.urb*, %struct.urb** %3, align 8
  %14 = icmp ne %struct.urb* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  br label %48

16:                                               ; preds = %9
  %17 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %18 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %17, i32 0, i32 2
  %19 = call i32 @atomic_dec(i32* %18)
  %20 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %21 = call i64 @IS_INITIALIZED(%struct.ar9170* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %25 = load %struct.urb*, %struct.urb** %3, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.urb*, %struct.urb** %3, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @carl9170_rx(%struct.ar9170* %24, i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %23, %16
  %33 = load %struct.urb*, %struct.urb** %3, align 8
  %34 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %35 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %34, i32 0, i32 1
  %36 = call i32 @usb_anchor_urb(%struct.urb* %33, i32* %35)
  %37 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %38 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %37, i32 0, i32 0
  %39 = call i32 @atomic_inc(i32* %38)
  %40 = load %struct.urb*, %struct.urb** %3, align 8
  %41 = call i32 @usb_free_urb(%struct.urb* %40)
  %42 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  %44 = call i32 @carl9170_usb_submit_rx_urb(%struct.ar9170* %42, i32 %43)
  br label %45

45:                                               ; preds = %32
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %5

48:                                               ; preds = %15, %5
  ret void
}

declare dso_local %struct.urb* @usb_get_from_anchor(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @IS_INITIALIZED(%struct.ar9170*) #1

declare dso_local i32 @carl9170_rx(%struct.ar9170*, i32, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @carl9170_usb_submit_rx_urb(%struct.ar9170*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
