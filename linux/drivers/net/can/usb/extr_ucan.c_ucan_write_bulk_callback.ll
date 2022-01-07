; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_write_bulk_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_write_bulk_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, i32, %struct.ucan_urb_context* }
%struct.ucan_urb_context = type { %struct.ucan_priv* }
%struct.ucan_priv = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"failed to transmit USB message to device: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"urb failed, failed to release context\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @ucan_write_bulk_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucan_write_bulk_callback(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ucan_priv*, align 8
  %5 = alloca %struct.ucan_urb_context*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 4
  %8 = load %struct.ucan_urb_context*, %struct.ucan_urb_context** %7, align 8
  store %struct.ucan_urb_context* %8, %struct.ucan_urb_context** %5, align 8
  %9 = load %struct.ucan_urb_context*, %struct.ucan_urb_context** %5, align 8
  %10 = icmp ne %struct.ucan_urb_context* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON_ONCE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %93

16:                                               ; preds = %1
  %17 = load %struct.urb*, %struct.urb** %2, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.urb*, %struct.urb** %2, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.urb*, %struct.urb** %2, align 8
  %24 = getelementptr inbounds %struct.urb, %struct.urb* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @usb_free_coherent(i32 %19, i32 4, i32 %22, i32 %25)
  %27 = load %struct.ucan_urb_context*, %struct.ucan_urb_context** %5, align 8
  %28 = getelementptr inbounds %struct.ucan_urb_context, %struct.ucan_urb_context* %27, i32 0, i32 0
  %29 = load %struct.ucan_priv*, %struct.ucan_priv** %28, align 8
  store %struct.ucan_priv* %29, %struct.ucan_priv** %4, align 8
  %30 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %31 = icmp ne %struct.ucan_priv* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @WARN_ON_ONCE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %16
  br label %93

37:                                               ; preds = %16
  %38 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %39 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = call i32 @netif_device_present(%struct.TYPE_7__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %93

44:                                               ; preds = %37
  %45 = load %struct.urb*, %struct.urb** %2, align 8
  %46 = getelementptr inbounds %struct.urb, %struct.urb* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %93

49:                                               ; preds = %44
  %50 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %51 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %50, i32 0, i32 1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load %struct.urb*, %struct.urb** %2, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @netdev_warn(%struct.TYPE_7__* %52, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %58 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %57, i32 0, i32 2
  %59 = load i64, i64* %3, align 8
  %60 = call i32 @spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %62 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %61, i32 0, i32 1
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load %struct.ucan_urb_context*, %struct.ucan_urb_context** %5, align 8
  %65 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %66 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = sub i64 0, %68
  %70 = getelementptr inbounds %struct.ucan_urb_context, %struct.ucan_urb_context* %64, i64 %69
  %71 = call i32 @can_free_echo_skb(%struct.TYPE_7__* %63, %struct.ucan_urb_context* %70)
  %72 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %73 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %72, i32 0, i32 2
  %74 = load i64, i64* %3, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %77 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %76, i32 0, i32 1
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %84 = load %struct.ucan_urb_context*, %struct.ucan_urb_context** %5, align 8
  %85 = call i32 @ucan_release_context(%struct.ucan_priv* %83, %struct.ucan_urb_context* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %49
  %88 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %89 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %88, i32 0, i32 1
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = call i32 @netdev_err(%struct.TYPE_7__* %90, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %92

92:                                               ; preds = %87, %49
  br label %93

93:                                               ; preds = %15, %36, %43, %92, %44
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @netif_device_present(%struct.TYPE_7__*) #1

declare dso_local i32 @netdev_warn(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @can_free_echo_skb(%struct.TYPE_7__*, %struct.ucan_urb_context*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ucan_release_context(%struct.ucan_priv*, %struct.ucan_urb_context*) #1

declare dso_local i32 @netdev_err(%struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
