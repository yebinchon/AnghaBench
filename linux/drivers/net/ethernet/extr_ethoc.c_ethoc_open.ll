; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ethoc.c_ethoc_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ethoc.c_ethoc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ethoc = type { i32, i32, i32 }

@ethoc_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c" resuming queue\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c" starting queue\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"I/O: %08lx Memory: %08lx-%08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ethoc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethoc_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethoc*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ethoc* @netdev_priv(%struct.net_device* %6)
  store %struct.ethoc* %7, %struct.ethoc** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ethoc_interrupt, align 4
  %12 = load i32, i32* @IRQF_SHARED, align 4
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call i32 @request_irq(i32 %10, i32 %11, i32 %12, i32 %15, %struct.net_device* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %74

22:                                               ; preds = %1
  %23 = load %struct.ethoc*, %struct.ethoc** %4, align 8
  %24 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %23, i32 0, i32 2
  %25 = call i32 @napi_enable(i32* %24)
  %26 = load %struct.ethoc*, %struct.ethoc** %4, align 8
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ethoc_init_ring(%struct.ethoc* %26, i32 %29)
  %31 = load %struct.ethoc*, %struct.ethoc** %4, align 8
  %32 = call i32 @ethoc_reset(%struct.ethoc* %31)
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i64 @netif_queue_stopped(%struct.net_device* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %22
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 3
  %39 = call i32 @dev_dbg(i32* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = call i32 @netif_wake_queue(%struct.net_device* %40)
  br label %48

42:                                               ; preds = %22
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 3
  %45 = call i32 @dev_dbg(i32* %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = call i32 @netif_start_queue(%struct.net_device* %46)
  br label %48

48:                                               ; preds = %42, %36
  %49 = load %struct.ethoc*, %struct.ethoc** %4, align 8
  %50 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %49, i32 0, i32 0
  store i32 -1, i32* %50, align 4
  %51 = load %struct.ethoc*, %struct.ethoc** %4, align 8
  %52 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %51, i32 0, i32 1
  store i32 -1, i32* %52, align 4
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @phy_start(i32 %55)
  %57 = load %struct.ethoc*, %struct.ethoc** %4, align 8
  %58 = call i64 @netif_msg_ifup(%struct.ethoc* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %48
  %61 = load %struct.net_device*, %struct.net_device** %3, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 3
  %63 = load %struct.net_device*, %struct.net_device** %3, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.net_device*, %struct.net_device** %3, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_info(i32* %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %60, %48
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %20
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.ethoc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @ethoc_init_ring(%struct.ethoc*, i32) #1

declare dso_local i32 @ethoc_reset(%struct.ethoc*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @phy_start(i32) #1

declare dso_local i64 @netif_msg_ifup(%struct.ethoc*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
