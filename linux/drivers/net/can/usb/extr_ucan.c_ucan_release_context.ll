; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_release_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_release_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucan_priv = type { i32, i32, i32, i32 }
%struct.ucan_urb_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucan_priv*, %struct.ucan_urb_context*)* @ucan_release_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucan_release_context(%struct.ucan_priv* %0, %struct.ucan_urb_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucan_priv*, align 8
  %5 = alloca %struct.ucan_urb_context*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ucan_priv* %0, %struct.ucan_priv** %4, align 8
  store %struct.ucan_urb_context* %1, %struct.ucan_urb_context** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %9 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON_ONCE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

17:                                               ; preds = %2
  %18 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %19 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %18, i32 0, i32 0
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.ucan_urb_context*, %struct.ucan_urb_context** %5, align 8
  %23 = getelementptr inbounds %struct.ucan_urb_context, %struct.ucan_urb_context* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %17
  %27 = load %struct.ucan_urb_context*, %struct.ucan_urb_context** %5, align 8
  %28 = getelementptr inbounds %struct.ucan_urb_context, %struct.ucan_urb_context* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %30 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %26
  %34 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %35 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @netif_wake_queue(i32 %36)
  br label %38

38:                                               ; preds = %33, %26
  %39 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %40 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  store i32 1, i32* %7, align 4
  br label %43

43:                                               ; preds = %38, %17
  %44 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %45 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %44, i32 0, i32 0
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %43, %16
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
