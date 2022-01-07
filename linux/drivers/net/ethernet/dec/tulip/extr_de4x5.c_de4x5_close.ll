; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.de4x5_private = type { i32 }

@de4x5_debug = common dso_local global i32 0, align 4
@DEBUG_CLOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"%s: Shutting down ethercard, status was %8.8x.\0A\00", align 1
@DE4X5_STS = common dso_local global i32 0, align 4
@DISABLE_IRQs = common dso_local global i32 0, align 4
@STOP_DE4X5 = common dso_local global i32 0, align 4
@CLOSED = common dso_local global i32 0, align 4
@SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @de4x5_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @de4x5_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.de4x5_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %7)
  store %struct.de4x5_private* %8, %struct.de4x5_private** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @disable_ast(%struct.net_device* %12)
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = call i32 @netif_stop_queue(%struct.net_device* %14)
  %16 = load i32, i32* @de4x5_debug, align 4
  %17 = load i32, i32* @DEBUG_CLOSE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DE4X5_STS, align 4
  %25 = call i32 @inl(i32 %24)
  %26 = call i32 @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %25)
  br label %27

27:                                               ; preds = %20, %1
  %28 = load i32, i32* @DISABLE_IRQs, align 4
  %29 = load i32, i32* @STOP_DE4X5, align 4
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = call i32 @free_irq(i32 %32, %struct.net_device* %33)
  %35 = load i32, i32* @CLOSED, align 4
  %36 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %37 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = call i32 @de4x5_free_rx_buffs(%struct.net_device* %38)
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = call i32 @de4x5_free_tx_buffs(%struct.net_device* %40)
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = load i32, i32* @SLEEP, align 4
  %44 = call i32 @yawn(%struct.net_device* %42, i32 %43)
  ret i32 0
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @disable_ast(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @de4x5_free_rx_buffs(%struct.net_device*) #1

declare dso_local i32 @de4x5_free_tx_buffs(%struct.net_device*) #1

declare dso_local i32 @yawn(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
