; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tegra_nand.c_tegra_nand_chips_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tegra_nand.c_tegra_nand_chips_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.tegra_nand_controller = type { %struct.nand_chip*, i32 }
%struct.nand_chip = type { i32, i32* }
%struct.tegra_nand_chip = type { i32, %struct.nand_chip, i32, i32* }
%struct.mtd_info = type { i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }

@.str = private unnamed_addr constant [40 x i8] c"Currently only one NAND chip supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Missing/invalid reg property\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"could not retrieve reg property: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"wp\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to request WP GPIO: %d\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"tegra_nand\00", align 1
@NAND_NO_SUBPAGE_WRITE = common dso_local global i32 0, align 4
@NAND_USE_BOUNCE_BUFFER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"Failed to register mtd device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.tegra_nand_controller*)* @tegra_nand_chips_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_nand_chips_init(%struct.device* %0, %struct.tegra_nand_controller* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.tegra_nand_controller*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tegra_nand_chip*, align 8
  %11 = alloca %struct.mtd_info*, align 8
  %12 = alloca %struct.nand_chip*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.tegra_nand_controller* %1, %struct.tegra_nand_controller** %5, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %6, align 8
  %18 = load %struct.device_node*, %struct.device_node** %6, align 8
  %19 = call i32 @of_get_child_count(%struct.device_node* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %141

27:                                               ; preds = %2
  %28 = load %struct.device_node*, %struct.device_node** %6, align 8
  %29 = call %struct.device_node* @of_get_next_child(%struct.device_node* %28, i32* null)
  store %struct.device_node* %29, %struct.device_node** %7, align 8
  %30 = load %struct.device_node*, %struct.device_node** %7, align 8
  %31 = call i32 @of_property_count_elems_of_size(%struct.device_node* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 4)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %141

39:                                               ; preds = %27
  %40 = load %struct.device_node*, %struct.device_node** %7, align 8
  %41 = call i32 @of_property_read_u32(%struct.device_node* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %14)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %3, align 4
  br label %141

49:                                               ; preds = %39
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.tegra_nand_chip* @devm_kzalloc(%struct.device* %50, i32 40, i32 %51)
  store %struct.tegra_nand_chip* %52, %struct.tegra_nand_chip** %10, align 8
  %53 = load %struct.tegra_nand_chip*, %struct.tegra_nand_chip** %10, align 8
  %54 = icmp ne %struct.tegra_nand_chip* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %141

58:                                               ; preds = %49
  %59 = load i32, i32* %14, align 4
  %60 = load %struct.tegra_nand_chip*, %struct.tegra_nand_chip** %10, align 8
  %61 = getelementptr inbounds %struct.tegra_nand_chip, %struct.tegra_nand_chip* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 %59, i32* %63, align 4
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %66 = call i32 @devm_gpiod_get_optional(%struct.device* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  %67 = load %struct.tegra_nand_chip*, %struct.tegra_nand_chip** %10, align 8
  %68 = getelementptr inbounds %struct.tegra_nand_chip, %struct.tegra_nand_chip* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.tegra_nand_chip*, %struct.tegra_nand_chip** %10, align 8
  %70 = getelementptr inbounds %struct.tegra_nand_chip, %struct.tegra_nand_chip* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @IS_ERR(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %58
  %75 = load %struct.tegra_nand_chip*, %struct.tegra_nand_chip** %10, align 8
  %76 = getelementptr inbounds %struct.tegra_nand_chip, %struct.tegra_nand_chip* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @PTR_ERR(i32 %77)
  store i32 %78, i32* %13, align 4
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %3, align 4
  br label %141

83:                                               ; preds = %58
  %84 = load %struct.tegra_nand_chip*, %struct.tegra_nand_chip** %10, align 8
  %85 = getelementptr inbounds %struct.tegra_nand_chip, %struct.tegra_nand_chip* %84, i32 0, i32 1
  store %struct.nand_chip* %85, %struct.nand_chip** %12, align 8
  %86 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %5, align 8
  %87 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %86, i32 0, i32 1
  %88 = load %struct.nand_chip*, %struct.nand_chip** %12, align 8
  %89 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %88, i32 0, i32 1
  store i32* %87, i32** %89, align 8
  %90 = load %struct.nand_chip*, %struct.nand_chip** %12, align 8
  %91 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %90)
  store %struct.mtd_info* %91, %struct.mtd_info** %11, align 8
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %94 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store %struct.device* %92, %struct.device** %95, align 8
  %96 = load i32, i32* @THIS_MODULE, align 4
  %97 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %98 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  %99 = load %struct.nand_chip*, %struct.nand_chip** %12, align 8
  %100 = load %struct.device_node*, %struct.device_node** %7, align 8
  %101 = call i32 @nand_set_flash_node(%struct.nand_chip* %99, %struct.device_node* %100)
  %102 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %103 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %83
  %107 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %108 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %107, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %108, align 8
  br label %109

109:                                              ; preds = %106, %83
  %110 = load i32, i32* @NAND_NO_SUBPAGE_WRITE, align 4
  %111 = load i32, i32* @NAND_USE_BOUNCE_BUFFER, align 4
  %112 = or i32 %110, %111
  %113 = load %struct.nand_chip*, %struct.nand_chip** %12, align 8
  %114 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load %struct.nand_chip*, %struct.nand_chip** %12, align 8
  %116 = call i32 @nand_scan(%struct.nand_chip* %115, i32 1)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %109
  %120 = load i32, i32* %13, align 4
  store i32 %120, i32* %3, align 4
  br label %141

121:                                              ; preds = %109
  %122 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %123 = load %struct.tegra_nand_chip*, %struct.tegra_nand_chip** %10, align 8
  %124 = getelementptr inbounds %struct.tegra_nand_chip, %struct.tegra_nand_chip* %123, i32 0, i32 0
  %125 = call i32 @mtd_ooblayout_ecc(%struct.mtd_info* %122, i32 0, i32* %124)
  %126 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %127 = call i32 @mtd_device_register(%struct.mtd_info* %126, i32* null, i32 0)
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %13, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %121
  %131 = load %struct.device*, %struct.device** %4, align 8
  %132 = load i32, i32* %13, align 4
  %133 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %131, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %132)
  %134 = load %struct.nand_chip*, %struct.nand_chip** %12, align 8
  %135 = call i32 @nand_cleanup(%struct.nand_chip* %134)
  %136 = load i32, i32* %13, align 4
  store i32 %136, i32* %3, align 4
  br label %141

137:                                              ; preds = %121
  %138 = load %struct.nand_chip*, %struct.nand_chip** %12, align 8
  %139 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %5, align 8
  %140 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %139, i32 0, i32 0
  store %struct.nand_chip* %138, %struct.nand_chip** %140, align 8
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %137, %130, %119, %74, %55, %44, %34, %22
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @of_get_child_count(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, i32*) #1

declare dso_local i32 @of_property_count_elems_of_size(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.tegra_nand_chip* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nand_set_flash_node(%struct.nand_chip*, %struct.device_node*) #1

declare dso_local i32 @nand_scan(%struct.nand_chip*, i32) #1

declare dso_local i32 @mtd_ooblayout_ecc(%struct.mtd_info*, i32, i32*) #1

declare dso_local i32 @mtd_device_register(%struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @nand_cleanup(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
