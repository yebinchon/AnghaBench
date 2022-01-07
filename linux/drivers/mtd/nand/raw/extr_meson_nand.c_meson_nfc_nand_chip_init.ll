; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_meson_nand.c_meson_nfc_nand_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_meson_nand.c_meson_nfc_nand_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.meson_nfc = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.device_node = type { i32 }
%struct.meson_nfc_nand_chip = type { i32, i32, %struct.nand_chip }
%struct.nand_chip = type { i32, %struct.TYPE_3__* }
%struct.mtd_info = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.device* }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@MAX_CE_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"invalid register property size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@sels = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"could not retrieve register property: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"CS %d already assigned\0A\00", align 1
@meson_nand_controller_ops = common dso_local global i32 0, align 4
@NAND_USE_BOUNCE_BUFFER = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"failed to register MTD device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.meson_nfc*, %struct.device_node*)* @meson_nfc_nand_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_nfc_nand_chip_init(%struct.device* %0, %struct.meson_nfc* %1, %struct.device_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.meson_nfc*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.meson_nfc_nand_chip*, align 8
  %9 = alloca %struct.nand_chip*, align 8
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.meson_nfc* %1, %struct.meson_nfc** %6, align 8
  store %struct.device_node* %2, %struct.device_node** %7, align 8
  %15 = load %struct.device_node*, %struct.device_node** %7, align 8
  %16 = call i32 @of_property_count_elems_of_size(%struct.device_node* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* @MAX_CE_NUM, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19, %3
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %132

28:                                               ; preds = %19
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = load %struct.meson_nfc_nand_chip*, %struct.meson_nfc_nand_chip** %8, align 8
  %31 = load i32, i32* @sels, align 4
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @struct_size(%struct.meson_nfc_nand_chip* %30, i32 %31, i32 %32)
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.meson_nfc_nand_chip* @devm_kzalloc(%struct.device* %29, i32 %33, i32 %34)
  store %struct.meson_nfc_nand_chip* %35, %struct.meson_nfc_nand_chip** %8, align 8
  %36 = load %struct.meson_nfc_nand_chip*, %struct.meson_nfc_nand_chip** %8, align 8
  %37 = icmp ne %struct.meson_nfc_nand_chip* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %28
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %132

41:                                               ; preds = %28
  %42 = load i32, i32* %14, align 4
  %43 = load %struct.meson_nfc_nand_chip*, %struct.meson_nfc_nand_chip** %8, align 8
  %44 = getelementptr inbounds %struct.meson_nfc_nand_chip, %struct.meson_nfc_nand_chip* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %73, %41
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %76

49:                                               ; preds = %45
  %50 = load %struct.device_node*, %struct.device_node** %7, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @of_property_read_u32_index(%struct.device_node* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %51, i32* %13)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %56, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %4, align 4
  br label %132

60:                                               ; preds = %49
  %61 = load i32, i32* %13, align 4
  %62 = load %struct.meson_nfc*, %struct.meson_nfc** %6, align 8
  %63 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %62, i32 0, i32 2
  %64 = call i64 @test_and_set_bit(i32 %61, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.device*, %struct.device** %5, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %132

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  br label %45

76:                                               ; preds = %45
  %77 = load %struct.meson_nfc_nand_chip*, %struct.meson_nfc_nand_chip** %8, align 8
  %78 = getelementptr inbounds %struct.meson_nfc_nand_chip, %struct.meson_nfc_nand_chip* %77, i32 0, i32 2
  store %struct.nand_chip* %78, %struct.nand_chip** %9, align 8
  %79 = load %struct.meson_nfc*, %struct.meson_nfc** %6, align 8
  %80 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %79, i32 0, i32 1
  %81 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %82 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %81, i32 0, i32 1
  store %struct.TYPE_3__* %80, %struct.TYPE_3__** %82, align 8
  %83 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %84 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %83, i32 0, i32 1
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i32* @meson_nand_controller_ops, i32** %86, align 8
  %87 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %88 = load %struct.device_node*, %struct.device_node** %7, align 8
  %89 = call i32 @nand_set_flash_node(%struct.nand_chip* %87, %struct.device_node* %88)
  %90 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %91 = load %struct.meson_nfc*, %struct.meson_nfc** %6, align 8
  %92 = call i32 @nand_set_controller_data(%struct.nand_chip* %90, %struct.meson_nfc* %91)
  %93 = load i32, i32* @NAND_USE_BOUNCE_BUFFER, align 4
  %94 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %95 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %99 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %98)
  store %struct.mtd_info* %99, %struct.mtd_info** %10, align 8
  %100 = load i32, i32* @THIS_MODULE, align 4
  %101 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %102 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 8
  %103 = load %struct.device*, %struct.device** %5, align 8
  %104 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %105 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  store %struct.device* %103, %struct.device** %106, align 8
  %107 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %108 = load i32, i32* %14, align 4
  %109 = call i32 @nand_scan(%struct.nand_chip* %107, i32 %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %76
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %4, align 4
  br label %132

114:                                              ; preds = %76
  %115 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %116 = call i32 @mtd_device_register(%struct.mtd_info* %115, i32* null, i32 0)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load %struct.device*, %struct.device** %5, align 8
  %121 = load i32, i32* %11, align 4
  %122 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %120, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %121)
  %123 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %124 = call i32 @nand_cleanup(%struct.nand_chip* %123)
  %125 = load i32, i32* %11, align 4
  store i32 %125, i32* %4, align 4
  br label %132

126:                                              ; preds = %114
  %127 = load %struct.meson_nfc_nand_chip*, %struct.meson_nfc_nand_chip** %8, align 8
  %128 = getelementptr inbounds %struct.meson_nfc_nand_chip, %struct.meson_nfc_nand_chip* %127, i32 0, i32 1
  %129 = load %struct.meson_nfc*, %struct.meson_nfc** %6, align 8
  %130 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %129, i32 0, i32 0
  %131 = call i32 @list_add_tail(i32* %128, i32* %130)
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %126, %119, %112, %66, %55, %38, %23
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @of_property_count_elems_of_size(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.meson_nfc_nand_chip* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.meson_nfc_nand_chip*, i32, i32) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @nand_set_flash_node(%struct.nand_chip*, %struct.device_node*) #1

declare dso_local i32 @nand_set_controller_data(%struct.nand_chip*, %struct.meson_nfc*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nand_scan(%struct.nand_chip*, i32) #1

declare dso_local i32 @mtd_device_register(%struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @nand_cleanup(%struct.nand_chip*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
