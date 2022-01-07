; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_usb_8dev.c_unlink_all_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_usb_8dev.c_unlink_all_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_8dev_priv = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MAX_TX_URBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_8dev_priv*)* @unlink_all_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unlink_all_urbs(%struct.usb_8dev_priv* %0) #0 {
  %2 = alloca %struct.usb_8dev_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.usb_8dev_priv* %0, %struct.usb_8dev_priv** %2, align 8
  %4 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %2, align 8
  %5 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %4, i32 0, i32 3
  %6 = call i32 @usb_kill_anchored_urbs(i32* %5)
  %7 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %2, align 8
  %8 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %7, i32 0, i32 2
  %9 = call i32 @usb_kill_anchored_urbs(i32* %8)
  %10 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %2, align 8
  %11 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %10, i32 0, i32 1
  %12 = call i32 @atomic_set(i32* %11, i32 0)
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %26, %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @MAX_TX_URBS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load i32, i32* @MAX_TX_URBS, align 4
  %19 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %2, align 8
  %20 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %18, i32* %25, align 4
  br label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %13

29:                                               ; preds = %13
  ret void
}

declare dso_local i32 @usb_kill_anchored_urbs(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
