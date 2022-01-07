; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_main.c_aq_ndev_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_main.c_aq_ndev_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32*, i32* }
%struct.aq_nic_s = type { %struct.net_device* }

@AQ_CFG_VECS_MAX = common dso_local global i32 0, align 4
@aq_ndev_ops = common dso_local global i32 0, align 4
@aq_ethtool_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @aq_ndev_alloc() #0 {
  %1 = alloca %struct.net_device*, align 8
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.aq_nic_s*, align 8
  store %struct.net_device* null, %struct.net_device** %2, align 8
  store %struct.aq_nic_s* null, %struct.aq_nic_s** %3, align 8
  %4 = load i32, i32* @AQ_CFG_VECS_MAX, align 4
  %5 = call %struct.net_device* @alloc_etherdev_mq(i32 8, i32 %4)
  store %struct.net_device* %5, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = icmp ne %struct.net_device* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.net_device* null, %struct.net_device** %1, align 8
  br label %20

9:                                                ; preds = %0
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.aq_nic_s* @netdev_priv(%struct.net_device* %10)
  store %struct.aq_nic_s* %11, %struct.aq_nic_s** %3, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %14 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %13, i32 0, i32 0
  store %struct.net_device* %12, %struct.net_device** %14, align 8
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 1
  store i32* @aq_ndev_ops, i32** %16, align 8
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  store i32* @aq_ethtool_ops, i32** %18, align 8
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  store %struct.net_device* %19, %struct.net_device** %1, align 8
  br label %20

20:                                               ; preds = %9, %8
  %21 = load %struct.net_device*, %struct.net_device** %1, align 8
  ret %struct.net_device* %21
}

declare dso_local %struct.net_device* @alloc_etherdev_mq(i32, i32) #1

declare dso_local %struct.aq_nic_s* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
