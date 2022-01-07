; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_alloc_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_alloc_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucan_urb_context = type { i32 }
%struct.ucan_priv = type { i32, i32, i32, %struct.ucan_urb_context*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ucan_urb_context* (%struct.ucan_priv*)* @ucan_alloc_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ucan_urb_context* @ucan_alloc_context(%struct.ucan_priv* %0) #0 {
  %2 = alloca %struct.ucan_urb_context*, align 8
  %3 = alloca %struct.ucan_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.ucan_urb_context*, align 8
  store %struct.ucan_priv* %0, %struct.ucan_priv** %3, align 8
  store %struct.ucan_urb_context* null, %struct.ucan_urb_context** %6, align 8
  %7 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %8 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %7, i32 0, i32 3
  %9 = load %struct.ucan_urb_context*, %struct.ucan_urb_context** %8, align 8
  %10 = icmp ne %struct.ucan_urb_context* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON_ONCE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store %struct.ucan_urb_context* null, %struct.ucan_urb_context** %2, align 8
  br label %76

16:                                               ; preds = %1
  %17 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %18 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %67, %16
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %24 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %70

28:                                               ; preds = %21
  %29 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %30 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %29, i32 0, i32 3
  %31 = load %struct.ucan_urb_context*, %struct.ucan_urb_context** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ucan_urb_context, %struct.ucan_urb_context* %31, i64 %33
  %35 = getelementptr inbounds %struct.ucan_urb_context, %struct.ucan_urb_context* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %66, label %38

38:                                               ; preds = %28
  %39 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %40 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %39, i32 0, i32 3
  %41 = load %struct.ucan_urb_context*, %struct.ucan_urb_context** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ucan_urb_context, %struct.ucan_urb_context* %41, i64 %43
  store %struct.ucan_urb_context* %44, %struct.ucan_urb_context** %6, align 8
  %45 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %46 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %45, i32 0, i32 3
  %47 = load %struct.ucan_urb_context*, %struct.ucan_urb_context** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.ucan_urb_context, %struct.ucan_urb_context* %47, i64 %49
  %51 = getelementptr inbounds %struct.ucan_urb_context, %struct.ucan_urb_context* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  %52 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %53 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 8
  %56 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %57 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %38
  %61 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %62 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @netif_stop_queue(i32 %63)
  br label %65

65:                                               ; preds = %60, %38
  br label %70

66:                                               ; preds = %28
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %21

70:                                               ; preds = %65, %21
  %71 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %72 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %71, i32 0, i32 0
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load %struct.ucan_urb_context*, %struct.ucan_urb_context** %6, align 8
  store %struct.ucan_urb_context* %75, %struct.ucan_urb_context** %2, align 8
  br label %76

76:                                               ; preds = %70, %15
  %77 = load %struct.ucan_urb_context*, %struct.ucan_urb_context** %2, align 8
  ret %struct.ucan_urb_context* %77
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
