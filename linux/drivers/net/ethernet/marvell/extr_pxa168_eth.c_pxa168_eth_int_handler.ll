; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_pxa168_eth_int_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_pxa168_eth_int_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pxa168_eth_private = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@INT_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pxa168_eth_int_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa168_eth_int_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.pxa168_eth_private*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.net_device*
  store %struct.net_device* %9, %struct.net_device** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %6, align 8
  %11 = call %struct.pxa168_eth_private* @netdev_priv(%struct.net_device* %10)
  store %struct.pxa168_eth_private* %11, %struct.pxa168_eth_private** %7, align 8
  %12 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call i32 @pxa168_eth_collect_events(%struct.pxa168_eth_private* %12, %struct.net_device* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @IRQ_NONE, align 4
  store i32 %21, i32* %3, align 4
  br label %30

22:                                               ; preds = %2
  %23 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %7, align 8
  %24 = load i32, i32* @INT_MASK, align 4
  %25 = call i32 @wrl(%struct.pxa168_eth_private* %23, i32 %24, i32 0)
  %26 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %7, align 8
  %27 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %26, i32 0, i32 0
  %28 = call i32 @napi_schedule(i32* %27)
  %29 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %22, %20
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.pxa168_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pxa168_eth_collect_events(%struct.pxa168_eth_private*, %struct.net_device*) #1

declare dso_local i32 @wrl(%struct.pxa168_eth_private*, i32, i32) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
