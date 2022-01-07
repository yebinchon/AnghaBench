; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_hsmc_nand_controller_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_hsmc_nand_controller_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.atmel_nand_controller_caps = type { i64 }
%struct.atmel_hsmc_nand_controller = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATMEL_HSMC_NFC_IDR = common dso_local global i32 0, align 4
@atmel_nfc_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"nfc\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Could not get register NFC interrupt handler (err = %d)\0A\00", align 1
@ATMEL_HSMC_NFC_CFG = common dso_local global i32 0, align 4
@ATMEL_HSMC_NFC_CFG_DTO_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.atmel_nand_controller_caps*)* @atmel_hsmc_nand_controller_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_hsmc_nand_controller_probe(%struct.platform_device* %0, %struct.atmel_nand_controller_caps* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.atmel_nand_controller_caps*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.atmel_hsmc_nand_controller*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.atmel_nand_controller_caps* %1, %struct.atmel_nand_controller_caps** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.atmel_hsmc_nand_controller* @devm_kzalloc(%struct.device* %11, i32 8, i32 %12)
  store %struct.atmel_hsmc_nand_controller* %13, %struct.atmel_hsmc_nand_controller** %7, align 8
  %14 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %7, align 8
  %15 = icmp ne %struct.atmel_hsmc_nand_controller* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %86

19:                                               ; preds = %2
  %20 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %7, align 8
  %21 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %20, i32 0, i32 0
  %22 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %23 = load %struct.atmel_nand_controller_caps*, %struct.atmel_nand_controller_caps** %5, align 8
  %24 = call i32 @atmel_nand_controller_init(%struct.TYPE_4__* %21, %struct.platform_device* %22, %struct.atmel_nand_controller_caps* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %86

29:                                               ; preds = %19
  %30 = load %struct.atmel_nand_controller_caps*, %struct.atmel_nand_controller_caps** %5, align 8
  %31 = getelementptr inbounds %struct.atmel_nand_controller_caps, %struct.atmel_nand_controller_caps* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %7, align 8
  %36 = call i32 @atmel_hsmc_nand_controller_legacy_init(%struct.atmel_hsmc_nand_controller* %35)
  store i32 %36, i32* %8, align 4
  br label %40

37:                                               ; preds = %29
  %38 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %7, align 8
  %39 = call i32 @atmel_hsmc_nand_controller_init(%struct.atmel_hsmc_nand_controller* %38)
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %86

45:                                               ; preds = %40
  %46 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %7, align 8
  %47 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ATMEL_HSMC_NFC_IDR, align 4
  %51 = call i32 @regmap_write(i32 %49, i32 %50, i32 -1)
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %7, align 8
  %54 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @atmel_nfc_interrupt, align 4
  %57 = load i32, i32* @IRQF_SHARED, align 4
  %58 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %7, align 8
  %59 = call i32 @devm_request_irq(%struct.device* %52, i32 %55, i32 %56, i32 %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.atmel_hsmc_nand_controller* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %45
  %63 = load %struct.device*, %struct.device** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %81

66:                                               ; preds = %45
  %67 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %7, align 8
  %68 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ATMEL_HSMC_NFC_CFG, align 4
  %72 = load i32, i32* @ATMEL_HSMC_NFC_CFG_DTO_MAX, align 4
  %73 = call i32 @regmap_write(i32 %70, i32 %71, i32 %72)
  %74 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %7, align 8
  %75 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %74, i32 0, i32 0
  %76 = call i32 @atmel_nand_controller_add_nands(%struct.TYPE_4__* %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  br label %81

80:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %86

81:                                               ; preds = %79, %62
  %82 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %7, align 8
  %83 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %82, i32 0, i32 0
  %84 = call i32 @atmel_hsmc_nand_controller_remove(%struct.TYPE_4__* %83)
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %81, %80, %43, %27, %16
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.atmel_hsmc_nand_controller* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @atmel_nand_controller_init(%struct.TYPE_4__*, %struct.platform_device*, %struct.atmel_nand_controller_caps*) #1

declare dso_local i32 @atmel_hsmc_nand_controller_legacy_init(%struct.atmel_hsmc_nand_controller*) #1

declare dso_local i32 @atmel_hsmc_nand_controller_init(%struct.atmel_hsmc_nand_controller*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.atmel_hsmc_nand_controller*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @atmel_nand_controller_add_nands(%struct.TYPE_4__*) #1

declare dso_local i32 @atmel_hsmc_nand_controller_remove(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
