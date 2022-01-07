; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_nand_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_nand_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mtk_nfc = type { i32, i32, i32 }
%struct.device_node = type { i32 }
%struct.mtk_nfc_nand_chip = type { i32, i32*, i32, %struct.nand_chip }
%struct.nand_chip = type { i32, %struct.TYPE_5__, %struct.TYPE_4__, i32* }
%struct.TYPE_5__ = type { i8*, i8*, i32, i32, i32, i8*, i8*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mtd_info = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.device* }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@MTK_NAND_MAX_NSELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid reg property size %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"reg property failure : %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"invalid CS: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"CS %u already assigned\0A\00", align 1
@NAND_USE_BOUNCE_BUFFER = common dso_local global i32 0, align 4
@NAND_SUBPAGE_READ = common dso_local global i32 0, align 4
@mtk_nfc_dev_ready = common dso_local global i32 0, align 4
@mtk_nfc_select_chip = common dso_local global i32 0, align 4
@mtk_nfc_write_byte = common dso_local global i32 0, align 4
@mtk_nfc_write_buf = common dso_local global i32 0, align 4
@mtk_nfc_read_byte = common dso_local global i32 0, align 4
@mtk_nfc_read_buf = common dso_local global i32 0, align 4
@mtk_nfc_cmd_ctrl = common dso_local global i32 0, align 4
@NAND_ECC_HW = common dso_local global i32 0, align 4
@mtk_nfc_write_subpage_hwecc = common dso_local global i32 0, align 4
@mtk_nfc_write_page_raw = common dso_local global i32 0, align 4
@mtk_nfc_write_page_hwecc = common dso_local global i32 0, align 4
@mtk_nfc_write_oob_std = common dso_local global i8* null, align 8
@mtk_nfc_read_subpage_hwecc = common dso_local global i32 0, align 4
@mtk_nfc_read_page_raw = common dso_local global i32 0, align 4
@mtk_nfc_read_page_hwecc = common dso_local global i32 0, align 4
@mtk_nfc_read_oob_std = common dso_local global i8* null, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@MTK_NAME = common dso_local global i32 0, align 4
@mtk_nfc_ooblayout_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"mtd parse partition error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.mtk_nfc*, %struct.device_node*)* @mtk_nfc_nand_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_nfc_nand_chip_init(%struct.device* %0, %struct.mtk_nfc* %1, %struct.device_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.mtk_nfc*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.mtk_nfc_nand_chip*, align 8
  %9 = alloca %struct.nand_chip*, align 8
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.mtk_nfc* %1, %struct.mtk_nfc** %6, align 8
  store %struct.device_node* %2, %struct.device_node** %7, align 8
  %15 = load %struct.device_node*, %struct.device_node** %7, align 8
  %16 = call i32 @of_get_property(%struct.device_node* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %11)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %236

21:                                               ; preds = %3
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = udiv i64 %23, 4
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @MTK_NAND_MAX_NSELS, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28, %21
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %236

38:                                               ; preds = %28
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = add i64 136, %42
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.mtk_nfc_nand_chip* @devm_kzalloc(%struct.device* %39, i32 %44, i32 %45)
  store %struct.mtk_nfc_nand_chip* %46, %struct.mtk_nfc_nand_chip** %8, align 8
  %47 = load %struct.mtk_nfc_nand_chip*, %struct.mtk_nfc_nand_chip** %8, align 8
  %48 = icmp ne %struct.mtk_nfc_nand_chip* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %38
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %236

52:                                               ; preds = %38
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.mtk_nfc_nand_chip*, %struct.mtk_nfc_nand_chip** %8, align 8
  %55 = getelementptr inbounds %struct.mtk_nfc_nand_chip, %struct.mtk_nfc_nand_chip* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  store i32 0, i32* %14, align 4
  br label %56

56:                                               ; preds = %101, %52
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %104

60:                                               ; preds = %56
  %61 = load %struct.device_node*, %struct.device_node** %7, align 8
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @of_property_read_u32_index(%struct.device_node* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %62, i32* %12)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load %struct.device*, %struct.device** %5, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %4, align 4
  br label %236

71:                                               ; preds = %60
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @MTK_NAND_MAX_NSELS, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load %struct.device*, %struct.device** %5, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %236

81:                                               ; preds = %71
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.mtk_nfc*, %struct.mtk_nfc** %6, align 8
  %84 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %83, i32 0, i32 2
  %85 = call i64 @test_and_set_bit(i32 %82, i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load %struct.device*, %struct.device** %5, align 8
  %89 = load i32, i32* %12, align 4
  %90 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %236

93:                                               ; preds = %81
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.mtk_nfc_nand_chip*, %struct.mtk_nfc_nand_chip** %8, align 8
  %96 = getelementptr inbounds %struct.mtk_nfc_nand_chip, %struct.mtk_nfc_nand_chip* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %94, i32* %100, align 4
  br label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %14, align 4
  br label %56

104:                                              ; preds = %56
  %105 = load %struct.mtk_nfc_nand_chip*, %struct.mtk_nfc_nand_chip** %8, align 8
  %106 = getelementptr inbounds %struct.mtk_nfc_nand_chip, %struct.mtk_nfc_nand_chip* %105, i32 0, i32 3
  store %struct.nand_chip* %106, %struct.nand_chip** %9, align 8
  %107 = load %struct.mtk_nfc*, %struct.mtk_nfc** %6, align 8
  %108 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %107, i32 0, i32 1
  %109 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %110 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %109, i32 0, i32 3
  store i32* %108, i32** %110, align 8
  %111 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %112 = load %struct.device_node*, %struct.device_node** %7, align 8
  %113 = call i32 @nand_set_flash_node(%struct.nand_chip* %111, %struct.device_node* %112)
  %114 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %115 = load %struct.mtk_nfc*, %struct.mtk_nfc** %6, align 8
  %116 = call i32 @nand_set_controller_data(%struct.nand_chip* %114, %struct.mtk_nfc* %115)
  %117 = load i32, i32* @NAND_USE_BOUNCE_BUFFER, align 4
  %118 = load i32, i32* @NAND_SUBPAGE_READ, align 4
  %119 = or i32 %117, %118
  %120 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %121 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  %124 = load i32, i32* @mtk_nfc_dev_ready, align 4
  %125 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %126 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 6
  store i32 %124, i32* %127, align 8
  %128 = load i32, i32* @mtk_nfc_select_chip, align 4
  %129 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %130 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 5
  store i32 %128, i32* %131, align 4
  %132 = load i32, i32* @mtk_nfc_write_byte, align 4
  %133 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %134 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 4
  store i32 %132, i32* %135, align 8
  %136 = load i32, i32* @mtk_nfc_write_buf, align 4
  %137 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %138 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 3
  store i32 %136, i32* %139, align 4
  %140 = load i32, i32* @mtk_nfc_read_byte, align 4
  %141 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %142 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  store i32 %140, i32* %143, align 8
  %144 = load i32, i32* @mtk_nfc_read_buf, align 4
  %145 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %146 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  store i32 %144, i32* %147, align 4
  %148 = load i32, i32* @mtk_nfc_cmd_ctrl, align 4
  %149 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %150 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  store i32 %148, i32* %151, align 8
  %152 = load i32, i32* @NAND_ECC_HW, align 4
  %153 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %154 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 10
  store i32 %152, i32* %155, align 4
  %156 = load i32, i32* @mtk_nfc_write_subpage_hwecc, align 4
  %157 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %158 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 9
  store i32 %156, i32* %159, align 8
  %160 = load i32, i32* @mtk_nfc_write_page_raw, align 4
  %161 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %162 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 8
  store i32 %160, i32* %163, align 4
  %164 = load i32, i32* @mtk_nfc_write_page_hwecc, align 4
  %165 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %166 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 7
  store i32 %164, i32* %167, align 8
  %168 = load i8*, i8** @mtk_nfc_write_oob_std, align 8
  %169 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %170 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 6
  store i8* %168, i8** %171, align 8
  %172 = load i8*, i8** @mtk_nfc_write_oob_std, align 8
  %173 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %174 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 5
  store i8* %172, i8** %175, align 8
  %176 = load i32, i32* @mtk_nfc_read_subpage_hwecc, align 4
  %177 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %178 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 4
  store i32 %176, i32* %179, align 8
  %180 = load i32, i32* @mtk_nfc_read_page_raw, align 4
  %181 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %182 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 3
  store i32 %180, i32* %183, align 4
  %184 = load i32, i32* @mtk_nfc_read_page_hwecc, align 4
  %185 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %186 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 2
  store i32 %184, i32* %187, align 8
  %188 = load i8*, i8** @mtk_nfc_read_oob_std, align 8
  %189 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %190 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 1
  store i8* %188, i8** %191, align 8
  %192 = load i8*, i8** @mtk_nfc_read_oob_std, align 8
  %193 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %194 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  store i8* %192, i8** %195, align 8
  %196 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %197 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %196)
  store %struct.mtd_info* %197, %struct.mtd_info** %10, align 8
  %198 = load i32, i32* @THIS_MODULE, align 4
  %199 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %200 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %199, i32 0, i32 2
  store i32 %198, i32* %200, align 8
  %201 = load %struct.device*, %struct.device** %5, align 8
  %202 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %203 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  store %struct.device* %201, %struct.device** %204, align 8
  %205 = load i32, i32* @MTK_NAME, align 4
  %206 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %207 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 8
  %208 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %209 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %208, i32* @mtk_nfc_ooblayout_ops)
  %210 = load %struct.mtk_nfc*, %struct.mtk_nfc** %6, align 8
  %211 = call i32 @mtk_nfc_hw_init(%struct.mtk_nfc* %210)
  %212 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %213 = load i32, i32* %11, align 4
  %214 = call i32 @nand_scan(%struct.nand_chip* %212, i32 %213)
  store i32 %214, i32* %13, align 4
  %215 = load i32, i32* %13, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %104
  %218 = load i32, i32* %13, align 4
  store i32 %218, i32* %4, align 4
  br label %236

219:                                              ; preds = %104
  %220 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %221 = call i32 @mtd_device_register(%struct.mtd_info* %220, i32* null, i32 0)
  store i32 %221, i32* %13, align 4
  %222 = load i32, i32* %13, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %219
  %225 = load %struct.device*, %struct.device** %5, align 8
  %226 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %225, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %227 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %228 = call i32 @nand_release(%struct.nand_chip* %227)
  %229 = load i32, i32* %13, align 4
  store i32 %229, i32* %4, align 4
  br label %236

230:                                              ; preds = %219
  %231 = load %struct.mtk_nfc_nand_chip*, %struct.mtk_nfc_nand_chip** %8, align 8
  %232 = getelementptr inbounds %struct.mtk_nfc_nand_chip, %struct.mtk_nfc_nand_chip* %231, i32 0, i32 2
  %233 = load %struct.mtk_nfc*, %struct.mtk_nfc** %6, align 8
  %234 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %233, i32 0, i32 0
  %235 = call i32 @list_add_tail(i32* %232, i32* %234)
  store i32 0, i32* %4, align 4
  br label %236

236:                                              ; preds = %230, %224, %217, %87, %75, %66, %49, %32, %18
  %237 = load i32, i32* %4, align 4
  ret i32 %237
}

declare dso_local i32 @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.mtk_nfc_nand_chip* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @nand_set_flash_node(%struct.nand_chip*, %struct.device_node*) #1

declare dso_local i32 @nand_set_controller_data(%struct.nand_chip*, %struct.mtk_nfc*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @mtd_set_ooblayout(%struct.mtd_info*, i32*) #1

declare dso_local i32 @mtk_nfc_hw_init(%struct.mtk_nfc*) #1

declare dso_local i32 @nand_scan(%struct.nand_chip*, i32) #1

declare dso_local i32 @mtd_device_register(%struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @nand_release(%struct.nand_chip*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
