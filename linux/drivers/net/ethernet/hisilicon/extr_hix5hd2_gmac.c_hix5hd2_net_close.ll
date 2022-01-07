; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_net_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_net_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.hix5hd2_priv = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @hix5hd2_net_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hix5hd2_net_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.hix5hd2_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.hix5hd2_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.hix5hd2_priv* %5, %struct.hix5hd2_priv** %3, align 8
  %6 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %3, align 8
  %7 = call i32 @hix5hd2_port_disable(%struct.hix5hd2_priv* %6)
  %8 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %3, align 8
  %9 = call i32 @hix5hd2_irq_disable(%struct.hix5hd2_priv* %8)
  %10 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %3, align 8
  %11 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %10, i32 0, i32 2
  %12 = call i32 @napi_disable(i32* %11)
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 @netif_stop_queue(%struct.net_device* %13)
  %15 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %3, align 8
  %16 = call i32 @hix5hd2_free_dma_desc_rings(%struct.hix5hd2_priv* %15)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @phy_stop(i64 %24)
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @phy_disconnect(i64 %28)
  br label %30

30:                                               ; preds = %21, %1
  %31 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %3, align 8
  %32 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @clk_disable_unprepare(i32 %33)
  %35 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %3, align 8
  %36 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @clk_disable_unprepare(i32 %37)
  ret i32 0
}

declare dso_local %struct.hix5hd2_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @hix5hd2_port_disable(%struct.hix5hd2_priv*) #1

declare dso_local i32 @hix5hd2_irq_disable(%struct.hix5hd2_priv*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @hix5hd2_free_dma_desc_rings(%struct.hix5hd2_priv*) #1

declare dso_local i32 @phy_stop(i64) #1

declare dso_local i32 @phy_disconnect(i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
