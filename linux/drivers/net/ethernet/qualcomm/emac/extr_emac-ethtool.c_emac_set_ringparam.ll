; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-ethtool.c_emac_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-ethtool.c_emac_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i32, i64, i64 }
%struct.emac_adapter = type { i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@EMAC_MIN_TX_DESCS = common dso_local global i32 0, align 4
@EMAC_MAX_TX_DESCS = common dso_local global i32 0, align 4
@EMAC_MIN_RX_DESCS = common dso_local global i32 0, align 4
@EMAC_MAX_RX_DESCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @emac_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.emac_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.emac_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.emac_adapter* %8, %struct.emac_adapter** %6, align 8
  %9 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %15 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %45

21:                                               ; preds = %13
  %22 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %23 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @EMAC_MIN_TX_DESCS, align 4
  %26 = load i32, i32* @EMAC_MAX_TX_DESCS, align 4
  %27 = call i8* @clamp_val(i32 %24, i32 %25, i32 %26)
  %28 = load %struct.emac_adapter*, %struct.emac_adapter** %6, align 8
  %29 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %31 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @EMAC_MIN_RX_DESCS, align 4
  %34 = load i32, i32* @EMAC_MAX_RX_DESCS, align 4
  %35 = call i8* @clamp_val(i32 %32, i32 %33, i32 %34)
  %36 = load %struct.emac_adapter*, %struct.emac_adapter** %6, align 8
  %37 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = call i64 @netif_running(%struct.net_device* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %21
  %42 = load %struct.emac_adapter*, %struct.emac_adapter** %6, align 8
  %43 = call i32 @emac_reinit_locked(%struct.emac_adapter* %42)
  store i32 %43, i32* %3, align 4
  br label %45

44:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %41, %18
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.emac_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @clamp_val(i32, i32, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @emac_reinit_locked(%struct.emac_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
