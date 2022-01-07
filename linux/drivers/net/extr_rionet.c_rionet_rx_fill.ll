; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_rionet.c_rionet_rx_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_rionet.c_rionet_rx_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rionet_private = type { i32, %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { i32 }

@RIO_MAX_MSG_SIZE = common dso_local global i32 0, align 4
@RIONET_MAILBOX = common dso_local global i32 0, align 4
@RIONET_RX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @rionet_rx_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rionet_rx_fill(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rionet_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.rionet_private* @netdev_priv(%struct.net_device* %7)
  store %struct.rionet_private* %8, %struct.rionet_private** %6, align 8
  %9 = load %struct.rionet_private*, %struct.rionet_private** %6, align 8
  %10 = getelementptr inbounds %struct.rionet_private, %struct.rionet_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %45, %2
  %13 = load i32, i32* @RIO_MAX_MSG_SIZE, align 4
  %14 = call %struct.TYPE_2__* @dev_alloc_skb(i32 %13)
  %15 = load %struct.rionet_private*, %struct.rionet_private** %6, align 8
  %16 = getelementptr inbounds %struct.rionet_private, %struct.rionet_private* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %17, i64 %19
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %20, align 8
  %21 = load %struct.rionet_private*, %struct.rionet_private** %6, align 8
  %22 = getelementptr inbounds %struct.rionet_private, %struct.rionet_private* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %23, i64 %25
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %12
  br label %52

30:                                               ; preds = %12
  %31 = load %struct.rionet_private*, %struct.rionet_private** %6, align 8
  %32 = getelementptr inbounds %struct.rionet_private, %struct.rionet_private* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @RIONET_MAILBOX, align 4
  %35 = load %struct.rionet_private*, %struct.rionet_private** %6, align 8
  %36 = getelementptr inbounds %struct.rionet_private, %struct.rionet_private* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %37, i64 %39
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @rio_add_inb_buffer(i32 %33, i32 %34, i32 %43)
  br label %45

45:                                               ; preds = %30
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  %48 = load i32, i32* @RIONET_RX_RING_SIZE, align 4
  %49 = srem i32 %47, %48
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %12, label %52

52:                                               ; preds = %45, %29
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.rionet_private*, %struct.rionet_private** %6, align 8
  %55 = getelementptr inbounds %struct.rionet_private, %struct.rionet_private* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  ret void
}

declare dso_local %struct.rionet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_2__* @dev_alloc_skb(i32) #1

declare dso_local i32 @rio_add_inb_buffer(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
