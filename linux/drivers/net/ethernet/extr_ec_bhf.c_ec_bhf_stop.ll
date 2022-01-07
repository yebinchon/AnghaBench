; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ec_bhf.c_ec_bhf_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ec_bhf.c_ec_bhf_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ec_bhf_priv = type { %struct.TYPE_3__, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ec_bhf_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec_bhf_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ec_bhf_priv*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ec_bhf_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.ec_bhf_priv* %6, %struct.ec_bhf_priv** %3, align 8
  %7 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %3, align 8
  %8 = call %struct.device* @PRIV_TO_DEV(%struct.ec_bhf_priv* %7)
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %3, align 8
  %10 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %9, i32 0, i32 2
  %11 = call i32 @hrtimer_cancel(i32* %10)
  %12 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %3, align 8
  %13 = call i32 @ec_bhf_reset(%struct.ec_bhf_priv* %12)
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = call i32 @netif_tx_disable(%struct.net_device* %14)
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %3, align 8
  %18 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %3, align 8
  %22 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %3, align 8
  %26 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dma_free_coherent(%struct.device* %16, i32 %20, i32 %24, i32 %28)
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %3, align 8
  %32 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %3, align 8
  %36 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %3, align 8
  %40 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dma_free_coherent(%struct.device* %30, i32 %34, i32 %38, i32 %42)
  ret i32 0
}

declare dso_local %struct.ec_bhf_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.device* @PRIV_TO_DEV(%struct.ec_bhf_priv*) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @ec_bhf_reset(%struct.ec_bhf_priv*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
