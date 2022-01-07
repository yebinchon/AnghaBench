; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_setup_mac_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_setup_mac_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl2_adapter = type { i64, %struct.atl2_hw, %struct.net_device* }
%struct.atl2_hw = type { i32, i64 }
%struct.net_device = type { i32, i32 }

@MAC_CTRL_TX_EN = common dso_local global i32 0, align 4
@MAC_CTRL_RX_EN = common dso_local global i32 0, align 4
@MAC_CTRL_MACLP_CLK_PHY = common dso_local global i32 0, align 4
@FULL_DUPLEX = common dso_local global i64 0, align 8
@MAC_CTRL_DUPLX = common dso_local global i32 0, align 4
@MAC_CTRL_TX_FLOW = common dso_local global i32 0, align 4
@MAC_CTRL_RX_FLOW = common dso_local global i32 0, align 4
@MAC_CTRL_ADD_CRC = common dso_local global i32 0, align 4
@MAC_CTRL_PAD = common dso_local global i32 0, align 4
@MAC_CTRL_PRMLEN_MASK = common dso_local global i32 0, align 4
@MAC_CTRL_PRMLEN_SHIFT = common dso_local global i32 0, align 4
@MAC_CTRL_BC_EN = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@MAC_CTRL_PROMIS_EN = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@MAC_CTRL_MC_ALL_EN = common dso_local global i32 0, align 4
@MAC_CTRL_HALF_LEFT_BUF_MASK = common dso_local global i32 0, align 4
@MAC_CTRL_HALF_LEFT_BUF_SHIFT = common dso_local global i32 0, align 4
@REG_MAC_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl2_adapter*)* @atl2_setup_mac_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl2_setup_mac_ctrl(%struct.atl2_adapter* %0) #0 {
  %2 = alloca %struct.atl2_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.atl2_hw*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.atl2_adapter* %0, %struct.atl2_adapter** %2, align 8
  %6 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %6, i32 0, i32 1
  store %struct.atl2_hw* %7, %struct.atl2_hw** %4, align 8
  %8 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %8, i32 0, i32 2
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load i32, i32* @MAC_CTRL_TX_EN, align 4
  %12 = load i32, i32* @MAC_CTRL_RX_EN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @MAC_CTRL_MACLP_CLK_PHY, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %3, align 4
  %16 = load i64, i64* @FULL_DUPLEX, align 8
  %17 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @MAC_CTRL_DUPLX, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %1
  %26 = load i32, i32* @MAC_CTRL_TX_FLOW, align 4
  %27 = load i32, i32* @MAC_CTRL_RX_FLOW, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* @MAC_CTRL_ADD_CRC, align 4
  %32 = load i32, i32* @MAC_CTRL_PAD, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @MAC_CTRL_PRMLEN_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @MAC_CTRL_PRMLEN_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @__atl2_vlan_mode(i32 %49, i32* %3)
  %51 = load i32, i32* @MAC_CTRL_BC_EN, align 4
  %52 = load i32, i32* %3, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %3, align 4
  %54 = load %struct.net_device*, %struct.net_device** %5, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IFF_PROMISC, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %25
  %61 = load i32, i32* @MAC_CTRL_PROMIS_EN, align 4
  %62 = load i32, i32* %3, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %3, align 4
  br label %76

64:                                               ; preds = %25
  %65 = load %struct.net_device*, %struct.net_device** %5, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IFF_ALLMULTI, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* @MAC_CTRL_MC_ALL_EN, align 4
  %73 = load i32, i32* %3, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %71, %64
  br label %76

76:                                               ; preds = %75, %60
  %77 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %78 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @MAC_CTRL_HALF_LEFT_BUF_MASK, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* @MAC_CTRL_HALF_LEFT_BUF_SHIFT, align 4
  %84 = shl i32 %82, %83
  %85 = load i32, i32* %3, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %3, align 4
  %87 = load %struct.atl2_hw*, %struct.atl2_hw** %4, align 8
  %88 = load i32, i32* @REG_MAC_CTRL, align 4
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @ATL2_WRITE_REG(%struct.atl2_hw* %87, i32 %88, i32 %89)
  ret void
}

declare dso_local i32 @__atl2_vlan_mode(i32, i32*) #1

declare dso_local i32 @ATL2_WRITE_REG(%struct.atl2_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
