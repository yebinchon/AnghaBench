; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_pci.c_macb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_pci.c_macb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.platform_device = type { i32 }
%struct.platform_device_info = type { i32, i32, %struct.platform_device*, %struct.platform_device*, i32, %struct.platform_device_info*, %struct.platform_device_info*, i32, i8*, i32, %struct.TYPE_4__*, i32, i32, i32 }
%struct.macb_platform_data = type { i32, i32, %struct.platform_device*, %struct.platform_device*, i32, %struct.macb_platform_data*, %struct.macb_platform_data*, i32, i8*, i32, %struct.TYPE_4__*, i32, i32, i32 }
%struct.resource = type { i32, i32, %struct.platform_device*, %struct.platform_device*, i32, %struct.resource*, %struct.resource*, i32, i8*, i32, %struct.TYPE_4__*, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Enabling PCI device has failed: %d\00", align 1
@PCI_DRIVER_NAME = common dso_local global i8* null, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"EMAC physical base addr: %pa\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@GEM_PCLK_RATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"hclk\00", align 1
@GEM_HCLK_RATE = common dso_local global i32 0, align 4
@PLAT_DRIVER_NAME = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @macb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macb_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.platform_device_info, align 8
  %9 = alloca %struct.macb_platform_data, align 8
  %10 = alloca [2 x %struct.resource], align 16
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = call i32 @pcim_enable_device(%struct.pci_dev* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 2
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @dev_err(%struct.TYPE_4__* %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %143

21:                                               ; preds = %2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = call i32 @pci_set_master(%struct.pci_dev* %22)
  %24 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %10, i64 0, i64 0
  %25 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %10, i64 0, i64 0
  %26 = call i32 @ARRAY_SIZE(%struct.resource* %25)
  %27 = sext i32 %26 to i64
  %28 = mul i64 96, %27
  %29 = trunc i64 %28 to i32
  %30 = call i32 @memset(%struct.resource* %24, i32 0, i32 %29)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = call i32 @pci_resource_start(%struct.pci_dev* %31, i32 0)
  %33 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %10, i64 0, i64 0
  %34 = getelementptr inbounds %struct.resource, %struct.resource* %33, i32 0, i32 11
  store i32 %32, i32* %34, align 16
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = call i32 @pci_resource_end(%struct.pci_dev* %35, i32 0)
  %37 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %10, i64 0, i64 0
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 13
  store i32 %36, i32* %38, align 8
  %39 = load i8*, i8** @PCI_DRIVER_NAME, align 8
  %40 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %10, i64 0, i64 0
  %41 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 8
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* @IORESOURCE_MEM, align 4
  %43 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %10, i64 0, i64 0
  %44 = getelementptr inbounds %struct.resource, %struct.resource* %43, i32 0, i32 12
  store i32 %42, i32* %44, align 4
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = call i32 @pci_irq_vector(%struct.pci_dev* %45, i32 0)
  %47 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %10, i64 0, i64 1
  %48 = getelementptr inbounds %struct.resource, %struct.resource* %47, i32 0, i32 11
  store i32 %46, i32* %48, align 16
  %49 = load i8*, i8** @PCI_DRIVER_NAME, align 8
  %50 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %10, i64 0, i64 1
  %51 = getelementptr inbounds %struct.resource, %struct.resource* %50, i32 0, i32 8
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* @IORESOURCE_IRQ, align 4
  %53 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %10, i64 0, i64 1
  %54 = getelementptr inbounds %struct.resource, %struct.resource* %53, i32 0, i32 12
  store i32 %52, i32* %54, align 4
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 2
  %57 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %10, i64 0, i64 0
  %58 = getelementptr inbounds %struct.resource, %struct.resource* %57, i32 0, i32 11
  %59 = call i32 @dev_info(%struct.TYPE_4__* %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32* %58)
  %60 = bitcast %struct.macb_platform_data* %9 to %struct.resource*
  %61 = call i32 @memset(%struct.resource* %60, i32 0, i32 96)
  %62 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 2
  %64 = load i32, i32* @GEM_PCLK_RATE, align 4
  %65 = call i8* @clk_register_fixed_rate(%struct.TYPE_4__* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 0, i32 %64)
  %66 = bitcast i8* %65 to %struct.platform_device*
  %67 = getelementptr inbounds %struct.macb_platform_data, %struct.macb_platform_data* %9, i32 0, i32 2
  store %struct.platform_device* %66, %struct.platform_device** %67, align 8
  %68 = getelementptr inbounds %struct.macb_platform_data, %struct.macb_platform_data* %9, i32 0, i32 2
  %69 = load %struct.platform_device*, %struct.platform_device** %68, align 8
  %70 = call i64 @IS_ERR(%struct.platform_device* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %21
  %73 = getelementptr inbounds %struct.macb_platform_data, %struct.macb_platform_data* %9, i32 0, i32 2
  %74 = load %struct.platform_device*, %struct.platform_device** %73, align 8
  %75 = call i32 @PTR_ERR(%struct.platform_device* %74)
  store i32 %75, i32* %6, align 4
  br label %141

76:                                               ; preds = %21
  %77 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %78 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %77, i32 0, i32 2
  %79 = load i32, i32* @GEM_HCLK_RATE, align 4
  %80 = call i8* @clk_register_fixed_rate(%struct.TYPE_4__* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 0, i32 %79)
  %81 = bitcast i8* %80 to %struct.platform_device*
  %82 = getelementptr inbounds %struct.macb_platform_data, %struct.macb_platform_data* %9, i32 0, i32 3
  store %struct.platform_device* %81, %struct.platform_device** %82, align 8
  %83 = getelementptr inbounds %struct.macb_platform_data, %struct.macb_platform_data* %9, i32 0, i32 3
  %84 = load %struct.platform_device*, %struct.platform_device** %83, align 8
  %85 = call i64 @IS_ERR(%struct.platform_device* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %76
  %88 = getelementptr inbounds %struct.macb_platform_data, %struct.macb_platform_data* %9, i32 0, i32 3
  %89 = load %struct.platform_device*, %struct.platform_device** %88, align 8
  %90 = call i32 @PTR_ERR(%struct.platform_device* %89)
  store i32 %90, i32* %6, align 4
  br label %137

91:                                               ; preds = %76
  %92 = bitcast %struct.platform_device_info* %8 to %struct.resource*
  %93 = call i32 @memset(%struct.resource* %92, i32 0, i32 96)
  %94 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %95 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 10
  store %struct.TYPE_4__* %95, %struct.TYPE_4__** %96, align 8
  %97 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %98 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 9
  store i32 %100, i32* %101, align 8
  %102 = load i8*, i8** @PLAT_DRIVER_NAME, align 8
  %103 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 8
  store i8* %102, i8** %103, align 8
  %104 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %105 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 7
  store i32 %106, i32* %107, align 8
  %108 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %10, i64 0, i64 0
  %109 = bitcast %struct.resource* %108 to %struct.platform_device_info*
  %110 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 6
  store %struct.platform_device_info* %109, %struct.platform_device_info** %110, align 8
  %111 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %10, i64 0, i64 0
  %112 = call i32 @ARRAY_SIZE(%struct.resource* %111)
  %113 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 0
  store i32 %112, i32* %113, align 8
  %114 = bitcast %struct.macb_platform_data* %9 to %struct.platform_device_info*
  %115 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 5
  store %struct.platform_device_info* %114, %struct.platform_device_info** %115, align 8
  %116 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 1
  store i32 96, i32* %116, align 4
  %117 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %118 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 4
  store i32 %119, i32* %120, align 8
  %121 = bitcast %struct.platform_device_info* %8 to %struct.resource*
  %122 = call %struct.platform_device* @platform_device_register_full(%struct.resource* %121)
  store %struct.platform_device* %122, %struct.platform_device** %7, align 8
  %123 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %124 = call i64 @IS_ERR(%struct.platform_device* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %91
  %127 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %128 = call i32 @PTR_ERR(%struct.platform_device* %127)
  store i32 %128, i32* %6, align 4
  br label %133

129:                                              ; preds = %91
  %130 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %131 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %132 = call i32 @pci_set_drvdata(%struct.pci_dev* %130, %struct.platform_device* %131)
  store i32 0, i32* %3, align 4
  br label %143

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.macb_platform_data, %struct.macb_platform_data* %9, i32 0, i32 3
  %135 = load %struct.platform_device*, %struct.platform_device** %134, align 8
  %136 = call i32 @clk_unregister(%struct.platform_device* %135)
  br label %137

137:                                              ; preds = %133, %87
  %138 = getelementptr inbounds %struct.macb_platform_data, %struct.macb_platform_data* %9, i32 0, i32 2
  %139 = load %struct.platform_device*, %struct.platform_device** %138, align 8
  %140 = call i32 @clk_unregister(%struct.platform_device* %139)
  br label %141

141:                                              ; preds = %137, %72
  %142 = load i32, i32* %6, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %141, %129, %15
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @memset(%struct.resource*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.resource*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_end(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_4__*, i8*, i32*) #1

declare dso_local i8* @clk_register_fixed_rate(%struct.TYPE_4__*, i8*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.platform_device*) #1

declare dso_local i32 @PTR_ERR(%struct.platform_device*) #1

declare dso_local %struct.platform_device* @platform_device_register_full(%struct.resource*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.platform_device*) #1

declare dso_local i32 @clk_unregister(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
