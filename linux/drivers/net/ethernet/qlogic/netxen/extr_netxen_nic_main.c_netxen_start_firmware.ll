; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_start_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_start_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i64, %struct.TYPE_2__, %struct.pci_dev* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"error in init HW init sequence\0A\00", align 1
@CRB_CMDPEG_STATE = common dso_local global i32 0, align 4
@CRB_DMA_SHIFT = common dso_local global i32 0, align 4
@NETXEN_PEG_HALT_STATUS1 = common dso_local global i32 0, align 4
@NETXEN_PEG_HALT_STATUS2 = common dso_local global i32 0, align 4
@NETXEN_NIC_XGBE = common dso_local global i64 0, align 8
@NETXEN_MAC_ADDR_CNTL_REG = common dso_local global i32 0, align 4
@_NETXEN_NIC_LINUX_MAJOR = common dso_local global i32 0, align 4
@_NETXEN_NIC_LINUX_MINOR = common dso_local global i32 0, align 4
@_NETXEN_NIC_LINUX_SUBVERSION = common dso_local global i32 0, align 4
@CRB_DRIVER_VERSION = common dso_local global i32 0, align 4
@NETXEN_NIC_PEG_TUNE = common dso_local global i32 0, align 4
@NX_CRB_DEV_STATE = common dso_local global i32 0, align 4
@NX_DEV_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netxen_adapter*)* @netxen_start_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_start_firmware(%struct.netxen_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netxen_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %3, align 8
  %8 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %8, i32 0, i32 2
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %7, align 8
  %11 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %12 = call i32 @nx_set_dma_mask(%struct.netxen_adapter* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %166

17:                                               ; preds = %1
  %18 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %19 = call i32 @netxen_can_start_firmware(%struct.netxen_adapter* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %166

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  br label %142

28:                                               ; preds = %24
  %29 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %30 = call i32 @NETXEN_CAM_RAM(i32 508)
  %31 = call i32 @NXRD32(%struct.netxen_adapter* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @netxen_check_hw_init(%struct.netxen_adapter* %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %166

42:                                               ; preds = %28
  %43 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %44 = call i32 @netxen_request_firmware(%struct.netxen_adapter* %43)
  %45 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %46 = call i32 @netxen_need_fw_reset(%struct.netxen_adapter* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %162

50:                                               ; preds = %42
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %131

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 1431655765
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %59 = load i32, i32* @CRB_CMDPEG_STATE, align 4
  %60 = call i32 @NXWR32(%struct.netxen_adapter* %58, i32 %59, i32 0)
  %61 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %62 = call i32 @netxen_pinit_from_rom(%struct.netxen_adapter* %61)
  %63 = call i32 @msleep(i32 1)
  br label %64

64:                                               ; preds = %57, %54
  %65 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %66 = load i32, i32* @CRB_DMA_SHIFT, align 4
  %67 = call i32 @NXWR32(%struct.netxen_adapter* %65, i32 %66, i32 1431655765)
  %68 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %69 = load i32, i32* @NETXEN_PEG_HALT_STATUS1, align 4
  %70 = call i32 @NXWR32(%struct.netxen_adapter* %68, i32 %69, i32 0)
  %71 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %72 = load i32, i32* @NETXEN_PEG_HALT_STATUS2, align 4
  %73 = call i32 @NXWR32(%struct.netxen_adapter* %71, i32 %72, i32 0)
  %74 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %75 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @NX_IS_REVISION_P3(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %64
  %81 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %82 = call i32 @netxen_set_port_mode(%struct.netxen_adapter* %81)
  br label %83

83:                                               ; preds = %80, %64
  %84 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %85 = call i32 @netxen_load_firmware(%struct.netxen_adapter* %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %162

89:                                               ; preds = %83
  %90 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %91 = call i32 @netxen_release_firmware(%struct.netxen_adapter* %90)
  %92 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %93 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @NX_IS_REVISION_P2(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %89
  store i32 30292, i32* %4, align 4
  %99 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %100 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @NETXEN_NIC_XGBE, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load i32, i32* %4, align 4
  %107 = or i32 %106, 251658240
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %105, %98
  %109 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %110 = load i32, i32* @NETXEN_MAC_ADDR_CNTL_REG, align 4
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @NXWR32(%struct.netxen_adapter* %109, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %108, %89
  %114 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %115 = call i32 @netxen_init_dummy_dma(%struct.netxen_adapter* %114)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %162

119:                                              ; preds = %113
  %120 = load i32, i32* @_NETXEN_NIC_LINUX_MAJOR, align 4
  %121 = shl i32 %120, 16
  %122 = load i32, i32* @_NETXEN_NIC_LINUX_MINOR, align 4
  %123 = shl i32 %122, 8
  %124 = or i32 %121, %123
  %125 = load i32, i32* @_NETXEN_NIC_LINUX_SUBVERSION, align 4
  %126 = or i32 %124, %125
  store i32 %126, i32* %4, align 4
  %127 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %128 = load i32, i32* @CRB_DRIVER_VERSION, align 4
  %129 = load i32, i32* %4, align 4
  %130 = call i32 @NXWR32(%struct.netxen_adapter* %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %119, %53
  %132 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %133 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i64 @NX_IS_REVISION_P3(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %140 = call i32 @netxen_pcie_strap_init(%struct.netxen_adapter* %139)
  br label %141

141:                                              ; preds = %138, %131
  br label %142

142:                                              ; preds = %141, %27
  %143 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %144 = load i32, i32* @NETXEN_NIC_PEG_TUNE, align 4
  %145 = call i32 @netxen_phantom_init(%struct.netxen_adapter* %143, i32 %144)
  store i32 %145, i32* %5, align 4
  %146 = load i32, i32* %5, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %150 = call i32 @netxen_free_dummy_dma(%struct.netxen_adapter* %149)
  br label %162

151:                                              ; preds = %142
  %152 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %153 = load i32, i32* @NX_CRB_DEV_STATE, align 4
  %154 = load i32, i32* @NX_DEV_READY, align 4
  %155 = call i32 @NXWR32(%struct.netxen_adapter* %152, i32 %153, i32 %154)
  %156 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %157 = call i32 @nx_update_dma_mask(%struct.netxen_adapter* %156)
  %158 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %159 = call i32 @netxen_check_options(%struct.netxen_adapter* %158)
  %160 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %161 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %160, i32 0, i32 0
  store i64 0, i64* %161, align 8
  br label %162

162:                                              ; preds = %151, %148, %118, %88, %49
  %163 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %164 = call i32 @netxen_release_firmware(%struct.netxen_adapter* %163)
  %165 = load i32, i32* %5, align 4
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %162, %37, %22, %15
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i32 @nx_set_dma_mask(%struct.netxen_adapter*) #1

declare dso_local i32 @netxen_can_start_firmware(%struct.netxen_adapter*) #1

declare dso_local i32 @NXRD32(%struct.netxen_adapter*, i32) #1

declare dso_local i32 @NETXEN_CAM_RAM(i32) #1

declare dso_local i32 @netxen_check_hw_init(%struct.netxen_adapter*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @netxen_request_firmware(%struct.netxen_adapter*) #1

declare dso_local i32 @netxen_need_fw_reset(%struct.netxen_adapter*) #1

declare dso_local i32 @NXWR32(%struct.netxen_adapter*, i32, i32) #1

declare dso_local i32 @netxen_pinit_from_rom(%struct.netxen_adapter*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @NX_IS_REVISION_P3(i32) #1

declare dso_local i32 @netxen_set_port_mode(%struct.netxen_adapter*) #1

declare dso_local i32 @netxen_load_firmware(%struct.netxen_adapter*) #1

declare dso_local i32 @netxen_release_firmware(%struct.netxen_adapter*) #1

declare dso_local i64 @NX_IS_REVISION_P2(i32) #1

declare dso_local i32 @netxen_init_dummy_dma(%struct.netxen_adapter*) #1

declare dso_local i32 @netxen_pcie_strap_init(%struct.netxen_adapter*) #1

declare dso_local i32 @netxen_phantom_init(%struct.netxen_adapter*, i32) #1

declare dso_local i32 @netxen_free_dummy_dma(%struct.netxen_adapter*) #1

declare dso_local i32 @nx_update_dma_mask(%struct.netxen_adapter*) #1

declare dso_local i32 @netxen_check_options(%struct.netxen_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
