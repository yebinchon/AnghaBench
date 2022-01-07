; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_check_link_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_check_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_adapter = type { i64, i64, i32, %struct.pci_dev*, %struct.net_device*, %struct.atl1c_hw }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.atl1c_hw = type { i32 }

@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"reset mac failed\0A\00", align 1
@SPEED_0 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"%s: %s NIC Link is Up<%d Mbps %s>\0A\00", align 1
@atl1c_driver_name = common dso_local global i32 0, align 4
@FULL_DUPLEX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"Full Duplex\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Half Duplex\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1c_adapter*)* @atl1c_check_link_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1c_check_link_status(%struct.atl1c_adapter* %0) #0 {
  %2 = alloca %struct.atl1c_adapter*, align 8
  %3 = alloca %struct.atl1c_hw*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.atl1c_adapter* %0, %struct.atl1c_adapter** %2, align 8
  %11 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %11, i32 0, i32 5
  store %struct.atl1c_hw* %12, %struct.atl1c_hw** %3, align 8
  %13 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %13, i32 0, i32 4
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %4, align 8
  %16 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %16, i32 0, i32 3
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %5, align 8
  %19 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %19, i32 0, i32 2
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %24 = load i32, i32* @MII_BMSR, align 4
  %25 = call i32 @atl1c_read_phy_reg(%struct.atl1c_hw* %23, i32 %24, i64* %10)
  %26 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %27 = load i32, i32* @MII_BMSR, align 4
  %28 = call i32 @atl1c_read_phy_reg(%struct.atl1c_hw* %26, i32 %27, i64* %10)
  %29 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %29, i32 0, i32 2
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @BMSR_LSTATUS, align 8
  %35 = and i64 %33, %34
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %1
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = call i32 @netif_carrier_off(%struct.net_device* %38)
  %40 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %41 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %43 = call i64 @atl1c_reset_mac(%struct.atl1c_hw* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %37
  %46 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %47 = call i64 @netif_msg_hw(%struct.atl1c_adapter* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 0
  %52 = call i32 @dev_warn(i32* %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %49, %45
  br label %54

54:                                               ; preds = %53, %37
  %55 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %56 = load i64, i64* @SPEED_0, align 8
  %57 = call i32 @atl1c_set_aspm(%struct.atl1c_hw* %55, i64 %56)
  %58 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %59 = load i64, i64* @SPEED_0, align 8
  %60 = call i32 @atl1c_post_phy_linkchg(%struct.atl1c_hw* %58, i64 %59)
  %61 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %62 = call i32 @atl1c_reset_dma_ring(%struct.atl1c_adapter* %61)
  %63 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %64 = call i32 @atl1c_configure(%struct.atl1c_adapter* %63)
  br label %139

65:                                               ; preds = %1
  %66 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %67 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %66, i32 0, i32 0
  store i32 0, i32* %67, align 4
  %68 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %69 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %68, i32 0, i32 2
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @spin_lock_irqsave(i32* %69, i64 %70)
  %72 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %73 = call i32 @atl1c_get_speed_and_duplex(%struct.atl1c_hw* %72, i64* %8, i64* %9)
  store i32 %73, i32* %6, align 4
  %74 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %75 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %74, i32 0, i32 2
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  %78 = load i32, i32* %6, align 4
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %65
  br label %139

82:                                               ; preds = %65
  %83 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %84 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %8, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %90 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %9, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %131

94:                                               ; preds = %88, %82
  %95 = load i64, i64* %8, align 8
  %96 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %97 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load i64, i64* %9, align 8
  %99 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %100 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  %101 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %102 = load i64, i64* %8, align 8
  %103 = call i32 @atl1c_set_aspm(%struct.atl1c_hw* %101, i64 %102)
  %104 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %105 = load i64, i64* %8, align 8
  %106 = call i32 @atl1c_post_phy_linkchg(%struct.atl1c_hw* %104, i64 %105)
  %107 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %108 = call i32 @atl1c_start_mac(%struct.atl1c_adapter* %107)
  %109 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %110 = call i64 @netif_msg_link(%struct.atl1c_adapter* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %130

112:                                              ; preds = %94
  %113 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %114 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %113, i32 0, i32 0
  %115 = load i32, i32* @atl1c_driver_name, align 4
  %116 = load %struct.net_device*, %struct.net_device** %4, align 8
  %117 = getelementptr inbounds %struct.net_device, %struct.net_device* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %120 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %123 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @FULL_DUPLEX, align 8
  %126 = icmp eq i64 %124, %125
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)
  %129 = call i32 @dev_info(i32* %114, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %115, i32 %118, i64 %121, i8* %128)
  br label %130

130:                                              ; preds = %112, %94
  br label %131

131:                                              ; preds = %130, %88
  %132 = load %struct.net_device*, %struct.net_device** %4, align 8
  %133 = call i32 @netif_carrier_ok(%struct.net_device* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %131
  %136 = load %struct.net_device*, %struct.net_device** %4, align 8
  %137 = call i32 @netif_carrier_on(%struct.net_device* %136)
  br label %138

138:                                              ; preds = %135, %131
  br label %139

139:                                              ; preds = %81, %138, %54
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atl1c_read_phy_reg(%struct.atl1c_hw*, i32, i64*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i64 @atl1c_reset_mac(%struct.atl1c_hw*) #1

declare dso_local i64 @netif_msg_hw(%struct.atl1c_adapter*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @atl1c_set_aspm(%struct.atl1c_hw*, i64) #1

declare dso_local i32 @atl1c_post_phy_linkchg(%struct.atl1c_hw*, i64) #1

declare dso_local i32 @atl1c_reset_dma_ring(%struct.atl1c_adapter*) #1

declare dso_local i32 @atl1c_configure(%struct.atl1c_adapter*) #1

declare dso_local i32 @atl1c_get_speed_and_duplex(%struct.atl1c_hw*, i64*, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atl1c_start_mac(%struct.atl1c_adapter*) #1

declare dso_local i64 @netif_msg_link(%struct.atl1c_adapter*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i64, i8*) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
