; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_onfi.c_nand_flash_detect_ext_param_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_onfi.c_nand_flash_detect_ext_param_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nand_onfi_params = type { i32, i32 }
%struct.onfi_ext_param_page = type { %struct.onfi_ext_section*, i32, i32 }
%struct.onfi_ext_section = type { i64, i32 }
%struct.onfi_ext_ecc_info = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ONFI_CRC_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"fail in the CRC.\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"EPPS\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"The signature is invalid.\0A\00", align 1
@ONFI_EXT_SECTION_MAX = common dso_local global i32 0, align 4
@ONFI_SECTION_TYPE_2 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"We can not find the ECC section.\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Invalid codeword size\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, %struct.nand_onfi_params*)* @nand_flash_detect_ext_param_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_flash_detect_ext_param_page(%struct.nand_chip* %0, %struct.nand_onfi_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca %struct.nand_onfi_params*, align 8
  %6 = alloca %struct.onfi_ext_param_page*, align 8
  %7 = alloca %struct.onfi_ext_section*, align 8
  %8 = alloca %struct.onfi_ext_ecc_info*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store %struct.nand_onfi_params* %1, %struct.nand_onfi_params** %5, align 8
  %13 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %5, align 8
  %14 = getelementptr inbounds %struct.nand_onfi_params, %struct.nand_onfi_params* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @le16_to_cpu(i32 %15)
  %17 = mul nsw i64 %16, 16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.onfi_ext_param_page* @kmalloc(i32 %19, i32 %20)
  store %struct.onfi_ext_param_page* %21, %struct.onfi_ext_param_page** %6, align 8
  %22 = load %struct.onfi_ext_param_page*, %struct.onfi_ext_param_page** %6, align 8
  %23 = icmp ne %struct.onfi_ext_param_page* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %139

27:                                               ; preds = %2
  %28 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %29 = call i32 @nand_read_param_page_op(%struct.nand_chip* %28, i32 0, i32* null, i32 0)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %135

33:                                               ; preds = %27
  %34 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %35 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %5, align 8
  %36 = getelementptr inbounds %struct.nand_onfi_params, %struct.nand_onfi_params* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 8, %38
  %40 = trunc i64 %39 to i32
  %41 = load %struct.onfi_ext_param_page*, %struct.onfi_ext_param_page** %6, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @nand_change_read_column_op(%struct.nand_chip* %34, i32 %40, %struct.onfi_ext_param_page* %41, i32 %42, i32 1)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %135

47:                                               ; preds = %33
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* @ONFI_CRC_BASE, align 4
  %51 = load %struct.onfi_ext_param_page*, %struct.onfi_ext_param_page** %6, align 8
  %52 = bitcast %struct.onfi_ext_param_page* %51 to i32*
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = load i32, i32* %11, align 4
  %55 = sub nsw i32 %54, 2
  %56 = call i64 @onfi_crc16(i32 %50, i32* %53, i32 %55)
  %57 = load %struct.onfi_ext_param_page*, %struct.onfi_ext_param_page** %6, align 8
  %58 = getelementptr inbounds %struct.onfi_ext_param_page, %struct.onfi_ext_param_page* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @le16_to_cpu(i32 %59)
  %61 = icmp ne i64 %56, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %47
  %63 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %135

64:                                               ; preds = %47
  %65 = load %struct.onfi_ext_param_page*, %struct.onfi_ext_param_page** %6, align 8
  %66 = getelementptr inbounds %struct.onfi_ext_param_page, %struct.onfi_ext_param_page* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @strncmp(i32 %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %135

72:                                               ; preds = %64
  %73 = load %struct.onfi_ext_param_page*, %struct.onfi_ext_param_page** %6, align 8
  %74 = getelementptr inbounds %struct.onfi_ext_param_page, %struct.onfi_ext_param_page* %73, i64 1
  %75 = bitcast %struct.onfi_ext_param_page* %74 to i32*
  store i32* %75, i32** %9, align 8
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %101, %72
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @ONFI_EXT_SECTION_MAX, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %104

80:                                               ; preds = %76
  %81 = load %struct.onfi_ext_param_page*, %struct.onfi_ext_param_page** %6, align 8
  %82 = getelementptr inbounds %struct.onfi_ext_param_page, %struct.onfi_ext_param_page* %81, i32 0, i32 0
  %83 = load %struct.onfi_ext_section*, %struct.onfi_ext_section** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.onfi_ext_section, %struct.onfi_ext_section* %83, i64 %85
  store %struct.onfi_ext_section* %86, %struct.onfi_ext_section** %7, align 8
  %87 = load %struct.onfi_ext_section*, %struct.onfi_ext_section** %7, align 8
  %88 = getelementptr inbounds %struct.onfi_ext_section, %struct.onfi_ext_section* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ONFI_SECTION_TYPE_2, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %80
  br label %104

93:                                               ; preds = %80
  %94 = load %struct.onfi_ext_section*, %struct.onfi_ext_section** %7, align 8
  %95 = getelementptr inbounds %struct.onfi_ext_section, %struct.onfi_ext_section* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = mul nsw i32 %96, 16
  %98 = load i32*, i32** %9, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %9, align 8
  br label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %76

104:                                              ; preds = %92, %76
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* @ONFI_EXT_SECTION_MAX, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %135

110:                                              ; preds = %104
  %111 = load i32*, i32** %9, align 8
  %112 = bitcast i32* %111 to %struct.onfi_ext_ecc_info*
  store %struct.onfi_ext_ecc_info* %112, %struct.onfi_ext_ecc_info** %8, align 8
  %113 = load %struct.onfi_ext_ecc_info*, %struct.onfi_ext_ecc_info** %8, align 8
  %114 = getelementptr inbounds %struct.onfi_ext_ecc_info, %struct.onfi_ext_ecc_info* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %110
  %118 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %135

119:                                              ; preds = %110
  %120 = load %struct.onfi_ext_ecc_info*, %struct.onfi_ext_ecc_info** %8, align 8
  %121 = getelementptr inbounds %struct.onfi_ext_ecc_info, %struct.onfi_ext_ecc_info* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %124 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  store i32 %122, i32* %126, align 4
  %127 = load %struct.onfi_ext_ecc_info*, %struct.onfi_ext_ecc_info** %8, align 8
  %128 = getelementptr inbounds %struct.onfi_ext_ecc_info, %struct.onfi_ext_ecc_info* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = shl i32 1, %129
  %131 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %132 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  store i32 %130, i32* %134, align 4
  store i32 0, i32* %10, align 4
  br label %135

135:                                              ; preds = %119, %117, %108, %70, %62, %46, %32
  %136 = load %struct.onfi_ext_param_page*, %struct.onfi_ext_param_page** %6, align 8
  %137 = call i32 @kfree(%struct.onfi_ext_param_page* %136)
  %138 = load i32, i32* %10, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %135, %24
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local %struct.onfi_ext_param_page* @kmalloc(i32, i32) #1

declare dso_local i32 @nand_read_param_page_op(%struct.nand_chip*, i32, i32*, i32) #1

declare dso_local i32 @nand_change_read_column_op(%struct.nand_chip*, i32, %struct.onfi_ext_param_page*, i32, i32) #1

declare dso_local i64 @onfi_crc16(i32, i32*, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.onfi_ext_param_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
