; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_core.c_kvaser_usb_unlink_all_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_core.c_kvaser_usb_unlink_all_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { i32, %struct.kvaser_usb_net_priv**, i32*, i32*, i32, i32 }
%struct.kvaser_usb_net_priv = type { i32 }

@KVASER_USB_MAX_RX_URBS = common dso_local global i32 0, align 4
@KVASER_USB_RX_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_usb*)* @kvaser_usb_unlink_all_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_usb_unlink_all_urbs(%struct.kvaser_usb* %0) #0 {
  %2 = alloca %struct.kvaser_usb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvaser_usb_net_priv*, align 8
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %2, align 8
  %5 = load %struct.kvaser_usb*, %struct.kvaser_usb** %2, align 8
  %6 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %5, i32 0, i32 5
  %7 = call i32 @usb_kill_anchored_urbs(i32* %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %32, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @KVASER_USB_MAX_RX_URBS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %8
  %13 = load %struct.kvaser_usb*, %struct.kvaser_usb** %2, align 8
  %14 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @KVASER_USB_RX_BUFFER_SIZE, align 4
  %17 = load %struct.kvaser_usb*, %struct.kvaser_usb** %2, align 8
  %18 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.kvaser_usb*, %struct.kvaser_usb** %2, align 8
  %25 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @usb_free_coherent(i32 %15, i32 %16, i32 %23, i32 %30)
  br label %32

32:                                               ; preds = %12
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %8

35:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %56, %35
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.kvaser_usb*, %struct.kvaser_usb** %2, align 8
  %39 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %36
  %43 = load %struct.kvaser_usb*, %struct.kvaser_usb** %2, align 8
  %44 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %43, i32 0, i32 1
  %45 = load %struct.kvaser_usb_net_priv**, %struct.kvaser_usb_net_priv*** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %45, i64 %47
  %49 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %48, align 8
  store %struct.kvaser_usb_net_priv* %49, %struct.kvaser_usb_net_priv** %4, align 8
  %50 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %51 = icmp ne %struct.kvaser_usb_net_priv* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %54 = call i32 @kvaser_usb_unlink_tx_urbs(%struct.kvaser_usb_net_priv* %53)
  br label %55

55:                                               ; preds = %52, %42
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %36

59:                                               ; preds = %36
  ret void
}

declare dso_local i32 @usb_kill_anchored_urbs(i32*) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @kvaser_usb_unlink_tx_urbs(%struct.kvaser_usb_net_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
