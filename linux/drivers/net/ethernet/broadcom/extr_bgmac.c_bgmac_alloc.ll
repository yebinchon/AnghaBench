; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgmac = type { %struct.net_device*, %struct.device* }
%struct.net_device = type { i32*, i32* }
%struct.device = type { i32 }

@bgmac_netdev_ops = common dso_local global i32 0, align 4
@bgmac_ethtool_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bgmac* @bgmac_alloc(%struct.device* %0) #0 {
  %2 = alloca %struct.bgmac*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.bgmac*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.net_device* @devm_alloc_etherdev(%struct.device* %6, i32 16)
  store %struct.net_device* %7, %struct.net_device** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = icmp ne %struct.net_device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.bgmac* null, %struct.bgmac** %2, align 8
  br label %25

11:                                               ; preds = %1
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 1
  store i32* @bgmac_netdev_ops, i32** %13, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  store i32* @bgmac_ethtool_ops, i32** %15, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call %struct.bgmac* @netdev_priv(%struct.net_device* %16)
  store %struct.bgmac* %17, %struct.bgmac** %5, align 8
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %20 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %19, i32 0, i32 1
  store %struct.device* %18, %struct.device** %20, align 8
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %23 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %22, i32 0, i32 0
  store %struct.net_device* %21, %struct.net_device** %23, align 8
  %24 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  store %struct.bgmac* %24, %struct.bgmac** %2, align 8
  br label %25

25:                                               ; preds = %11, %10
  %26 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  ret %struct.bgmac* %26
}

declare dso_local %struct.net_device* @devm_alloc_etherdev(%struct.device*, i32) #1

declare dso_local %struct.bgmac* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
