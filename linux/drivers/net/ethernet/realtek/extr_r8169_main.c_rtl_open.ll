; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtl8169_private = type { i32*, i32, i32*, i32, i32, i32, %struct.TYPE_2__, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@R8169_TX_RING_BYTES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@R8169_RX_RING_BYTES = common dso_local global i32 0, align 4
@rtl8169_interrupt = common dso_local global i32 0, align 4
@RTL_FLAG_TASK_ENABLED = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"counter reset/update failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @rtl_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.rtl8169_private*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.rtl8169_private* @netdev_priv(%struct.net_device* %6)
  store %struct.rtl8169_private* %7, %struct.rtl8169_private** %3, align 8
  %8 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %9 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %8, i32 0, i32 7
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %4, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = call i32 @pm_runtime_get_sync(i32* %14)
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = load i32, i32* @R8169_TX_RING_BYTES, align 4
  %19 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %20 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %19, i32 0, i32 1
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @dma_alloc_coherent(i32* %17, i32 %18, i32* %20, i32 %21)
  %23 = bitcast i8* %22 to i32*
  %24 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %25 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  %26 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %27 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %1
  br label %148

31:                                               ; preds = %1
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = load i32, i32* @R8169_RX_RING_BYTES, align 4
  %35 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %36 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %35, i32 0, i32 3
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @dma_alloc_coherent(i32* %33, i32 %34, i32* %36, i32 %37)
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %41 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %40, i32 0, i32 2
  store i32* %39, i32** %41, align 8
  %42 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %43 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %31
  br label %135

47:                                               ; preds = %31
  %48 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %49 = call i32 @rtl8169_init_ring(%struct.rtl8169_private* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %122

53:                                               ; preds = %47
  %54 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %55 = call i32 @rtl_request_firmware(%struct.rtl8169_private* %54)
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = load i32, i32* @rtl8169_interrupt, align 4
  %58 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @pci_request_irq(%struct.pci_dev* %56, i32 0, i32 %57, i32* null, %struct.rtl8169_private* %58, i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %117

66:                                               ; preds = %53
  %67 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %68 = call i32 @r8169_phy_connect(%struct.rtl8169_private* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %113

72:                                               ; preds = %66
  %73 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %74 = call i32 @rtl_lock_work(%struct.rtl8169_private* %73)
  %75 = load i32, i32* @RTL_FLAG_TASK_ENABLED, align 4
  %76 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %77 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @set_bit(i32 %75, i32 %79)
  %81 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %82 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %81, i32 0, i32 5
  %83 = call i32 @napi_enable(i32* %82)
  %84 = load %struct.net_device*, %struct.net_device** %2, align 8
  %85 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %86 = call i32 @rtl8169_init_phy(%struct.net_device* %84, %struct.rtl8169_private* %85)
  %87 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %88 = call i32 @rtl_pll_power_up(%struct.rtl8169_private* %87)
  %89 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %90 = call i32 @rtl_hw_start(%struct.rtl8169_private* %89)
  %91 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %92 = call i32 @rtl8169_init_counter_offsets(%struct.rtl8169_private* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %72
  %95 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %96 = load i32, i32* @hw, align 4
  %97 = load %struct.net_device*, %struct.net_device** %2, align 8
  %98 = call i32 @netif_warn(%struct.rtl8169_private* %95, i32 %96, %struct.net_device* %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %99

99:                                               ; preds = %94, %72
  %100 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %101 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @phy_start(i32 %102)
  %104 = load %struct.net_device*, %struct.net_device** %2, align 8
  %105 = call i32 @netif_start_queue(%struct.net_device* %104)
  %106 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %107 = call i32 @rtl_unlock_work(%struct.rtl8169_private* %106)
  %108 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %109 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %108, i32 0, i32 0
  %110 = call i32 @pm_runtime_put_sync(i32* %109)
  br label %111

111:                                              ; preds = %148, %99
  %112 = load i32, i32* %5, align 4
  ret i32 %112

113:                                              ; preds = %71
  %114 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %115 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %116 = call i32 @pci_free_irq(%struct.pci_dev* %114, i32 0, %struct.rtl8169_private* %115)
  br label %117

117:                                              ; preds = %113, %65
  %118 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %119 = call i32 @rtl_release_firmware(%struct.rtl8169_private* %118)
  %120 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %121 = call i32 @rtl8169_rx_clear(%struct.rtl8169_private* %120)
  br label %122

122:                                              ; preds = %117, %52
  %123 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %124 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %123, i32 0, i32 0
  %125 = load i32, i32* @R8169_RX_RING_BYTES, align 4
  %126 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %127 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %130 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @dma_free_coherent(i32* %124, i32 %125, i32* %128, i32 %131)
  %133 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %134 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %133, i32 0, i32 2
  store i32* null, i32** %134, align 8
  br label %135

135:                                              ; preds = %122, %46
  %136 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %137 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %136, i32 0, i32 0
  %138 = load i32, i32* @R8169_TX_RING_BYTES, align 4
  %139 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %140 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %143 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @dma_free_coherent(i32* %137, i32 %138, i32* %141, i32 %144)
  %146 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %147 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %146, i32 0, i32 0
  store i32* null, i32** %147, align 8
  br label %148

148:                                              ; preds = %135, %30
  %149 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %150 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %149, i32 0, i32 0
  %151 = call i32 @pm_runtime_put_noidle(i32* %150)
  br label %111
}

declare dso_local %struct.rtl8169_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @rtl8169_init_ring(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_request_firmware(%struct.rtl8169_private*) #1

declare dso_local i32 @pci_request_irq(%struct.pci_dev*, i32, i32, i32*, %struct.rtl8169_private*, i32) #1

declare dso_local i32 @r8169_phy_connect(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_lock_work(%struct.rtl8169_private*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @rtl8169_init_phy(%struct.net_device*, %struct.rtl8169_private*) #1

declare dso_local i32 @rtl_pll_power_up(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_hw_start(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8169_init_counter_offsets(%struct.rtl8169_private*) #1

declare dso_local i32 @netif_warn(%struct.rtl8169_private*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @phy_start(i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @rtl_unlock_work(%struct.rtl8169_private*) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

declare dso_local i32 @pci_free_irq(%struct.pci_dev*, i32, %struct.rtl8169_private*) #1

declare dso_local i32 @rtl_release_firmware(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8169_rx_clear(%struct.rtl8169_private*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
