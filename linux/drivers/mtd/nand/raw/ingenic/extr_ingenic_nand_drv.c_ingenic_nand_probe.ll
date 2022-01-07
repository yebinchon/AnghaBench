; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_ingenic_nand_drv.c_ingenic_nand_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_ingenic_nand_drv.c_ingenic_nand_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.ingenic_nfc = type { i32, i64, i32, i32, %struct.device*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"no banks found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@cs = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ingenic_nand_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingenic_nand_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ingenic_nfc*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call i32 @jz4780_nemc_num_banks(%struct.device* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32 @dev_err(%struct.device* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %95

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %6, align 8
  %22 = load i32, i32* @cs, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @struct_size(%struct.ingenic_nfc* %21, i32 %22, i32 %23)
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.ingenic_nfc* @devm_kzalloc(%struct.device* %20, i32 %24, i32 %25)
  store %struct.ingenic_nfc* %26, %struct.ingenic_nfc** %6, align 8
  %27 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %6, align 8
  %28 = icmp ne %struct.ingenic_nfc* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %19
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %95

32:                                               ; preds = %19
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = call i32 @device_get_match_data(%struct.device* %33)
  %35 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %6, align 8
  %36 = getelementptr inbounds %struct.ingenic_nfc, %struct.ingenic_nfc* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %6, align 8
  %38 = getelementptr inbounds %struct.ingenic_nfc, %struct.ingenic_nfc* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %95

44:                                               ; preds = %32
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = getelementptr inbounds %struct.device, %struct.device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @of_ingenic_ecc_get(i32 %47)
  %49 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %6, align 8
  %50 = getelementptr inbounds %struct.ingenic_nfc, %struct.ingenic_nfc* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %6, align 8
  %52 = getelementptr inbounds %struct.ingenic_nfc, %struct.ingenic_nfc* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @IS_ERR(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %44
  %57 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %6, align 8
  %58 = getelementptr inbounds %struct.ingenic_nfc, %struct.ingenic_nfc* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @PTR_ERR(i64 %59)
  store i32 %60, i32* %2, align 4
  br label %95

61:                                               ; preds = %44
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %6, align 8
  %64 = getelementptr inbounds %struct.ingenic_nfc, %struct.ingenic_nfc* %63, i32 0, i32 4
  store %struct.device* %62, %struct.device** %64, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %6, align 8
  %67 = getelementptr inbounds %struct.ingenic_nfc, %struct.ingenic_nfc* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %6, align 8
  %69 = getelementptr inbounds %struct.ingenic_nfc, %struct.ingenic_nfc* %68, i32 0, i32 3
  %70 = call i32 @nand_controller_init(i32* %69)
  %71 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %6, align 8
  %72 = getelementptr inbounds %struct.ingenic_nfc, %struct.ingenic_nfc* %71, i32 0, i32 2
  %73 = call i32 @INIT_LIST_HEAD(i32* %72)
  %74 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %6, align 8
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = call i32 @ingenic_nand_init_chips(%struct.ingenic_nfc* %74, %struct.platform_device* %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %61
  %80 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %6, align 8
  %81 = getelementptr inbounds %struct.ingenic_nfc, %struct.ingenic_nfc* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %6, align 8
  %86 = getelementptr inbounds %struct.ingenic_nfc, %struct.ingenic_nfc* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @ingenic_ecc_release(i64 %87)
  br label %89

89:                                               ; preds = %84, %79
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %2, align 4
  br label %95

91:                                               ; preds = %61
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %6, align 8
  %94 = call i32 @platform_set_drvdata(%struct.platform_device* %92, %struct.ingenic_nfc* %93)
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %91, %89, %56, %41, %29, %14
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @jz4780_nemc_num_banks(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.ingenic_nfc* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.ingenic_nfc*, i32, i32) #1

declare dso_local i32 @device_get_match_data(%struct.device*) #1

declare dso_local i64 @of_ingenic_ecc_get(i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @nand_controller_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ingenic_nand_init_chips(%struct.ingenic_nfc*, %struct.platform_device*) #1

declare dso_local i32 @ingenic_ecc_release(i64) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ingenic_nfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
