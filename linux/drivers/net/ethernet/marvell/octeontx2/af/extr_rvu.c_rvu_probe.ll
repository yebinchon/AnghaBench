; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.device }
%struct.device = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.rvu = type { %struct.rvu*, i32, i32, i8*, i8*, %struct.device*, %struct.pci_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to enable PCI device\0A\00", align 1
@DRV_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"PCI request regions failed 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Unable to set DMA mask\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Unable to set consistent DMA mask\0A\00", align 1
@PCI_AF_REG_BAR_NUM = common dso_local global i32 0, align 4
@PCI_PF_REG_BAR_NUM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"Unable to map admin function CSRs, aborting\0A\00", align 1
@TYPE_AFPF = common dso_local global i32 0, align 4
@rvu_afpf_mbox_handler = common dso_local global i32 0, align 4
@rvu_afpf_mbox_up_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @rvu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvu_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.rvu*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @devm_kzalloc(%struct.device* %11, i32 48, i32 %12)
  %14 = bitcast i8* %13 to %struct.rvu*
  store %struct.rvu* %14, %struct.rvu** %7, align 8
  %15 = load %struct.rvu*, %struct.rvu** %7, align 8
  %16 = icmp ne %struct.rvu* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %191

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @devm_kzalloc(%struct.device* %21, i32 4, i32 %22)
  %24 = bitcast i8* %23 to %struct.rvu*
  %25 = load %struct.rvu*, %struct.rvu** %7, align 8
  %26 = getelementptr inbounds %struct.rvu, %struct.rvu* %25, i32 0, i32 0
  store %struct.rvu* %24, %struct.rvu** %26, align 8
  %27 = load %struct.rvu*, %struct.rvu** %7, align 8
  %28 = getelementptr inbounds %struct.rvu, %struct.rvu* %27, i32 0, i32 0
  %29 = load %struct.rvu*, %struct.rvu** %28, align 8
  %30 = icmp ne %struct.rvu* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %20
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = load %struct.rvu*, %struct.rvu** %7, align 8
  %34 = call i32 @devm_kfree(%struct.device* %32, %struct.rvu* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %191

37:                                               ; preds = %20
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = load %struct.rvu*, %struct.rvu** %7, align 8
  %40 = call i32 @pci_set_drvdata(%struct.pci_dev* %38, %struct.rvu* %39)
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = load %struct.rvu*, %struct.rvu** %7, align 8
  %43 = getelementptr inbounds %struct.rvu, %struct.rvu* %42, i32 0, i32 6
  store %struct.pci_dev* %41, %struct.pci_dev** %43, align 8
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  %46 = load %struct.rvu*, %struct.rvu** %7, align 8
  %47 = getelementptr inbounds %struct.rvu, %struct.rvu* %46, i32 0, i32 5
  store %struct.device* %45, %struct.device** %47, align 8
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = call i32 @pci_enable_device(%struct.pci_dev* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %37
  %53 = load %struct.device*, %struct.device** %6, align 8
  %54 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %178

55:                                               ; preds = %37
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = load i32, i32* @DRV_NAME, align 4
  %58 = call i32 @pci_request_regions(%struct.pci_dev* %56, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.device*, %struct.device** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %175

65:                                               ; preds = %55
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = call i32 @DMA_BIT_MASK(i32 48)
  %68 = call i32 @pci_set_dma_mask(%struct.pci_dev* %66, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load %struct.device*, %struct.device** %6, align 8
  %73 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %172

74:                                               ; preds = %65
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = call i32 @DMA_BIT_MASK(i32 48)
  %77 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %75, i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load %struct.device*, %struct.device** %6, align 8
  %82 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %172

83:                                               ; preds = %74
  %84 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %85 = load i32, i32* @PCI_AF_REG_BAR_NUM, align 4
  %86 = call i8* @pcim_iomap(%struct.pci_dev* %84, i32 %85, i32 0)
  %87 = load %struct.rvu*, %struct.rvu** %7, align 8
  %88 = getelementptr inbounds %struct.rvu, %struct.rvu* %87, i32 0, i32 4
  store i8* %86, i8** %88, align 8
  %89 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %90 = load i32, i32* @PCI_PF_REG_BAR_NUM, align 4
  %91 = call i8* @pcim_iomap(%struct.pci_dev* %89, i32 %90, i32 0)
  %92 = load %struct.rvu*, %struct.rvu** %7, align 8
  %93 = getelementptr inbounds %struct.rvu, %struct.rvu* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  %94 = load %struct.rvu*, %struct.rvu** %7, align 8
  %95 = getelementptr inbounds %struct.rvu, %struct.rvu* %94, i32 0, i32 4
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %83
  %99 = load %struct.rvu*, %struct.rvu** %7, align 8
  %100 = getelementptr inbounds %struct.rvu, %struct.rvu* %99, i32 0, i32 3
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %108, label %103

103:                                              ; preds = %98, %83
  %104 = load %struct.device*, %struct.device** %6, align 8
  %105 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %104, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %8, align 4
  br label %172

108:                                              ; preds = %98
  %109 = load %struct.rvu*, %struct.rvu** %7, align 8
  %110 = call i32 @rvu_update_module_params(%struct.rvu* %109)
  %111 = load %struct.rvu*, %struct.rvu** %7, align 8
  %112 = call i32 @rvu_check_block_implemented(%struct.rvu* %111)
  %113 = load %struct.rvu*, %struct.rvu** %7, align 8
  %114 = call i32 @rvu_reset_all_blocks(%struct.rvu* %113)
  %115 = load %struct.rvu*, %struct.rvu** %7, align 8
  %116 = call i32 @rvu_setup_hw_resources(%struct.rvu* %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %108
  br label %172

120:                                              ; preds = %108
  %121 = load %struct.rvu*, %struct.rvu** %7, align 8
  %122 = load %struct.rvu*, %struct.rvu** %7, align 8
  %123 = getelementptr inbounds %struct.rvu, %struct.rvu* %122, i32 0, i32 1
  %124 = load i32, i32* @TYPE_AFPF, align 4
  %125 = load %struct.rvu*, %struct.rvu** %7, align 8
  %126 = getelementptr inbounds %struct.rvu, %struct.rvu* %125, i32 0, i32 0
  %127 = load %struct.rvu*, %struct.rvu** %126, align 8
  %128 = getelementptr inbounds %struct.rvu, %struct.rvu* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @rvu_afpf_mbox_handler, align 4
  %131 = load i32, i32* @rvu_afpf_mbox_up_handler, align 4
  %132 = call i32 @rvu_mbox_init(%struct.rvu* %121, i32* %123, i32 %124, i32 %129, i32 %130, i32 %131)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %120
  br label %165

136:                                              ; preds = %120
  %137 = load %struct.rvu*, %struct.rvu** %7, align 8
  %138 = call i32 @rvu_flr_init(%struct.rvu* %137)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %161

142:                                              ; preds = %136
  %143 = load %struct.rvu*, %struct.rvu** %7, align 8
  %144 = call i32 @rvu_register_interrupts(%struct.rvu* %143)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  br label %158

148:                                              ; preds = %142
  %149 = load %struct.rvu*, %struct.rvu** %7, align 8
  %150 = call i32 @rvu_enable_sriov(%struct.rvu* %149)
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %155

154:                                              ; preds = %148
  store i32 0, i32* %3, align 4
  br label %191

155:                                              ; preds = %153
  %156 = load %struct.rvu*, %struct.rvu** %7, align 8
  %157 = call i32 @rvu_unregister_interrupts(%struct.rvu* %156)
  br label %158

158:                                              ; preds = %155, %147
  %159 = load %struct.rvu*, %struct.rvu** %7, align 8
  %160 = call i32 @rvu_flr_wq_destroy(%struct.rvu* %159)
  br label %161

161:                                              ; preds = %158, %141
  %162 = load %struct.rvu*, %struct.rvu** %7, align 8
  %163 = getelementptr inbounds %struct.rvu, %struct.rvu* %162, i32 0, i32 1
  %164 = call i32 @rvu_mbox_destroy(i32* %163)
  br label %165

165:                                              ; preds = %161, %135
  %166 = load %struct.rvu*, %struct.rvu** %7, align 8
  %167 = call i32 @rvu_cgx_exit(%struct.rvu* %166)
  %168 = load %struct.rvu*, %struct.rvu** %7, align 8
  %169 = call i32 @rvu_reset_all_blocks(%struct.rvu* %168)
  %170 = load %struct.rvu*, %struct.rvu** %7, align 8
  %171 = call i32 @rvu_free_hw_resources(%struct.rvu* %170)
  br label %172

172:                                              ; preds = %165, %119, %103, %80, %71
  %173 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %174 = call i32 @pci_release_regions(%struct.pci_dev* %173)
  br label %175

175:                                              ; preds = %172, %61
  %176 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %177 = call i32 @pci_disable_device(%struct.pci_dev* %176)
  br label %178

178:                                              ; preds = %175, %52
  %179 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %180 = call i32 @pci_set_drvdata(%struct.pci_dev* %179, %struct.rvu* null)
  %181 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %182 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %181, i32 0, i32 0
  %183 = load %struct.rvu*, %struct.rvu** %7, align 8
  %184 = getelementptr inbounds %struct.rvu, %struct.rvu* %183, i32 0, i32 0
  %185 = load %struct.rvu*, %struct.rvu** %184, align 8
  %186 = call i32 @devm_kfree(%struct.device* %182, %struct.rvu* %185)
  %187 = load %struct.device*, %struct.device** %6, align 8
  %188 = load %struct.rvu*, %struct.rvu** %7, align 8
  %189 = call i32 @devm_kfree(%struct.device* %187, %struct.rvu* %188)
  %190 = load i32, i32* %8, align 4
  store i32 %190, i32* %3, align 4
  br label %191

191:                                              ; preds = %178, %154, %31, %17
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.rvu*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.rvu*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i8* @pcim_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @rvu_update_module_params(%struct.rvu*) #1

declare dso_local i32 @rvu_check_block_implemented(%struct.rvu*) #1

declare dso_local i32 @rvu_reset_all_blocks(%struct.rvu*) #1

declare dso_local i32 @rvu_setup_hw_resources(%struct.rvu*) #1

declare dso_local i32 @rvu_mbox_init(%struct.rvu*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @rvu_flr_init(%struct.rvu*) #1

declare dso_local i32 @rvu_register_interrupts(%struct.rvu*) #1

declare dso_local i32 @rvu_enable_sriov(%struct.rvu*) #1

declare dso_local i32 @rvu_unregister_interrupts(%struct.rvu*) #1

declare dso_local i32 @rvu_flr_wq_destroy(%struct.rvu*) #1

declare dso_local i32 @rvu_mbox_destroy(i32*) #1

declare dso_local i32 @rvu_cgx_exit(%struct.rvu*) #1

declare dso_local i32 @rvu_free_hw_resources(%struct.rvu*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
