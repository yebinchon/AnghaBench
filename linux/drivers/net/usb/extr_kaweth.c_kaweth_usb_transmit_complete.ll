; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_kaweth.c_kaweth_usb_transmit_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_kaweth.c_kaweth_usb_transmit_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, %struct.TYPE_3__*, %struct.kaweth_device* }
%struct.TYPE_3__ = type { i32 }
%struct.kaweth_device = type { %struct.TYPE_4__*, %struct.sk_buff* }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s: TX status %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @kaweth_usb_transmit_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kaweth_usb_transmit_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.kaweth_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 2
  %8 = load %struct.kaweth_device*, %struct.kaweth_device** %7, align 8
  store %struct.kaweth_device* %8, %struct.kaweth_device** %3, align 8
  %9 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %10 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %9, i32 0, i32 1
  %11 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %11, %struct.sk_buff** %4, align 8
  %12 = load %struct.urb*, %struct.urb** %2, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load %struct.urb*, %struct.urb** %2, align 8
  %27 = getelementptr inbounds %struct.urb, %struct.urb* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %31 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @dev_dbg(i32* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %25, %20
  br label %38

38:                                               ; preds = %37, %1
  %39 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %40 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = call i32 @netif_wake_queue(%struct.TYPE_4__* %41)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %43)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
