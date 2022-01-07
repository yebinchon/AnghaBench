; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_adapter = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__*, i32, i32, i64, %struct.pci_dev*, %struct.atl1c_hw }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.pci_dev = type { i32, i32, i32, i32, i32 }
%struct.atl1c_hw = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@SPEED_0 = common dso_local global i32 0, align 4
@FULL_DUPLEX = common dso_local global i32 0, align 4
@PCI_CLASS_REVISION = common dso_local global i32 0, align 4
@MEDIA_TYPE_AUTO_SENSOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"set mac function pointers failed\0A\00", align 1
@IMR_NORMAL_MASK = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@atl1c_dma_ord_out = common dso_local global i32 0, align 4
@atl1c_dma_req_1024 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Unable to allocate memory for queues\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@__AT_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl1c_adapter*)* @atl1c_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1c_sw_init(%struct.atl1c_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atl1c_adapter*, align 8
  %4 = alloca %struct.atl1c_hw*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.atl1c_adapter* %0, %struct.atl1c_adapter** %3, align 8
  %7 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %7, i32 0, i32 10
  store %struct.atl1c_hw* %8, %struct.atl1c_hw** %4, align 8
  %9 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %9, i32 0, i32 9
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %5, align 8
  %12 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %12, i32 0, i32 8
  store i64 0, i64* %13, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = call i32 @device_set_wakeup_enable(i32* %15, i32 0)
  %17 = load i32, i32* @SPEED_0, align 4
  %18 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @FULL_DUPLEX, align 4
  %21 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 8
  %23 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %23, i32 0, i32 5
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 1024, i32* %27, align 4
  %28 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 512, i32* %30, align 8
  %31 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %35 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %34, i32 0, i32 21
  store i32 %33, i32* %35, align 4
  %36 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %40 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %39, i32 0, i32 20
  store i32 %38, i32* %40, align 8
  %41 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %45 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %44, i32 0, i32 19
  store i32 %43, i32* %45, align 4
  %46 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %50 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %49, i32 0, i32 18
  store i32 %48, i32* %50, align 8
  %51 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %52 = load i32, i32* @PCI_CLASS_REVISION, align 4
  %53 = call i32 @pci_read_config_dword(%struct.pci_dev* %51, i32 %52, i32* %6)
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, 255
  %56 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %57 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %59 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  %60 = load i32, i32* @MEDIA_TYPE_AUTO_SENSOR, align 4
  %61 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %62 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %61, i32 0, i32 17
  store i32 %60, i32* %62, align 4
  %63 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %64 = call i64 @atl1c_setup_mac_funcs(%struct.atl1c_hw* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %1
  %67 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %68 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %67, i32 0, i32 0
  %69 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %137

70:                                               ; preds = %1
  %71 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %72 = call i32 @atl1c_patch_assign(%struct.atl1c_hw* %71)
  %73 = load i32, i32* @IMR_NORMAL_MASK, align 4
  %74 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %75 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %74, i32 0, i32 16
  store i32 %73, i32* %75, align 8
  %76 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %77 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %76, i32 0, i32 2
  store i32 0, i32* %77, align 8
  %78 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %79 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %78, i32 0, i32 3
  store i32 7, i32* %79, align 4
  %80 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %81 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %80, i32 0, i32 3
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %86 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %85, i32 0, i32 15
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %88 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %89 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %88, i32 0, i32 14
  store i32 %87, i32* %89, align 8
  %90 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %91 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %90, i32 0, i32 4
  store i32 -454761244, i32* %91, align 8
  %92 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %93 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %92, i32 0, i32 13
  store i64 0, i64* %93, align 8
  %94 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %95 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %94, i32 0, i32 5
  store i32 50000, i32* %95, align 4
  %96 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %97 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %96, i32 0, i32 6
  store i32 200000, i32* %97, align 8
  %98 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %99 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %98, i32 0, i32 7
  store i32 200, i32* %99, align 4
  %100 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %101 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %100, i32 0, i32 8
  store i32 1000, i32* %101, align 8
  %102 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %103 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %102, i32 0, i32 9
  store i32 5, i32* %103, align 4
  %104 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %105 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %104, i32 0, i32 10
  store i32 8, i32* %105, align 8
  %106 = load i32, i32* @atl1c_dma_ord_out, align 4
  %107 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %108 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %107, i32 0, i32 12
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* @atl1c_dma_req_1024, align 4
  %110 = load %struct.atl1c_hw*, %struct.atl1c_hw** %4, align 8
  %111 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %110, i32 0, i32 11
  store i32 %109, i32* %111, align 4
  %112 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %113 = call i64 @atl1c_alloc_queues(%struct.atl1c_adapter* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %70
  %116 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %117 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %116, i32 0, i32 0
  %118 = call i32 @dev_err(i32* %117, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %2, align 4
  br label %137

121:                                              ; preds = %70
  %122 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %123 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %124 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %123, i32 0, i32 3
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = call i32 @atl1c_set_rxbufsize(%struct.atl1c_adapter* %122, %struct.TYPE_6__* %125)
  %127 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %128 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %127, i32 0, i32 2
  %129 = call i32 @atomic_set(i32* %128, i32 1)
  %130 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %131 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %130, i32 0, i32 1
  %132 = call i32 @spin_lock_init(i32* %131)
  %133 = load i32, i32* @__AT_DOWN, align 4
  %134 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %135 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %134, i32 0, i32 0
  %136 = call i32 @set_bit(i32 %133, i32* %135)
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %121, %115, %66
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @device_set_wakeup_enable(i32*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @atl1c_setup_mac_funcs(%struct.atl1c_hw*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @atl1c_patch_assign(%struct.atl1c_hw*) #1

declare dso_local i64 @atl1c_alloc_queues(%struct.atl1c_adapter*) #1

declare dso_local i32 @atl1c_set_rxbufsize(%struct.atl1c_adapter*, %struct.TYPE_6__*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
