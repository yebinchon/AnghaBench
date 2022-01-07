; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_pci_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_pci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { i64, i32, i32 }
%struct.pci_dev = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Missing PCIe capabilities\0A\00", align 1
@et131x_pci_init.acknak = internal constant [2 x i32] [i32 118, i32 208], align 4
@et131x_pci_init.replay = internal constant [2 x i32] [i32 480, i32 749], align 4
@ET1310_PCI_ACK_NACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Could not write PCI config space for ACK/NAK\0A\00", align 1
@ET1310_PCI_REPLAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Could not write PCI config space for Replay Timer\0A\00", align 1
@ET1310_PCI_L0L1LATENCY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"Could not write PCI config space for Latency Timers\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"Couldn't change PCI config space for Max read size\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@ET1310_PCI_MAC_ADDRESS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [49 x i8] c"Could not read PCI config space for MAC address\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.et131x_adapter*, %struct.pci_dev*)* @et131x_pci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et131x_pci_init(%struct.et131x_adapter* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.et131x_adapter*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %9 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %10 = call i32 @et131x_init_eeprom(%struct.et131x_adapter* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %115

14:                                               ; preds = %2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %16 = call i32 @pci_is_pcie(%struct.pci_dev* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 1
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %117

22:                                               ; preds = %14
  %23 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %55

28:                                               ; preds = %22
  %29 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %30 = load i32, i32* @ET1310_PCI_ACK_NACK, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* @et131x_pci_init.acknak, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @pci_write_config_word(%struct.pci_dev* %29, i32 %30, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 1
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %117

41:                                               ; preds = %28
  %42 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %43 = load i32, i32* @ET1310_PCI_REPLAY, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* @et131x_pci_init.replay, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @pci_write_config_word(%struct.pci_dev* %42, i32 %43, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 1
  %53 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %117

54:                                               ; preds = %41
  br label %55

55:                                               ; preds = %54, %22
  %56 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %57 = load i32, i32* @ET1310_PCI_L0L1LATENCY, align 4
  %58 = call i64 @pci_write_config_byte(%struct.pci_dev* %56, i32 %57, i32 17)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 1
  %63 = call i32 @dev_err(i32* %62, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  br label %117

64:                                               ; preds = %55
  %65 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %66 = call i64 @pcie_set_readrq(%struct.pci_dev* %65, i32 2048)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 1
  %71 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  br label %117

72:                                               ; preds = %64
  %73 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %74 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %79 = call i32 @et131x_hwaddr_init(%struct.et131x_adapter* %78)
  store i32 0, i32* %3, align 4
  br label %120

80:                                               ; preds = %72
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %104, %80
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @ETH_ALEN, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %107

85:                                               ; preds = %81
  %86 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %87 = load i64, i64* @ET1310_PCI_MAC_ADDRESS, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %87, %89
  %91 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %92 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %93, %95
  %97 = call i64 @pci_read_config_byte(%struct.pci_dev* %86, i64 %90, i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %85
  %100 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %101 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %100, i32 0, i32 1
  %102 = call i32 @dev_err(i32* %101, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  br label %117

103:                                              ; preds = %85
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %81

107:                                              ; preds = %81
  %108 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %109 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %112 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @ether_addr_copy(i32 %110, i64 %113)
  br label %115

115:                                              ; preds = %117, %107, %13
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %3, align 4
  br label %120

117:                                              ; preds = %99, %68, %60, %50, %37, %18
  %118 = load i32, i32* @EIO, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %8, align 4
  br label %115

120:                                              ; preds = %115, %77
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @et131x_init_eeprom(%struct.et131x_adapter*) #1

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i64 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i64 @pcie_set_readrq(%struct.pci_dev*, i32) #1

declare dso_local i32 @et131x_hwaddr_init(%struct.et131x_adapter*) #1

declare dso_local i64 @pci_read_config_byte(%struct.pci_dev*, i64, i64) #1

declare dso_local i32 @ether_addr_copy(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
