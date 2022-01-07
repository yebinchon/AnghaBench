; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_init_rx_bulk_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_init_rx_bulk_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, i32, i32, i32 }
%struct.urb = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AR9170_NUM_RX_URBS_POOL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CARL9170_STOPPED = common dso_local global i32 0, align 4
@CARL9170_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9170*)* @carl9170_usb_init_rx_bulk_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_usb_init_rx_bulk_urbs(%struct.ar9170* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar9170*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %3, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %32, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @AR9170_NUM_RX_URBS_POOL, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %9
  %14 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.urb* @carl9170_usb_alloc_rx_urb(%struct.ar9170* %14, i32 %15)
  store %struct.urb* %16, %struct.urb** %4, align 8
  %17 = load %struct.urb*, %struct.urb** %4, align 8
  %18 = icmp ne %struct.urb* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %47

22:                                               ; preds = %13
  %23 = load %struct.urb*, %struct.urb** %4, align 8
  %24 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %25 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %24, i32 0, i32 2
  %26 = call i32 @usb_anchor_urb(%struct.urb* %23, i32* %25)
  %27 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %28 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %27, i32 0, i32 3
  %29 = call i32 @atomic_inc(i32* %28)
  %30 = load %struct.urb*, %struct.urb** %4, align 8
  %31 = call i32 @usb_free_urb(%struct.urb* %30)
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %9

35:                                               ; preds = %9
  %36 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32 @carl9170_usb_submit_rx_urb(%struct.ar9170* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %47

42:                                               ; preds = %35
  %43 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %44 = load i32, i32* @CARL9170_STOPPED, align 4
  %45 = load i32, i32* @CARL9170_IDLE, align 4
  %46 = call i32 @carl9170_set_state_when(%struct.ar9170* %43, i32 %44, i32 %45)
  store i32 0, i32* %2, align 4
  br label %58

47:                                               ; preds = %41, %19
  %48 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %49 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %48, i32 0, i32 2
  %50 = call i32 @usb_scuttle_anchored_urbs(i32* %49)
  %51 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %52 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %51, i32 0, i32 1
  %53 = call i32 @usb_scuttle_anchored_urbs(i32* %52)
  %54 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %55 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %54, i32 0, i32 0
  %56 = call i32 @usb_kill_anchored_urbs(i32* %55)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %47, %42
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.urb* @carl9170_usb_alloc_rx_urb(%struct.ar9170*, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @carl9170_usb_submit_rx_urb(%struct.ar9170*, i32) #1

declare dso_local i32 @carl9170_set_state_when(%struct.ar9170*, i32, i32) #1

declare dso_local i32 @usb_scuttle_anchored_urbs(i32*) #1

declare dso_local i32 @usb_kill_anchored_urbs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
