; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ezchip/extr_nps_enet.c_nps_enet_set_hw_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ezchip/extr_nps_enet.c_nps_enet_set_hw_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.nps_enet_priv = type { i32 }

@CFG_1_OCTET_0_SHIFT = common dso_local global i32 0, align 4
@CFG_1_OCTET_1_SHIFT = common dso_local global i32 0, align 4
@CFG_1_OCTET_2_SHIFT = common dso_local global i32 0, align 4
@CFG_1_OCTET_3_SHIFT = common dso_local global i32 0, align 4
@CFG_2_OCTET_4_MASK = common dso_local global i32 0, align 4
@CFG_2_OCTET_4_SHIFT = common dso_local global i32 0, align 4
@CFG_2_OCTET_5_MASK = common dso_local global i32 0, align 4
@CFG_2_OCTET_5_SHIFT = common dso_local global i32 0, align 4
@NPS_ENET_REG_GE_MAC_CFG_1 = common dso_local global i32 0, align 4
@NPS_ENET_REG_GE_MAC_CFG_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @nps_enet_set_hw_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nps_enet_set_hw_mac_address(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.nps_enet_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.nps_enet_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.nps_enet_priv* %7, %struct.nps_enet_priv** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %3, align 8
  %9 = getelementptr inbounds %struct.nps_enet_priv, %struct.nps_enet_priv* %8, i32 0, i32 0
  store i32* %9, i32** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CFG_1_OCTET_0_SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CFG_1_OCTET_1_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CFG_1_OCTET_2_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CFG_1_OCTET_3_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CFG_2_OCTET_4_MASK, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @CFG_2_OCTET_4_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = or i32 %50, %57
  %59 = load i32*, i32** %5, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @CFG_2_OCTET_5_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 5
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @CFG_2_OCTET_5_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = or i32 %64, %71
  %73 = load i32*, i32** %5, align 8
  store i32 %72, i32* %73, align 4
  %74 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %3, align 8
  %75 = load i32, i32* @NPS_ENET_REG_GE_MAC_CFG_1, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @nps_enet_reg_set(%struct.nps_enet_priv* %74, i32 %75, i32 %76)
  %78 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %3, align 8
  %79 = load i32, i32* @NPS_ENET_REG_GE_MAC_CFG_2, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @nps_enet_reg_set(%struct.nps_enet_priv* %78, i32 %79, i32 %81)
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
