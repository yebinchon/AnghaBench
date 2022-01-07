; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c___igb_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c___igb_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.igb_adapter = type { i32, i32, i64, %struct.TYPE_3__**, i32, i32, i32, i32, %struct.pci_dev*, %struct.e1000_hw }
%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@__IGB_TESTING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@__IGB_DOWN = common dso_local global i32 0, align 4
@E1000_TSICR = common dso_local global i32 0, align 4
@E1000_ICR = common dso_local global i32 0, align 4
@E1000_CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_PFRSTD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @__igb_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__igb_open(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.igb_adapter*, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.igb_adapter* %13, %struct.igb_adapter** %6, align 8
  %14 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %14, i32 0, i32 9
  store %struct.e1000_hw* %15, %struct.e1000_hw** %7, align 8
  %16 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %17 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %16, i32 0, i32 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %8, align 8
  %19 = load i32, i32* @__IGB_TESTING, align 4
  %20 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %21 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %20, i32 0, i32 4
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %166

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = call i32 @pm_runtime_get_sync(i32* %34)
  br label %36

36:                                               ; preds = %32, %29
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = call i32 @netif_carrier_off(%struct.net_device* %37)
  %39 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %40 = call i32 @igb_setup_all_tx_resources(%struct.igb_adapter* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %155

44:                                               ; preds = %36
  %45 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %46 = call i32 @igb_setup_all_rx_resources(%struct.igb_adapter* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %152

50:                                               ; preds = %44
  %51 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %52 = call i32 @igb_power_up_link(%struct.igb_adapter* %51)
  %53 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %54 = call i32 @igb_configure(%struct.igb_adapter* %53)
  %55 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %56 = call i32 @igb_request_irq(%struct.igb_adapter* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %145

60:                                               ; preds = %50
  %61 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %62 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %65 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @netif_set_real_num_tx_queues(i32 %63, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  br label %142

71:                                               ; preds = %60
  %72 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %73 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %76 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @netif_set_real_num_rx_queues(i32 %74, i32 %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  br label %142

82:                                               ; preds = %71
  %83 = load i32, i32* @__IGB_DOWN, align 4
  %84 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %85 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %84, i32 0, i32 4
  %86 = call i32 @clear_bit(i32 %83, i32* %85)
  store i32 0, i32* %10, align 4
  br label %87

87:                                               ; preds = %103, %82
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %90 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %87
  %94 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %95 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %94, i32 0, i32 3
  %96 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %96, i64 %98
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = call i32 @napi_enable(i32* %101)
  br label %103

103:                                              ; preds = %93
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %87

106:                                              ; preds = %87
  %107 = load i32, i32* @E1000_TSICR, align 4
  %108 = call i32 @rd32(i32 %107)
  %109 = load i32, i32* @E1000_ICR, align 4
  %110 = call i32 @rd32(i32 %109)
  %111 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %112 = call i32 @igb_irq_enable(%struct.igb_adapter* %111)
  %113 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %114 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %106
  %118 = load i32, i32* @E1000_CTRL_EXT, align 4
  %119 = call i32 @rd32(i32 %118)
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* @E1000_CTRL_EXT_PFRSTD, align 4
  %121 = load i32, i32* %11, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* @E1000_CTRL_EXT, align 4
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @wr32(i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %117, %106
  %127 = load %struct.net_device*, %struct.net_device** %4, align 8
  %128 = call i32 @netif_tx_start_all_queues(%struct.net_device* %127)
  %129 = load i32, i32* %5, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %126
  %132 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %133 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %132, i32 0, i32 0
  %134 = call i32 @pm_runtime_put(i32* %133)
  br label %135

135:                                              ; preds = %131, %126
  %136 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %137 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  store i32 1, i32* %138, align 4
  %139 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %140 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %139, i32 0, i32 1
  %141 = call i32 @schedule_work(i32* %140)
  store i32 0, i32* %3, align 4
  br label %166

142:                                              ; preds = %81, %70
  %143 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %144 = call i32 @igb_free_irq(%struct.igb_adapter* %143)
  br label %145

145:                                              ; preds = %142, %59
  %146 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %147 = call i32 @igb_release_hw_control(%struct.igb_adapter* %146)
  %148 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %149 = call i32 @igb_power_down_link(%struct.igb_adapter* %148)
  %150 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %151 = call i32 @igb_free_all_rx_resources(%struct.igb_adapter* %150)
  br label %152

152:                                              ; preds = %145, %49
  %153 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %154 = call i32 @igb_free_all_tx_resources(%struct.igb_adapter* %153)
  br label %155

155:                                              ; preds = %152, %43
  %156 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %157 = call i32 @igb_reset(%struct.igb_adapter* %156)
  %158 = load i32, i32* %5, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %155
  %161 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %162 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %161, i32 0, i32 0
  %163 = call i32 @pm_runtime_put(i32* %162)
  br label %164

164:                                              ; preds = %160, %155
  %165 = load i32, i32* %9, align 4
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %164, %135, %24
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @igb_setup_all_tx_resources(%struct.igb_adapter*) #1

declare dso_local i32 @igb_setup_all_rx_resources(%struct.igb_adapter*) #1

declare dso_local i32 @igb_power_up_link(%struct.igb_adapter*) #1

declare dso_local i32 @igb_configure(%struct.igb_adapter*) #1

declare dso_local i32 @igb_request_irq(%struct.igb_adapter*) #1

declare dso_local i32 @netif_set_real_num_tx_queues(i32, i32) #1

declare dso_local i32 @netif_set_real_num_rx_queues(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @igb_irq_enable(%struct.igb_adapter*) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @igb_free_irq(%struct.igb_adapter*) #1

declare dso_local i32 @igb_release_hw_control(%struct.igb_adapter*) #1

declare dso_local i32 @igb_power_down_link(%struct.igb_adapter*) #1

declare dso_local i32 @igb_free_all_rx_resources(%struct.igb_adapter*) #1

declare dso_local i32 @igb_free_all_tx_resources(%struct.igb_adapter*) #1

declare dso_local i32 @igb_reset(%struct.igb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
