; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ezchip/extr_nps_enet.c_nps_enet_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ezchip/extr_nps_enet.c_nps_enet_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nps_enet_priv = type { i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@CFG_2_DISK_DA_MASK = common dso_local global i32 0, align 4
@NPS_ENET_DISABLE = common dso_local global i32 0, align 4
@CFG_2_DISK_DA_SHIFT = common dso_local global i32 0, align 4
@CFG_2_DISK_MC_MASK = common dso_local global i32 0, align 4
@CFG_2_DISK_MC_SHIFT = common dso_local global i32 0, align 4
@NPS_ENET_ENABLE = common dso_local global i32 0, align 4
@NPS_ENET_REG_GE_MAC_CFG_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @nps_enet_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nps_enet_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.nps_enet_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.nps_enet_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.nps_enet_priv* %6, %struct.nps_enet_priv** %3, align 8
  %7 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %3, align 8
  %8 = getelementptr inbounds %struct.nps_enet_priv, %struct.nps_enet_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IFF_PROMISC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @CFG_2_DISK_DA_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = load i32, i32* @NPS_ENET_DISABLE, align 4
  %22 = load i32, i32* @CFG_2_DISK_DA_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = or i32 %20, %23
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @CFG_2_DISK_MC_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = load i32, i32* @NPS_ENET_DISABLE, align 4
  %30 = load i32, i32* @CFG_2_DISK_MC_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %28, %31
  store i32 %32, i32* %4, align 4
  br label %50

33:                                               ; preds = %1
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @CFG_2_DISK_DA_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load i32, i32* @NPS_ENET_ENABLE, align 4
  %39 = load i32, i32* @CFG_2_DISK_DA_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = or i32 %37, %40
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @CFG_2_DISK_MC_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = load i32, i32* @NPS_ENET_ENABLE, align 4
  %47 = load i32, i32* @CFG_2_DISK_MC_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = or i32 %45, %48
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %33, %16
  %51 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %3, align 8
  %52 = load i32, i32* @NPS_ENET_REG_GE_MAC_CFG_2, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @nps_enet_reg_set(%struct.nps_enet_priv* %51, i32 %52, i32 %53)
  ret void
}

declare dso_local %struct.nps_enet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nps_enet_reg_set(%struct.nps_enet_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
