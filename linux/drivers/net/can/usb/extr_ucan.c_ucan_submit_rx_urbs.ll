; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_submit_rx_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_submit_rx_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucan_priv = type { i32, i32 }
%struct.urb = type { i32 }

@UCAN_MAX_RX_URBS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"could not submit urb; code: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucan_priv*, %struct.urb**)* @ucan_submit_rx_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucan_submit_rx_urbs(%struct.ucan_priv* %0, %struct.urb** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucan_priv*, align 8
  %5 = alloca %struct.urb**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ucan_priv* %0, %struct.ucan_priv** %4, align 8
  store %struct.urb** %1, %struct.urb*** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %39, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @UCAN_MAX_RX_URBS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %42

12:                                               ; preds = %8
  %13 = load %struct.urb**, %struct.urb*** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.urb*, %struct.urb** %13, i64 %15
  %17 = load %struct.urb*, %struct.urb** %16, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32 @usb_submit_urb(%struct.urb* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %12
  %23 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %24 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @netdev_err(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %43

28:                                               ; preds = %12
  %29 = load %struct.urb**, %struct.urb*** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.urb*, %struct.urb** %29, i64 %31
  %33 = load %struct.urb*, %struct.urb** %32, align 8
  %34 = call i32 @usb_free_urb(%struct.urb* %33)
  %35 = load %struct.urb**, %struct.urb*** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.urb*, %struct.urb** %35, i64 %37
  store %struct.urb* null, %struct.urb** %38, align 8
  br label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %8

42:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %51

43:                                               ; preds = %22
  %44 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %45 = load %struct.urb**, %struct.urb*** %5, align 8
  %46 = call i32 @ucan_cleanup_rx_urbs(%struct.ucan_priv* %44, %struct.urb** %45)
  %47 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %48 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %47, i32 0, i32 0
  %49 = call i32 @usb_kill_anchored_urbs(i32* %48)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %43, %42
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @ucan_cleanup_rx_urbs(%struct.ucan_priv*, %struct.urb**) #1

declare dso_local i32 @usb_kill_anchored_urbs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
