; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_rx_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_rx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_queue = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @xennet_rx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xennet_rx_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.netfront_queue*, align 8
  %6 = alloca %struct.net_device*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.netfront_queue*
  store %struct.netfront_queue* %8, %struct.netfront_queue** %5, align 8
  %9 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %10 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call i64 @netif_carrier_ok(%struct.net_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %19 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %18, i32 0, i32 1
  %20 = call i64 @RING_HAS_UNCONSUMED_RESPONSES(i32* %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %17, %2
  %23 = phi i1 [ false, %2 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  %25 = call i64 @likely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %29 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %28, i32 0, i32 0
  %30 = call i32 @napi_schedule(i32* %29)
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %32
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i64 @RING_HAS_UNCONSUMED_RESPONSES(i32*) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
