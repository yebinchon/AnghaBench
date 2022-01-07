; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_vlan_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_vlan_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sky2_port = type { i32, %struct.sky2_hw* }
%struct.sky2_hw = type { i32 }

@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@RX_GMF_CTRL_T = common dso_local global i32 0, align 4
@RX_VLAN_STRIP_ON = common dso_local global i32 0, align 4
@RX_VLAN_STRIP_OFF = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@TX_GMF_CTRL_T = common dso_local global i32 0, align 4
@TX_VLAN_TAG_ON = common dso_local global i32 0, align 4
@SKY2_VLAN_OFFLOADS = common dso_local global i32 0, align 4
@TX_VLAN_TAG_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @sky2_vlan_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_vlan_mode(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sky2_port*, align 8
  %6 = alloca %struct.sky2_hw*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.sky2_port* @netdev_priv(%struct.net_device* %8)
  store %struct.sky2_port* %9, %struct.sky2_port** %5, align 8
  %10 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %11 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %10, i32 0, i32 1
  %12 = load %struct.sky2_hw*, %struct.sky2_hw** %11, align 8
  store %struct.sky2_hw* %12, %struct.sky2_hw** %6, align 8
  %13 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %14 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @RX_GMF_CTRL_T, align 4
  %24 = call i32 @SK_REG(i32 %22, i32 %23)
  %25 = load i32, i32* @RX_VLAN_STRIP_ON, align 4
  %26 = call i32 @sky2_write32(%struct.sky2_hw* %21, i32 %24, i32 %25)
  br label %34

27:                                               ; preds = %2
  %28 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @RX_GMF_CTRL_T, align 4
  %31 = call i32 @SK_REG(i32 %29, i32 %30)
  %32 = load i32, i32* @RX_VLAN_STRIP_OFF, align 4
  %33 = call i32 @sky2_write32(%struct.sky2_hw* %28, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %27, %20
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @TX_GMF_CTRL_T, align 4
  %43 = call i32 @SK_REG(i32 %41, i32 %42)
  %44 = load i32, i32* @TX_VLAN_TAG_ON, align 4
  %45 = call i32 @sky2_write32(%struct.sky2_hw* %40, i32 %43, i32 %44)
  %46 = load i32, i32* @SKY2_VLAN_OFFLOADS, align 4
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %64

51:                                               ; preds = %34
  %52 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @TX_GMF_CTRL_T, align 4
  %55 = call i32 @SK_REG(i32 %53, i32 %54)
  %56 = load i32, i32* @TX_VLAN_TAG_OFF, align 4
  %57 = call i32 @sky2_write32(%struct.sky2_hw* %52, i32 %55, i32 %56)
  %58 = load i32, i32* @SKY2_VLAN_OFFLOADS, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %51, %39
  ret void
}

declare dso_local %struct.sky2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sky2_write32(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @SK_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
