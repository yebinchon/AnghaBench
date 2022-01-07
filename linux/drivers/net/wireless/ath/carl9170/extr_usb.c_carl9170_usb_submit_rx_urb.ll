; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_submit_rx_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_submit_rx_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, i32, i32, i32 }
%struct.urb = type { i32 }

@AR9170_NUM_RX_URBS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9170*, i32)* @carl9170_usb_submit_rx_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_usb_submit_rx_urb(%struct.ar9170* %0, i32 %1) #0 {
  %3 = alloca %struct.ar9170*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %57, %2
  %9 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %10 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %9, i32 0, i32 0
  %11 = call i32 @atomic_read(i32* %10)
  %12 = load i32, i32* @AR9170_NUM_RX_URBS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @AR9170_NUM_RX_URBS, align 4
  %18 = icmp slt i32 %15, %17
  br label %19

19:                                               ; preds = %14, %8
  %20 = phi i1 [ false, %8 ], [ %18, %14 ]
  br i1 %20, label %21, label %58

21:                                               ; preds = %19
  %22 = load i32, i32* @ENOSPC, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  %24 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %25 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %24, i32 0, i32 2
  %26 = call %struct.urb* @usb_get_from_anchor(i32* %25)
  store %struct.urb* %26, %struct.urb** %5, align 8
  %27 = load %struct.urb*, %struct.urb** %5, align 8
  %28 = icmp ne %struct.urb* %27, null
  br i1 %28, label %29, label %57

29:                                               ; preds = %21
  %30 = load %struct.urb*, %struct.urb** %5, align 8
  %31 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %32 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %31, i32 0, i32 3
  %33 = call i32 @usb_anchor_urb(%struct.urb* %30, i32* %32)
  %34 = load %struct.urb*, %struct.urb** %5, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @usb_submit_urb(%struct.urb* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %29
  %41 = load %struct.urb*, %struct.urb** %5, align 8
  %42 = call i32 @usb_unanchor_urb(%struct.urb* %41)
  %43 = load %struct.urb*, %struct.urb** %5, align 8
  %44 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %45 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %44, i32 0, i32 2
  %46 = call i32 @usb_anchor_urb(%struct.urb* %43, i32* %45)
  br label %54

47:                                               ; preds = %29
  %48 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %49 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %48, i32 0, i32 1
  %50 = call i32 @atomic_dec(i32* %49)
  %51 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %52 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %51, i32 0, i32 0
  %53 = call i32 @atomic_inc(i32* %52)
  br label %54

54:                                               ; preds = %47, %40
  %55 = load %struct.urb*, %struct.urb** %5, align 8
  %56 = call i32 @usb_free_urb(%struct.urb* %55)
  br label %57

57:                                               ; preds = %54, %21
  br label %8

58:                                               ; preds = %19
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.urb* @usb_get_from_anchor(i32*) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
