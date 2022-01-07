; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bcm_sysport_priv = type { i32, i32 }

@UMAC_CMD = common dso_local global i32 0, align 4
@CMD_CRC_FWD = common dso_local global i32 0, align 4
@GIB_CONTROL = common dso_local global i32 0, align 4
@GIB_FCS_STRIP = common dso_local global i32 0, align 4
@GIB_FCS_STRIP_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @bcm_sysport_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sysport_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm_sysport_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.bcm_sysport_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.bcm_sysport_priv* %7, %struct.bcm_sysport_priv** %5, align 8
  %8 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %5, align 8
  %9 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %2
  %13 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %5, align 8
  %14 = load i32, i32* @UMAC_CMD, align 4
  %15 = call i32 @umac_readl(%struct.bcm_sysport_priv* %13, i32 %14)
  %16 = load i32, i32* @CMD_CRC_FWD, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %5, align 8
  %23 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %37

24:                                               ; preds = %2
  %25 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %5, align 8
  %26 = load i32, i32* @GIB_CONTROL, align 4
  %27 = call i32 @gib_readl(%struct.bcm_sysport_priv* %25, i32 %26)
  %28 = load i32, i32* @GIB_FCS_STRIP, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @GIB_FCS_STRIP_SHIFT, align 4
  %31 = ashr i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %5, align 8
  %36 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %24, %12
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @bcm_sysport_set_rx_csum(%struct.net_device* %38, i32 %39)
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @bcm_sysport_set_tx_csum(%struct.net_device* %41, i32 %42)
  ret i32 0
}

declare dso_local %struct.bcm_sysport_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @umac_readl(%struct.bcm_sysport_priv*, i32) #1

declare dso_local i32 @gib_readl(%struct.bcm_sysport_priv*, i32) #1

declare dso_local i32 @bcm_sysport_set_rx_csum(%struct.net_device*, i32) #1

declare dso_local i32 @bcm_sysport_set_tx_csum(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
