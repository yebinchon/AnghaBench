; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_mv643xx_eth_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_mv643xx_eth_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mv643xx_eth_private = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@INT_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mv643xx_eth_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv643xx_eth_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.mv643xx_eth_private*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.net_device*
  store %struct.net_device* %9, %struct.net_device** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %6, align 8
  %11 = call %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device* %10)
  store %struct.mv643xx_eth_private* %11, %struct.mv643xx_eth_private** %7, align 8
  %12 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %7, align 8
  %13 = call i32 @mv643xx_eth_collect_events(%struct.mv643xx_eth_private* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_NONE, align 4
  store i32 %20, i32* %3, align 4
  br label %29

21:                                               ; preds = %2
  %22 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %7, align 8
  %23 = load i32, i32* @INT_MASK, align 4
  %24 = call i32 @wrlp(%struct.mv643xx_eth_private* %22, i32 %23, i32 0)
  %25 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %7, align 8
  %26 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %25, i32 0, i32 0
  %27 = call i32 @napi_schedule(i32* %26)
  %28 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %21, %19
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mv643xx_eth_collect_events(%struct.mv643xx_eth_private*) #1

declare dso_local i32 @wrlp(%struct.mv643xx_eth_private*, i32, i32) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
