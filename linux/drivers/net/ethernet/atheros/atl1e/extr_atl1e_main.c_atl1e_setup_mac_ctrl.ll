; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_setup_mac_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_setup_mac_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_adapter = type { i64, i64, %struct.atl1e_hw, %struct.net_device* }
%struct.atl1e_hw = type { i64 }
%struct.net_device = type { i32, i32 }

@MAC_CTRL_TX_EN = common dso_local global i32 0, align 4
@MAC_CTRL_RX_EN = common dso_local global i32 0, align 4
@FULL_DUPLEX = common dso_local global i64 0, align 8
@MAC_CTRL_DUPLX = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@MAC_CTRL_SPEED_1000 = common dso_local global i64 0, align 8
@MAC_CTRL_SPEED_10_100 = common dso_local global i64 0, align 8
@MAC_CTRL_SPEED_SHIFT = common dso_local global i32 0, align 4
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
@NETIF_F_RXALL = common dso_local global i32 0, align 4
@MAC_CTRL_DBG = common dso_local global i32 0, align 4
@REG_MAC_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1e_adapter*)* @atl1e_setup_mac_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1e_setup_mac_ctrl(%struct.atl1e_adapter* %0) #0 {
  %2 = alloca %struct.atl1e_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.atl1e_hw*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.atl1e_adapter* %0, %struct.atl1e_adapter** %2, align 8
  %6 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %6, i32 0, i32 2
  store %struct.atl1e_hw* %7, %struct.atl1e_hw** %4, align 8
  %8 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %8, i32 0, i32 3
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load i32, i32* @MAC_CTRL_TX_EN, align 4
  %12 = load i32, i32* @MAC_CTRL_RX_EN, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %3, align 4
  %14 = load i64, i64* @FULL_DUPLEX, align 8
  %15 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @MAC_CTRL_DUPLX, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %1
  %24 = load i64, i64* @SPEED_1000, align 8
  %25 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i64, i64* @MAC_CTRL_SPEED_1000, align 8
  br label %33

31:                                               ; preds = %23
  %32 = load i64, i64* @MAC_CTRL_SPEED_10_100, align 8
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i64 [ %30, %29 ], [ %32, %31 ]
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* @MAC_CTRL_SPEED_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* @MAC_CTRL_TX_FLOW, align 4
  %41 = load i32, i32* @MAC_CTRL_RX_FLOW, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* @MAC_CTRL_ADD_CRC, align 4
  %46 = load i32, i32* @MAC_CTRL_PAD, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %3, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %3, align 4
  %50 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* @MAC_CTRL_PRMLEN_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @MAC_CTRL_PRMLEN_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* %3, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %3, align 4
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @__atl1e_vlan_mode(i32 %63, i32* %3)
  %65 = load i32, i32* @MAC_CTRL_BC_EN, align 4
  %66 = load i32, i32* %3, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %3, align 4
  %68 = load %struct.net_device*, %struct.net_device** %5, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @IFF_PROMISC, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %33
  %75 = load i32, i32* @MAC_CTRL_PROMIS_EN, align 4
  %76 = load i32, i32* %3, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %33
  %79 = load %struct.net_device*, %struct.net_device** %5, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @IFF_ALLMULTI, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load i32, i32* @MAC_CTRL_MC_ALL_EN, align 4
  %87 = load i32, i32* %3, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %85, %78
  %90 = load %struct.net_device*, %struct.net_device** %5, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @NETIF_F_RXALL, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load i32, i32* @MAC_CTRL_DBG, align 4
  %98 = load i32, i32* %3, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %96, %89
  %101 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %102 = load i32, i32* @REG_MAC_CTRL, align 4
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %101, i32 %102, i32 %103)
  ret void
}

declare dso_local i32 @__atl1e_vlan_mode(i32, i32*) #1

declare dso_local i32 @AT_WRITE_REG(%struct.atl1e_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
