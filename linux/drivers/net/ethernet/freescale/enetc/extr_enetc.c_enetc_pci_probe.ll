; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.enetc_si = type { i32, %struct.enetc_hw, %struct.pci_dev* }
%struct.enetc_hw = type { i64, i64, i64 }

@.str = private unnamed_addr constant [22 x i8] c"device enable failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"DMA configuration failed: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"pci_request_regions failed err=%d\0A\00", align 1
@ENETC_SI_ALIGN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENETC_BAR_REGS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"ioremap() failed\0A\00", align 1
@ENETC_PORT_BASE = common dso_local global i32 0, align 4
@ENETC_GLOBAL_BASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @enetc_pci_probe(%struct.pci_dev* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.enetc_si*, align 8
  %9 = alloca %struct.enetc_si*, align 8
  %10 = alloca %struct.enetc_hw*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %15 = call i32 @pcie_flr(%struct.pci_dev* %14)
  %16 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %17 = call i32 @pci_enable_device_mem(%struct.pci_dev* %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 0
  %23 = call i32 (i32*, i8*, ...) @dev_err(i32* %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %4, align 4
  br label %165

25:                                               ; preds = %3
  %26 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  %28 = call i32 @DMA_BIT_MASK(i32 64)
  %29 = call i32 @dma_set_mask_and_coherent(i32* %27, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %25
  %33 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = call i32 @DMA_BIT_MASK(i32 32)
  %36 = call i32 @dma_set_mask_and_coherent(i32* %34, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %12, align 4
  %43 = call i32 (i32*, i8*, ...) @dev_err(i32* %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %161

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %25
  %46 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @pci_request_mem_regions(%struct.pci_dev* %46, i8* %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %12, align 4
  %55 = call i32 (i32*, i8*, ...) @dev_err(i32* %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %160

56:                                               ; preds = %45
  %57 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %58 = call i32 @pci_set_master(%struct.pci_dev* %57)
  store i64 40, i64* %11, align 8
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load i64, i64* %11, align 8
  %63 = load i32, i32* @ENETC_SI_ALIGN, align 4
  %64 = call i64 @ALIGN(i64 %62, i32 %63)
  store i64 %64, i64* %11, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %11, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %11, align 8
  br label %69

69:                                               ; preds = %61, %56
  %70 = load i32, i32* @ENETC_SI_ALIGN, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %11, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %11, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call %struct.enetc_si* @kzalloc(i64 %75, i32 %76)
  store %struct.enetc_si* %77, %struct.enetc_si** %9, align 8
  %78 = load %struct.enetc_si*, %struct.enetc_si** %9, align 8
  %79 = icmp ne %struct.enetc_si* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %69
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %12, align 4
  br label %157

83:                                               ; preds = %69
  %84 = load %struct.enetc_si*, %struct.enetc_si** %9, align 8
  %85 = load i32, i32* @ENETC_SI_ALIGN, align 4
  %86 = call %struct.enetc_si* @PTR_ALIGN(%struct.enetc_si* %84, i32 %85)
  store %struct.enetc_si* %86, %struct.enetc_si** %8, align 8
  %87 = load %struct.enetc_si*, %struct.enetc_si** %8, align 8
  %88 = bitcast %struct.enetc_si* %87 to i8*
  %89 = load %struct.enetc_si*, %struct.enetc_si** %9, align 8
  %90 = bitcast %struct.enetc_si* %89 to i8*
  %91 = ptrtoint i8* %88 to i64
  %92 = ptrtoint i8* %90 to i64
  %93 = sub i64 %91, %92
  %94 = trunc i64 %93 to i32
  %95 = load %struct.enetc_si*, %struct.enetc_si** %8, align 8
  %96 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %98 = load %struct.enetc_si*, %struct.enetc_si** %8, align 8
  %99 = call i32 @pci_set_drvdata(%struct.pci_dev* %97, %struct.enetc_si* %98)
  %100 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %101 = load %struct.enetc_si*, %struct.enetc_si** %8, align 8
  %102 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %101, i32 0, i32 2
  store %struct.pci_dev* %100, %struct.pci_dev** %102, align 8
  %103 = load %struct.enetc_si*, %struct.enetc_si** %8, align 8
  %104 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %103, i32 0, i32 1
  store %struct.enetc_hw* %104, %struct.enetc_hw** %10, align 8
  %105 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %106 = load i32, i32* @ENETC_BAR_REGS, align 4
  %107 = call i32 @pci_resource_len(%struct.pci_dev* %105, i32 %106)
  store i32 %107, i32* %13, align 4
  %108 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %109 = load i32, i32* @ENETC_BAR_REGS, align 4
  %110 = call i32 @pci_resource_start(%struct.pci_dev* %108, i32 %109)
  %111 = load i32, i32* %13, align 4
  %112 = call i64 @ioremap(i32 %110, i32 %111)
  %113 = load %struct.enetc_hw*, %struct.enetc_hw** %10, align 8
  %114 = getelementptr inbounds %struct.enetc_hw, %struct.enetc_hw* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  %115 = load %struct.enetc_hw*, %struct.enetc_hw** %10, align 8
  %116 = getelementptr inbounds %struct.enetc_hw, %struct.enetc_hw* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %83
  %120 = load i32, i32* @ENXIO, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %12, align 4
  %122 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %123 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %122, i32 0, i32 0
  %124 = call i32 (i32*, i8*, ...) @dev_err(i32* %123, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %154

125:                                              ; preds = %83
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* @ENETC_PORT_BASE, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %125
  %130 = load %struct.enetc_hw*, %struct.enetc_hw** %10, align 8
  %131 = getelementptr inbounds %struct.enetc_hw, %struct.enetc_hw* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* @ENETC_PORT_BASE, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %132, %134
  %136 = load %struct.enetc_hw*, %struct.enetc_hw** %10, align 8
  %137 = getelementptr inbounds %struct.enetc_hw, %struct.enetc_hw* %136, i32 0, i32 2
  store i64 %135, i64* %137, align 8
  br label %138

138:                                              ; preds = %129, %125
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* @ENETC_GLOBAL_BASE, align 4
  %141 = icmp sgt i32 %139, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %138
  %143 = load %struct.enetc_hw*, %struct.enetc_hw** %10, align 8
  %144 = getelementptr inbounds %struct.enetc_hw, %struct.enetc_hw* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i32, i32* @ENETC_GLOBAL_BASE, align 4
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %145, %147
  %149 = load %struct.enetc_hw*, %struct.enetc_hw** %10, align 8
  %150 = getelementptr inbounds %struct.enetc_hw, %struct.enetc_hw* %149, i32 0, i32 1
  store i64 %148, i64* %150, align 8
  br label %151

151:                                              ; preds = %142, %138
  %152 = load %struct.enetc_si*, %struct.enetc_si** %8, align 8
  %153 = call i32 @enetc_detect_errata(%struct.enetc_si* %152)
  store i32 0, i32* %4, align 4
  br label %165

154:                                              ; preds = %119
  %155 = load %struct.enetc_si*, %struct.enetc_si** %8, align 8
  %156 = call i32 @enetc_kfree_si(%struct.enetc_si* %155)
  br label %157

157:                                              ; preds = %154, %80
  %158 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %159 = call i32 @pci_release_mem_regions(%struct.pci_dev* %158)
  br label %160

160:                                              ; preds = %157, %51
  br label %161

161:                                              ; preds = %160, %39
  %162 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %163 = call i32 @pci_disable_device(%struct.pci_dev* %162)
  %164 = load i32, i32* %12, align 4
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %161, %151, %20
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @pcie_flr(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_device_mem(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dma_set_mask_and_coherent(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_request_mem_regions(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local %struct.enetc_si* @kzalloc(i64, i32) #1

declare dso_local %struct.enetc_si* @PTR_ALIGN(%struct.enetc_si*, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.enetc_si*) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i64 @ioremap(i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @enetc_detect_errata(%struct.enetc_si*) #1

declare dso_local i32 @enetc_kfree_si(%struct.enetc_si*) #1

declare dso_local i32 @pci_release_mem_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
