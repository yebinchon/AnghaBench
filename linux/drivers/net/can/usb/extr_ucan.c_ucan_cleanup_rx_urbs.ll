; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_cleanup_rx_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_cleanup_rx_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucan_priv = type { i32, i32 }
%struct.urb = type { i32, i32 }

@UCAN_MAX_RX_URBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucan_priv*, %struct.urb**)* @ucan_cleanup_rx_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucan_cleanup_rx_urbs(%struct.ucan_priv* %0, %struct.urb** %1) #0 {
  %3 = alloca %struct.ucan_priv*, align 8
  %4 = alloca %struct.urb**, align 8
  %5 = alloca i32, align 4
  store %struct.ucan_priv* %0, %struct.ucan_priv** %3, align 8
  store %struct.urb** %1, %struct.urb*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %52, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @UCAN_MAX_RX_URBS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %55

10:                                               ; preds = %6
  %11 = load %struct.urb**, %struct.urb*** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.urb*, %struct.urb** %11, i64 %13
  %15 = load %struct.urb*, %struct.urb** %14, align 8
  %16 = icmp ne %struct.urb* %15, null
  br i1 %16, label %17, label %51

17:                                               ; preds = %10
  %18 = load %struct.urb**, %struct.urb*** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.urb*, %struct.urb** %18, i64 %20
  %22 = load %struct.urb*, %struct.urb** %21, align 8
  %23 = call i32 @usb_unanchor_urb(%struct.urb* %22)
  %24 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %25 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %28 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.urb**, %struct.urb*** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.urb*, %struct.urb** %30, i64 %32
  %34 = load %struct.urb*, %struct.urb** %33, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.urb**, %struct.urb*** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.urb*, %struct.urb** %37, i64 %39
  %41 = load %struct.urb*, %struct.urb** %40, align 8
  %42 = getelementptr inbounds %struct.urb, %struct.urb* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @usb_free_coherent(i32 %26, i32 %29, i32 %36, i32 %43)
  %45 = load %struct.urb**, %struct.urb*** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.urb*, %struct.urb** %45, i64 %47
  %49 = load %struct.urb*, %struct.urb** %48, align 8
  %50 = call i32 @usb_free_urb(%struct.urb* %49)
  br label %51

51:                                               ; preds = %17, %10
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %6

55:                                               ; preds = %6
  %56 = load %struct.urb**, %struct.urb*** %4, align 8
  %57 = load i32, i32* @UCAN_MAX_RX_URBS, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 8, %58
  %60 = trunc i64 %59 to i32
  %61 = call i32 @memset(%struct.urb** %56, i32 0, i32 %60)
  ret void
}

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @memset(%struct.urb**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
