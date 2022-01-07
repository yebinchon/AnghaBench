; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c___igb_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c___igb_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.igb_adapter = type { i32, i64, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@E1000_WUFC_LNKC = common dso_local global i32 0, align 4
@E1000_STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@E1000_WUFC_MC = common dso_local global i32 0, align 4
@E1000_RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_MPE = common dso_local global i32 0, align 4
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_ADVD3WUC = common dso_local global i32 0, align 4
@E1000_WUC = common dso_local global i32 0, align 4
@E1000_WUC_PME_EN = common dso_local global i32 0, align 4
@E1000_WUFC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32*, i32)* @__igb_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__igb_shutdown(%struct.pci_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.igb_adapter*, align 8
  %9 = alloca %struct.e1000_hw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %15)
  store %struct.net_device* %16, %struct.net_device** %7, align 8
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %17)
  store %struct.igb_adapter* %18, %struct.igb_adapter** %8, align 8
  %19 = load %struct.igb_adapter*, %struct.igb_adapter** %8, align 8
  %20 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %19, i32 0, i32 2
  store %struct.e1000_hw* %20, %struct.e1000_hw** %9, align 8
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @E1000_WUFC_LNKC, align 4
  br label %29

25:                                               ; preds = %3
  %26 = load %struct.igb_adapter*, %struct.igb_adapter** %8, align 8
  %27 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  br label %29

29:                                               ; preds = %25, %23
  %30 = phi i32 [ %24, %23 ], [ %28, %25 ]
  store i32 %30, i32* %13, align 4
  %31 = call i32 (...) @rtnl_lock()
  %32 = load %struct.net_device*, %struct.net_device** %7, align 8
  %33 = call i32 @netif_device_detach(%struct.net_device* %32)
  %34 = load %struct.net_device*, %struct.net_device** %7, align 8
  %35 = call i64 @netif_running(%struct.net_device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load %struct.net_device*, %struct.net_device** %7, align 8
  %39 = call i32 @__igb_close(%struct.net_device* %38, i32 1)
  br label %40

40:                                               ; preds = %37, %29
  %41 = load %struct.igb_adapter*, %struct.igb_adapter** %8, align 8
  %42 = call i32 @igb_ptp_suspend(%struct.igb_adapter* %41)
  %43 = load %struct.igb_adapter*, %struct.igb_adapter** %8, align 8
  %44 = call i32 @igb_clear_interrupt_scheme(%struct.igb_adapter* %43)
  %45 = call i32 (...) @rtnl_unlock()
  %46 = load i32, i32* @E1000_STATUS, align 4
  %47 = call i32 @rd32(i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @E1000_STATUS_LU, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %40
  %53 = load i32, i32* @E1000_WUFC_LNKC, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %13, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %52, %40
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %95

60:                                               ; preds = %57
  %61 = load %struct.igb_adapter*, %struct.igb_adapter** %8, align 8
  %62 = call i32 @igb_setup_rctl(%struct.igb_adapter* %61)
  %63 = load %struct.net_device*, %struct.net_device** %7, align 8
  %64 = call i32 @igb_set_rx_mode(%struct.net_device* %63)
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @E1000_WUFC_MC, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %60
  %70 = load i32, i32* @E1000_RCTL, align 4
  %71 = call i32 @rd32(i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* @E1000_RCTL_MPE, align 4
  %73 = load i32, i32* %11, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* @E1000_RCTL, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @wr32(i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %69, %60
  %79 = load i32, i32* @E1000_CTRL, align 4
  %80 = call i32 @rd32(i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* @E1000_CTRL_ADVD3WUC, align 4
  %82 = load i32, i32* %10, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* @E1000_CTRL, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @wr32(i32 %84, i32 %85)
  %87 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %88 = call i32 @igb_disable_pcie_master(%struct.e1000_hw* %87)
  %89 = load i32, i32* @E1000_WUC, align 4
  %90 = load i32, i32* @E1000_WUC_PME_EN, align 4
  %91 = call i32 @wr32(i32 %89, i32 %90)
  %92 = load i32, i32* @E1000_WUFC, align 4
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @wr32(i32 %92, i32 %93)
  br label %100

95:                                               ; preds = %57
  %96 = load i32, i32* @E1000_WUC, align 4
  %97 = call i32 @wr32(i32 %96, i32 0)
  %98 = load i32, i32* @E1000_WUFC, align 4
  %99 = call i32 @wr32(i32 %98, i32 0)
  br label %100

100:                                              ; preds = %95, %78
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %100
  %104 = load %struct.igb_adapter*, %struct.igb_adapter** %8, align 8
  %105 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br label %108

108:                                              ; preds = %103, %100
  %109 = phi i1 [ true, %100 ], [ %107, %103 ]
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = load %struct.igb_adapter*, %struct.igb_adapter** %8, align 8
  %115 = call i32 @igb_power_down_link(%struct.igb_adapter* %114)
  br label %119

116:                                              ; preds = %108
  %117 = load %struct.igb_adapter*, %struct.igb_adapter** %8, align 8
  %118 = call i32 @igb_power_up_link(%struct.igb_adapter* %117)
  br label %119

119:                                              ; preds = %116, %113
  %120 = load i32*, i32** %5, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32, i32* %14, align 4
  %124 = load i32*, i32** %5, align 8
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %122, %119
  %126 = load %struct.igb_adapter*, %struct.igb_adapter** %8, align 8
  %127 = call i32 @igb_release_hw_control(%struct.igb_adapter* %126)
  %128 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %129 = call i32 @pci_disable_device(%struct.pci_dev* %128)
  ret i32 0
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @__igb_close(%struct.net_device*, i32) #1

declare dso_local i32 @igb_ptp_suspend(%struct.igb_adapter*) #1

declare dso_local i32 @igb_clear_interrupt_scheme(%struct.igb_adapter*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @igb_setup_rctl(%struct.igb_adapter*) #1

declare dso_local i32 @igb_set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @igb_disable_pcie_master(%struct.e1000_hw*) #1

declare dso_local i32 @igb_power_down_link(%struct.igb_adapter*) #1

declare dso_local i32 @igb_power_up_link(%struct.igb_adapter*) #1

declare dso_local i32 @igb_release_hw_control(%struct.igb_adapter*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
