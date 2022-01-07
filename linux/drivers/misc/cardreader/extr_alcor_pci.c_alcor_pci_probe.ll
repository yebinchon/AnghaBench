; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_alcor_pci.c_alcor_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_alcor_pci.c_alcor_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.alcor_pci_priv* }
%struct.alcor_pci_priv = type { i32, i32*, i32, i32, %struct.alcor_dev_cfg*, i32, %struct.pci_dev* }
%struct.alcor_dev_cfg = type { i32 }
%struct.pci_dev = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.pci_device_id = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@alcor_pci_idr = common dso_local global i32 0, align 4
@DRV_NAME_ALCOR_PCI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Cannot request region\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"BAR %d is not iomem. Aborting.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@AU6601_REG_INT_ENABLE = common dso_local global i32 0, align 4
@AU6601_MS_INT_ENABLE = common dso_local global i32 0, align 4
@AU6601_SDMA_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to set DMA mask\0A\00", align 1
@alcor_pci_cells = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @alcor_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alcor_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.alcor_dev_cfg*, align 8
  %7 = alloca %struct.alcor_pci_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %12 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.alcor_dev_cfg*
  store %struct.alcor_dev_cfg* %15, %struct.alcor_dev_cfg** %6, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = call i32 @pcim_enable_device(%struct.pci_dev* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %170

22:                                               ; preds = %2
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.alcor_pci_priv* @devm_kzalloc(i32* %24, i32 48, i32 %25)
  store %struct.alcor_pci_priv* %26, %struct.alcor_pci_priv** %7, align 8
  %27 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %7, align 8
  %28 = icmp ne %struct.alcor_pci_priv* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %170

32:                                               ; preds = %22
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32 @ida_simple_get(i32* @alcor_pci_idr, i32 0, i32 0, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %170

39:                                               ; preds = %32
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %7, align 8
  %42 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %7, align 8
  %45 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %44, i32 0, i32 6
  store %struct.pci_dev* %43, %struct.pci_dev** %45, align 8
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %7, align 8
  %52 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 0
  %55 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %7, align 8
  %56 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %55, i32 0, i32 1
  store i32* %54, i32** %56, align 8
  %57 = load %struct.alcor_dev_cfg*, %struct.alcor_dev_cfg** %6, align 8
  %58 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %7, align 8
  %59 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %58, i32 0, i32 4
  store %struct.alcor_dev_cfg* %57, %struct.alcor_dev_cfg** %59, align 8
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %7, align 8
  %64 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %66 = load i32, i32* @DRV_NAME_ALCOR_PCI, align 4
  %67 = call i32 @pci_request_regions(%struct.pci_dev* %65, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %39
  %71 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 0
  %73 = call i32 (i32*, i8*, ...) @dev_err(i32* %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %170

76:                                               ; preds = %39
  %77 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @pci_resource_flags(%struct.pci_dev* %77, i32 %78)
  %80 = load i32, i32* @IORESOURCE_MEM, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %76
  %84 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %10, align 4
  %87 = call i32 (i32*, i8*, ...) @dev_err(i32* %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @ENODEV, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %8, align 4
  br label %166

90:                                               ; preds = %76
  %91 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @pcim_iomap(%struct.pci_dev* %91, i32 %92, i32 0)
  %94 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %7, align 8
  %95 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %7, align 8
  %97 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %90
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %8, align 4
  br label %166

103:                                              ; preds = %90
  %104 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %7, align 8
  %105 = load i32, i32* @AU6601_REG_INT_ENABLE, align 4
  %106 = call i32 @alcor_write32(%struct.alcor_pci_priv* %104, i32 0, i32 %105)
  %107 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %7, align 8
  %108 = load i32, i32* @AU6601_MS_INT_ENABLE, align 4
  %109 = call i32 @alcor_write32(%struct.alcor_pci_priv* %107, i32 0, i32 %108)
  %110 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %7, align 8
  %111 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* @AU6601_SDMA_MASK, align 4
  %114 = call i32 @dma_set_mask_and_coherent(i32* %112, i32 %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %103
  %118 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %7, align 8
  %119 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 (i32*, i8*, ...) @dev_err(i32* %120, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %166

122:                                              ; preds = %103
  %123 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %124 = call i32 @pci_set_master(%struct.pci_dev* %123)
  %125 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %126 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %7, align 8
  %127 = call i32 @pci_set_drvdata(%struct.pci_dev* %125, %struct.alcor_pci_priv* %126)
  %128 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %7, align 8
  %129 = call i32 @alcor_pci_init_check_aspm(%struct.alcor_pci_priv* %128)
  store i32 0, i32* %9, align 4
  br label %130

130:                                              ; preds = %147, %122
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** @alcor_pci_cells, align 8
  %133 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %132)
  %134 = icmp slt i32 %131, %133
  br i1 %134, label %135, label %150

135:                                              ; preds = %130
  %136 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %7, align 8
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** @alcor_pci_cells, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  store %struct.alcor_pci_priv* %136, %struct.alcor_pci_priv** %141, align 8
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** @alcor_pci_cells, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  store i32 48, i32* %146, align 8
  br label %147

147:                                              ; preds = %135
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %9, align 4
  br label %130

150:                                              ; preds = %130
  %151 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %152 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %151, i32 0, i32 0
  %153 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %7, align 8
  %154 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** @alcor_pci_cells, align 8
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** @alcor_pci_cells, align 8
  %158 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %157)
  %159 = call i32 @mfd_add_devices(i32* %152, i32 %155, %struct.TYPE_6__* %156, i32 %158, i32* null, i32 0, i32* null)
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* %8, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %150
  br label %166

163:                                              ; preds = %150
  %164 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %7, align 8
  %165 = call i32 @alcor_pci_aspm_ctrl(%struct.alcor_pci_priv* %164, i32 0)
  store i32 0, i32* %3, align 4
  br label %170

166:                                              ; preds = %162, %117, %100, %83
  %167 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %168 = call i32 @pci_release_regions(%struct.pci_dev* %167)
  %169 = load i32, i32* %8, align 4
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %166, %163, %70, %37, %29, %20
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local %struct.alcor_pci_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i32 @pcim_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @alcor_write32(%struct.alcor_pci_priv*, i32, i32) #1

declare dso_local i32 @dma_set_mask_and_coherent(i32*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.alcor_pci_priv*) #1

declare dso_local i32 @alcor_pci_init_check_aspm(%struct.alcor_pci_priv*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @mfd_add_devices(i32*, i32, %struct.TYPE_6__*, i32, i32*, i32, i32*) #1

declare dso_local i32 @alcor_pci_aspm_ctrl(%struct.alcor_pci_priv*, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
