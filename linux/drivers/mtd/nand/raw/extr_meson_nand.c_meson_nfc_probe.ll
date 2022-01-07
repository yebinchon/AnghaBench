; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_meson_nand.c_meson_nfc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_meson_nand.c_meson_nfc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.meson_nfc = type { i64, i64, %struct.device*, i32, i32, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"amlogic,mmc-syscon\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to lookup clock base\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"no NFC IRQ resource\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to initialize NAND clock\0A\00", align 1
@NFC_REG_CFG = common dso_local global i64 0, align 8
@meson_nfc_irq = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to request NFC IRQ\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"failed to set DMA mask\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"failed to init NAND chips\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @meson_nfc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_nfc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.meson_nfc*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.meson_nfc* @devm_kzalloc(%struct.device* %11, i32 40, i32 %12)
  store %struct.meson_nfc* %13, %struct.meson_nfc** %5, align 8
  %14 = load %struct.meson_nfc*, %struct.meson_nfc** %5, align 8
  %15 = icmp ne %struct.meson_nfc* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %148

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 @of_device_get_match_data(%struct.device* %21)
  %23 = load %struct.meson_nfc*, %struct.meson_nfc** %5, align 8
  %24 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load %struct.meson_nfc*, %struct.meson_nfc** %5, align 8
  %26 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %19
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %148

32:                                               ; preds = %19
  %33 = load %struct.meson_nfc*, %struct.meson_nfc** %5, align 8
  %34 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %33, i32 0, i32 5
  %35 = call i32 @nand_controller_init(i32* %34)
  %36 = load %struct.meson_nfc*, %struct.meson_nfc** %5, align 8
  %37 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %36, i32 0, i32 4
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.meson_nfc*, %struct.meson_nfc** %5, align 8
  %40 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %39, i32 0, i32 3
  %41 = call i32 @init_completion(i32* %40)
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load %struct.meson_nfc*, %struct.meson_nfc** %5, align 8
  %44 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %43, i32 0, i32 2
  store %struct.device* %42, %struct.device** %44, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = load i32, i32* @IORESOURCE_MEM, align 4
  %47 = call %struct.resource* @platform_get_resource(%struct.platform_device* %45, i32 %46, i32 0)
  store %struct.resource* %47, %struct.resource** %6, align 8
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = load %struct.resource*, %struct.resource** %6, align 8
  %50 = call i64 @devm_ioremap_resource(%struct.device* %48, %struct.resource* %49)
  %51 = load %struct.meson_nfc*, %struct.meson_nfc** %5, align 8
  %52 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.meson_nfc*, %struct.meson_nfc** %5, align 8
  %54 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @IS_ERR(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %32
  %59 = load %struct.meson_nfc*, %struct.meson_nfc** %5, align 8
  %60 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @PTR_ERR(i64 %61)
  store i32 %62, i32* %2, align 4
  br label %148

63:                                               ; preds = %32
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = getelementptr inbounds %struct.device, %struct.device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @syscon_regmap_lookup_by_phandle(i32 %66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.meson_nfc*, %struct.meson_nfc** %5, align 8
  %69 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load %struct.meson_nfc*, %struct.meson_nfc** %5, align 8
  %71 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @IS_ERR(i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %63
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = call i32 @dev_err(%struct.device* %76, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %78 = load %struct.meson_nfc*, %struct.meson_nfc** %5, align 8
  %79 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @PTR_ERR(i64 %80)
  store i32 %81, i32* %2, align 4
  br label %148

82:                                               ; preds = %63
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = call i32 @platform_get_irq(%struct.platform_device* %83, i32 0)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = call i32 @dev_err(%struct.device* %88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %148

92:                                               ; preds = %82
  %93 = load %struct.meson_nfc*, %struct.meson_nfc** %5, align 8
  %94 = call i32 @meson_nfc_clk_init(%struct.meson_nfc* %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load %struct.device*, %struct.device** %4, align 8
  %99 = call i32 @dev_err(%struct.device* %98, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %2, align 4
  br label %148

101:                                              ; preds = %92
  %102 = load %struct.meson_nfc*, %struct.meson_nfc** %5, align 8
  %103 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @NFC_REG_CFG, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @writel(i32 0, i64 %106)
  %108 = load %struct.device*, %struct.device** %4, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @meson_nfc_irq, align 4
  %111 = load %struct.device*, %struct.device** %4, align 8
  %112 = call i32 @dev_name(%struct.device* %111)
  %113 = load %struct.meson_nfc*, %struct.meson_nfc** %5, align 8
  %114 = call i32 @devm_request_irq(%struct.device* %108, i32 %109, i32 %110, i32 0, i32 %112, %struct.meson_nfc* %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %101
  %118 = load %struct.device*, %struct.device** %4, align 8
  %119 = call i32 @dev_err(%struct.device* %118, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %7, align 4
  br label %144

122:                                              ; preds = %101
  %123 = load %struct.device*, %struct.device** %4, align 8
  %124 = call i32 @DMA_BIT_MASK(i32 32)
  %125 = call i32 @dma_set_mask(%struct.device* %123, i32 %124)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load %struct.device*, %struct.device** %4, align 8
  %130 = call i32 @dev_err(%struct.device* %129, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %144

131:                                              ; preds = %122
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = load %struct.meson_nfc*, %struct.meson_nfc** %5, align 8
  %134 = call i32 @platform_set_drvdata(%struct.platform_device* %132, %struct.meson_nfc* %133)
  %135 = load %struct.device*, %struct.device** %4, align 8
  %136 = load %struct.meson_nfc*, %struct.meson_nfc** %5, align 8
  %137 = call i32 @meson_nfc_nand_chips_init(%struct.device* %135, %struct.meson_nfc* %136)
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %131
  %141 = load %struct.device*, %struct.device** %4, align 8
  %142 = call i32 @dev_err(%struct.device* %141, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %144

143:                                              ; preds = %131
  store i32 0, i32* %2, align 4
  br label %148

144:                                              ; preds = %140, %128, %117
  %145 = load %struct.meson_nfc*, %struct.meson_nfc** %5, align 8
  %146 = call i32 @meson_nfc_disable_clk(%struct.meson_nfc* %145)
  %147 = load i32, i32* %7, align 4
  store i32 %147, i32* %2, align 4
  br label %148

148:                                              ; preds = %144, %143, %97, %87, %75, %58, %29, %16
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local %struct.meson_nfc* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @nand_controller_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @meson_nfc_clk_init(%struct.meson_nfc*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.meson_nfc*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dma_set_mask(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.meson_nfc*) #1

declare dso_local i32 @meson_nfc_nand_chips_init(%struct.device*, %struct.meson_nfc*) #1

declare dso_local i32 @meson_nfc_disable_clk(%struct.meson_nfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
