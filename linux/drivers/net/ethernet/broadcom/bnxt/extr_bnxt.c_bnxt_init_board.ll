; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_init_board.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_init_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.bnxt = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, %struct.pci_dev*, %struct.net_device* }

@.str = private unnamed_addr constant [36 x i8] c"Cannot enable PCI device, aborting\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Cannot find PCI device base address, aborting\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DRV_MODULE_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Cannot obtain PCI resources, aborting\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"System does not support DMA, aborting\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Cannot map device registers, aborting\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"Cannot map doorbell registers, aborting\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Cannot map bar4 registers, aborting\0A\00", align 1
@bnxt_sp_task = common dso_local global i32 0, align 4
@bnxt_fw_reset_task = common dso_local global i32 0, align 4
@BNXT_DEFAULT_RX_RING_SIZE = common dso_local global i32 0, align 4
@BNXT_DEFAULT_TX_RING_SIZE = common dso_local global i32 0, align 4
@bnxt_timer = common dso_local global i32 0, align 4
@BNXT_TIMER_INTERVAL = common dso_local global i32 0, align 4
@BNXT_STATE_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.net_device*)* @bnxt_init_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_init_board(%struct.pci_dev* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnxt*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.bnxt* @netdev_priv(%struct.net_device* %8)
  store %struct.bnxt* %9, %struct.bnxt** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = call i32 @SET_NETDEV_DEV(%struct.net_device* %10, i32* %12)
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = call i32 @pci_enable_device(%struct.pci_dev* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %155

22:                                               ; preds = %2
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = call i32 @pci_resource_flags(%struct.pci_dev* %23, i32 0)
  %25 = load i32, i32* @IORESOURCE_MEM, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %152

34:                                               ; preds = %22
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = load i32, i32* @DRV_MODULE_NAME, align 4
  %37 = call i32 @pci_request_regions(%struct.pci_dev* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %152

44:                                               ; preds = %34
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 0
  %47 = call i32 @DMA_BIT_MASK(i32 64)
  %48 = call i64 @dma_set_mask_and_coherent(i32* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %44
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 0
  %53 = call i32 @DMA_BIT_MASK(i32 32)
  %54 = call i64 @dma_set_mask_and_coherent(i32* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 0
  %59 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %152

60:                                               ; preds = %50, %44
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = call i32 @pci_set_master(%struct.pci_dev* %61)
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  %64 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %65 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %64, i32 0, i32 13
  store %struct.net_device* %63, %struct.net_device** %65, align 8
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %68 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %67, i32 0, i32 12
  store %struct.pci_dev* %66, %struct.pci_dev** %68, align 8
  %69 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %70 = call i8* @pci_ioremap_bar(%struct.pci_dev* %69, i32 0)
  %71 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %72 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %71, i32 0, i32 11
  store i8* %70, i8** %72, align 8
  %73 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %74 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %73, i32 0, i32 11
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %60
  %78 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %79 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %78, i32 0, i32 0
  %80 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %146

83:                                               ; preds = %60
  %84 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %85 = call i8* @pci_ioremap_bar(%struct.pci_dev* %84, i32 2)
  %86 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %87 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %86, i32 0, i32 10
  store i8* %85, i8** %87, align 8
  %88 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %89 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %88, i32 0, i32 10
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %98, label %92

92:                                               ; preds = %83
  %93 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %94 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %93, i32 0, i32 0
  %95 = call i32 @dev_err(i32* %94, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %6, align 4
  br label %146

98:                                               ; preds = %83
  %99 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %100 = call i8* @pci_ioremap_bar(%struct.pci_dev* %99, i32 4)
  %101 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %102 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %101, i32 0, i32 9
  store i8* %100, i8** %102, align 8
  %103 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %104 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %103, i32 0, i32 9
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %113, label %107

107:                                              ; preds = %98
  %108 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %109 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %108, i32 0, i32 0
  %110 = call i32 @dev_err(i32* %109, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %6, align 4
  br label %146

113:                                              ; preds = %98
  %114 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %115 = call i32 @pci_enable_pcie_error_reporting(%struct.pci_dev* %114)
  %116 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %117 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %116, i32 0, i32 8
  %118 = load i32, i32* @bnxt_sp_task, align 4
  %119 = call i32 @INIT_WORK(i32* %117, i32 %118)
  %120 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %121 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %120, i32 0, i32 7
  %122 = load i32, i32* @bnxt_fw_reset_task, align 4
  %123 = call i32 @INIT_DELAYED_WORK(i32* %121, i32 %122)
  %124 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %125 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %124, i32 0, i32 6
  %126 = call i32 @spin_lock_init(i32* %125)
  %127 = load i32, i32* @BNXT_DEFAULT_RX_RING_SIZE, align 4
  %128 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %129 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* @BNXT_DEFAULT_TX_RING_SIZE, align 4
  %131 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %132 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 4
  %133 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %134 = call i32 @bnxt_init_dflt_coal(%struct.bnxt* %133)
  %135 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %136 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %135, i32 0, i32 2
  %137 = load i32, i32* @bnxt_timer, align 4
  %138 = call i32 @timer_setup(i32* %136, i32 %137, i32 0)
  %139 = load i32, i32* @BNXT_TIMER_INTERVAL, align 4
  %140 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %141 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* @BNXT_STATE_OPEN, align 4
  %143 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %144 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %143, i32 0, i32 0
  %145 = call i32 @clear_bit(i32 %142, i32* %144)
  store i32 0, i32* %3, align 4
  br label %157

146:                                              ; preds = %107, %92, %77
  %147 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %148 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %149 = call i32 @bnxt_unmap_bars(%struct.bnxt* %147, %struct.pci_dev* %148)
  %150 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %151 = call i32 @pci_release_regions(%struct.pci_dev* %150)
  br label %152

152:                                              ; preds = %146, %56, %40, %28
  %153 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %154 = call i32 @pci_disable_device(%struct.pci_dev* %153)
  br label %155

155:                                              ; preds = %152, %18
  %156 = load i32, i32* %6, align 4
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %155, %113
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i64 @dma_set_mask_and_coherent(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i8* @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_enable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @bnxt_init_dflt_coal(%struct.bnxt*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @bnxt_unmap_bars(%struct.bnxt*, %struct.pci_dev*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
