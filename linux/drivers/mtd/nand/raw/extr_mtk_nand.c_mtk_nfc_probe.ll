; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.mtk_nfc = type { i8*, %struct.TYPE_5__, i8*, %struct.device*, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mtk_nfc_controller_ops = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"nfi_clk\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"no clk\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"pad_clk\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"no pad clk\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"no nfi irq resource\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mtk_nfc_irq = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"mtk-nand\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"failed to request nfi irq\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"failed to set dma mask\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"failed to init nand chips\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_nfc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_nfc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.mtk_nfc*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %5, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.mtk_nfc* @devm_kzalloc(%struct.device* %15, i32 64, i32 %16)
  store %struct.mtk_nfc* %17, %struct.mtk_nfc** %6, align 8
  %18 = load %struct.mtk_nfc*, %struct.mtk_nfc** %6, align 8
  %19 = icmp ne %struct.mtk_nfc* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %183

23:                                               ; preds = %1
  %24 = load %struct.mtk_nfc*, %struct.mtk_nfc** %6, align 8
  %25 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %24, i32 0, i32 5
  %26 = call i32 @nand_controller_init(%struct.TYPE_4__* %25)
  %27 = load %struct.mtk_nfc*, %struct.mtk_nfc** %6, align 8
  %28 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %27, i32 0, i32 6
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.mtk_nfc*, %struct.mtk_nfc** %6, align 8
  %31 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32* @mtk_nfc_controller_ops, i32** %32, align 8
  %33 = load %struct.device_node*, %struct.device_node** %5, align 8
  %34 = call i8* @of_mtk_ecc_get(%struct.device_node* %33)
  %35 = load %struct.mtk_nfc*, %struct.mtk_nfc** %6, align 8
  %36 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load %struct.mtk_nfc*, %struct.mtk_nfc** %6, align 8
  %38 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @IS_ERR(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %23
  %43 = load %struct.mtk_nfc*, %struct.mtk_nfc** %6, align 8
  %44 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @PTR_ERR(i8* %45)
  store i32 %46, i32* %2, align 4
  br label %183

47:                                               ; preds = %23
  %48 = load %struct.mtk_nfc*, %struct.mtk_nfc** %6, align 8
  %49 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %183

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = call i32 @of_device_get_match_data(%struct.device* %57)
  %59 = load %struct.mtk_nfc*, %struct.mtk_nfc** %6, align 8
  %60 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = load %struct.mtk_nfc*, %struct.mtk_nfc** %6, align 8
  %63 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %62, i32 0, i32 3
  store %struct.device* %61, %struct.device** %63, align 8
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = load i32, i32* @IORESOURCE_MEM, align 4
  %66 = call %struct.resource* @platform_get_resource(%struct.platform_device* %64, i32 %65, i32 0)
  store %struct.resource* %66, %struct.resource** %7, align 8
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = load %struct.resource*, %struct.resource** %7, align 8
  %69 = call i8* @devm_ioremap_resource(%struct.device* %67, %struct.resource* %68)
  %70 = load %struct.mtk_nfc*, %struct.mtk_nfc** %6, align 8
  %71 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load %struct.mtk_nfc*, %struct.mtk_nfc** %6, align 8
  %73 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @IS_ERR(i8* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %56
  %78 = load %struct.mtk_nfc*, %struct.mtk_nfc** %6, align 8
  %79 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @PTR_ERR(i8* %80)
  store i32 %81, i32* %8, align 4
  br label %177

82:                                               ; preds = %56
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = call i8* @devm_clk_get(%struct.device* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %85 = load %struct.mtk_nfc*, %struct.mtk_nfc** %6, align 8
  %86 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  store i8* %84, i8** %87, align 8
  %88 = load %struct.mtk_nfc*, %struct.mtk_nfc** %6, align 8
  %89 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @IS_ERR(i8* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %82
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = call i32 @dev_err(%struct.device* %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %97 = load %struct.mtk_nfc*, %struct.mtk_nfc** %6, align 8
  %98 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @PTR_ERR(i8* %100)
  store i32 %101, i32* %8, align 4
  br label %177

102:                                              ; preds = %82
  %103 = load %struct.device*, %struct.device** %4, align 8
  %104 = call i8* @devm_clk_get(%struct.device* %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %105 = load %struct.mtk_nfc*, %struct.mtk_nfc** %6, align 8
  %106 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  store i8* %104, i8** %107, align 8
  %108 = load %struct.mtk_nfc*, %struct.mtk_nfc** %6, align 8
  %109 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 @IS_ERR(i8* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %102
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = call i32 @dev_err(%struct.device* %115, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %117 = load %struct.mtk_nfc*, %struct.mtk_nfc** %6, align 8
  %118 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @PTR_ERR(i8* %120)
  store i32 %121, i32* %8, align 4
  br label %177

122:                                              ; preds = %102
  %123 = load %struct.device*, %struct.device** %4, align 8
  %124 = load %struct.mtk_nfc*, %struct.mtk_nfc** %6, align 8
  %125 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %124, i32 0, i32 1
  %126 = call i32 @mtk_nfc_enable_clk(%struct.device* %123, %struct.TYPE_5__* %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %177

130:                                              ; preds = %122
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = call i32 @platform_get_irq(%struct.platform_device* %131, i32 0)
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load %struct.device*, %struct.device** %4, align 8
  %137 = call i32 @dev_err(%struct.device* %136, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %8, align 4
  br label %173

140:                                              ; preds = %130
  %141 = load %struct.device*, %struct.device** %4, align 8
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @mtk_nfc_irq, align 4
  %144 = load %struct.mtk_nfc*, %struct.mtk_nfc** %6, align 8
  %145 = call i32 @devm_request_irq(%struct.device* %141, i32 %142, i32 %143, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %struct.mtk_nfc* %144)
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %140
  %149 = load %struct.device*, %struct.device** %4, align 8
  %150 = call i32 @dev_err(%struct.device* %149, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %173

151:                                              ; preds = %140
  %152 = load %struct.device*, %struct.device** %4, align 8
  %153 = call i32 @DMA_BIT_MASK(i32 32)
  %154 = call i32 @dma_set_mask(%struct.device* %152, i32 %153)
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %151
  %158 = load %struct.device*, %struct.device** %4, align 8
  %159 = call i32 @dev_err(%struct.device* %158, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %173

160:                                              ; preds = %151
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = load %struct.mtk_nfc*, %struct.mtk_nfc** %6, align 8
  %163 = call i32 @platform_set_drvdata(%struct.platform_device* %161, %struct.mtk_nfc* %162)
  %164 = load %struct.device*, %struct.device** %4, align 8
  %165 = load %struct.mtk_nfc*, %struct.mtk_nfc** %6, align 8
  %166 = call i32 @mtk_nfc_nand_chips_init(%struct.device* %164, %struct.mtk_nfc* %165)
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %160
  %170 = load %struct.device*, %struct.device** %4, align 8
  %171 = call i32 @dev_err(%struct.device* %170, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %173

172:                                              ; preds = %160
  store i32 0, i32* %2, align 4
  br label %183

173:                                              ; preds = %169, %157, %148, %135
  %174 = load %struct.mtk_nfc*, %struct.mtk_nfc** %6, align 8
  %175 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %174, i32 0, i32 1
  %176 = call i32 @mtk_nfc_disable_clk(%struct.TYPE_5__* %175)
  br label %177

177:                                              ; preds = %173, %129, %114, %94, %77
  %178 = load %struct.mtk_nfc*, %struct.mtk_nfc** %6, align 8
  %179 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @mtk_ecc_release(i8* %180)
  %182 = load i32, i32* %8, align 4
  store i32 %182, i32* %2, align 4
  br label %183

183:                                              ; preds = %177, %172, %52, %42, %20
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local %struct.mtk_nfc* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @nand_controller_init(%struct.TYPE_4__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i8* @of_mtk_ecc_get(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @mtk_nfc_enable_clk(%struct.device*, %struct.TYPE_5__*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.mtk_nfc*) #1

declare dso_local i32 @dma_set_mask(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtk_nfc*) #1

declare dso_local i32 @mtk_nfc_nand_chips_init(%struct.device*, %struct.mtk_nfc*) #1

declare dso_local i32 @mtk_nfc_disable_clk(%struct.TYPE_5__*) #1

declare dso_local i32 @mtk_ecc_release(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
