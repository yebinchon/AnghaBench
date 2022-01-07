; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.device }
%struct.device = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.nicpf = type { i32, %struct.TYPE_2__*, i32, i32, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to enable PCI device\0A\00", align 1
@DRV_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"PCI request regions failed 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Unable to get usable DMA configuration\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Unable to get 48-bit DMA for consistent allocations\0A\00", align 1
@PCI_CFG_REG_BAR_NUM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"Cannot map config register space, aborting\0A\00", align 1
@MAX_LMAC_PER_BGX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @nic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nic_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.nicpf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = call i32 @BUILD_BUG_ON(i32 0)
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @devm_kzalloc(%struct.device* %13, i32 32, i32 %14)
  %16 = bitcast i8* %15 to %struct.nicpf*
  store %struct.nicpf* %16, %struct.nicpf** %7, align 8
  %17 = load %struct.nicpf*, %struct.nicpf** %7, align 8
  %18 = icmp ne %struct.nicpf* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %153

22:                                               ; preds = %2
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @devm_kzalloc(%struct.device* %23, i32 4, i32 %24)
  %26 = bitcast i8* %25 to %struct.TYPE_2__*
  %27 = load %struct.nicpf*, %struct.nicpf** %7, align 8
  %28 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %27, i32 0, i32 1
  store %struct.TYPE_2__* %26, %struct.TYPE_2__** %28, align 8
  %29 = load %struct.nicpf*, %struct.nicpf** %7, align 8
  %30 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = icmp ne %struct.TYPE_2__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %153

36:                                               ; preds = %22
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = load %struct.nicpf*, %struct.nicpf** %7, align 8
  %39 = call i32 @pci_set_drvdata(%struct.pci_dev* %37, %struct.nicpf* %38)
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = load %struct.nicpf*, %struct.nicpf** %7, align 8
  %42 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %41, i32 0, i32 4
  store %struct.pci_dev* %40, %struct.pci_dev** %42, align 8
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = call i32 @pci_enable_device(%struct.pci_dev* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %36
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = call i32 @pci_set_drvdata(%struct.pci_dev* %50, %struct.nicpf* null)
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %153

53:                                               ; preds = %36
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = load i32, i32* @DRV_NAME, align 4
  %56 = call i32 @pci_request_regions(%struct.pci_dev* %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.device*, %struct.device** %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %147

63:                                               ; preds = %53
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = call i32 @DMA_BIT_MASK(i32 48)
  %66 = call i32 @pci_set_dma_mask(%struct.pci_dev* %64, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.device*, %struct.device** %6, align 8
  %71 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %70, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %144

72:                                               ; preds = %63
  %73 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %74 = call i32 @DMA_BIT_MASK(i32 48)
  %75 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %73, i32 %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load %struct.device*, %struct.device** %6, align 8
  %80 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %79, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  br label %144

81:                                               ; preds = %72
  %82 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %83 = load i32, i32* @PCI_CFG_REG_BAR_NUM, align 4
  %84 = call i32 @pcim_iomap(%struct.pci_dev* %82, i32 %83, i32 0)
  %85 = load %struct.nicpf*, %struct.nicpf** %7, align 8
  %86 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.nicpf*, %struct.nicpf** %7, align 8
  %88 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %81
  %92 = load %struct.device*, %struct.device** %6, align 8
  %93 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %92, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %9, align 4
  br label %144

96:                                               ; preds = %81
  %97 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %98 = call i32 @nic_get_node_id(%struct.pci_dev* %97)
  %99 = load %struct.nicpf*, %struct.nicpf** %7, align 8
  %100 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load %struct.nicpf*, %struct.nicpf** %7, align 8
  %102 = call i32 @nic_get_hw_info(%struct.nicpf* %101)
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %9, align 4
  %105 = load %struct.nicpf*, %struct.nicpf** %7, align 8
  %106 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %105, i32 0, i32 1
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @MAX_LMAC_PER_BGX, align 4
  %111 = mul nsw i32 %109, %110
  store i32 %111, i32* %8, align 4
  %112 = load %struct.device*, %struct.device** %6, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @GFP_KERNEL, align 4
  %115 = call i32 @devm_kmalloc_array(%struct.device* %112, i32 %113, i32 4, i32 %114)
  %116 = load %struct.nicpf*, %struct.nicpf** %7, align 8
  %117 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.nicpf*, %struct.nicpf** %7, align 8
  %119 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %96
  br label %144

123:                                              ; preds = %96
  %124 = load %struct.nicpf*, %struct.nicpf** %7, align 8
  %125 = call i32 @nic_init_hw(%struct.nicpf* %124)
  %126 = load %struct.nicpf*, %struct.nicpf** %7, align 8
  %127 = call i32 @nic_set_lmac_vf_mapping(%struct.nicpf* %126)
  %128 = load %struct.nicpf*, %struct.nicpf** %7, align 8
  %129 = call i32 @nic_register_interrupts(%struct.nicpf* %128)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  br label %144

133:                                              ; preds = %123
  %134 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %135 = load %struct.nicpf*, %struct.nicpf** %7, align 8
  %136 = call i32 @nic_sriov_init(%struct.pci_dev* %134, %struct.nicpf* %135)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  br label %141

140:                                              ; preds = %133
  store i32 0, i32* %3, align 4
  br label %153

141:                                              ; preds = %139
  %142 = load %struct.nicpf*, %struct.nicpf** %7, align 8
  %143 = call i32 @nic_unregister_interrupts(%struct.nicpf* %142)
  br label %144

144:                                              ; preds = %141, %132, %122, %91, %78, %69
  %145 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %146 = call i32 @pci_release_regions(%struct.pci_dev* %145)
  br label %147

147:                                              ; preds = %144, %59
  %148 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %149 = call i32 @pci_disable_device(%struct.pci_dev* %148)
  %150 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %151 = call i32 @pci_set_drvdata(%struct.pci_dev* %150, %struct.nicpf* null)
  %152 = load i32, i32* %9, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %147, %140, %47, %33, %19
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.nicpf*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @pcim_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @nic_get_node_id(%struct.pci_dev*) #1

declare dso_local i32 @nic_get_hw_info(%struct.nicpf*) #1

declare dso_local i32 @devm_kmalloc_array(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @nic_init_hw(%struct.nicpf*) #1

declare dso_local i32 @nic_set_lmac_vf_mapping(%struct.nicpf*) #1

declare dso_local i32 @nic_register_interrupts(%struct.nicpf*) #1

declare dso_local i32 @nic_sriov_init(%struct.pci_dev*, %struct.nicpf*) #1

declare dso_local i32 @nic_unregister_interrupts(%struct.nicpf*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
