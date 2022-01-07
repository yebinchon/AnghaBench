; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mpc5121_nfc.c_mpc5121_nfc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mpc5121_nfc.c_mpc5121_nfc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.clk = type { i32 }
%struct.mpc5121_nfc_prv = type { i64, i32, %struct.clk*, i32, %struct.device*, %struct.nand_chip }
%struct.nand_chip = type { %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.resource = type { i64 }
%struct.mtd_info = type { i8*, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device* }

@SPRN_SVR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"SoC revision %u is not supported!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unable to read NFC config!\0A\00", align 1
@NO_IRQ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"Error mapping IRQ!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Error parsing memory region!\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"chips\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Invalid/missing 'chips' property!\0A\00", align 1
@DRV_NAME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Error requesting memory region!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"Error mapping memory region!\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"MPC5121 NAND\00", align 1
@mpc5121_nfc_dev_ready = common dso_local global i32 0, align 4
@mpc5121_nfc_command = common dso_local global i32 0, align 4
@mpc5121_nfc_read_byte = common dso_local global i32 0, align 4
@mpc5121_nfc_read_buf = common dso_local global i32 0, align 4
@mpc5121_nfc_write_buf = common dso_local global i32 0, align 4
@mpc5121_nfc_select_chip = common dso_local global i32 0, align 4
@nand_get_set_features_notsupp = common dso_local global i8* null, align 8
@NAND_BBT_USE_FLASH = common dso_local global i32 0, align 4
@NAND_ECC_SOFT = common dso_local global i32 0, align 4
@NAND_ECC_HAMMING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"fsl,mpc5121ads\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Chipselect init error!\0A\00", align 1
@ads5121_select_chip = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Unable to acquire NFC clock!\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Unable to enable NFC clock!\0A\00", align 1
@NFC_CONFIG1 = common dso_local global i32 0, align 4
@NFC_RESET = common dso_local global i32 0, align 4
@NFC_RESET_TIMEOUT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [30 x i8] c"Timeout while resetting NFC!\0A\00", align 1
@NFC_CONFIG = common dso_local global i32 0, align 4
@NFC_BLS_UNLOCKED = common dso_local global i32 0, align 4
@NFC_UNLOCKSTART_BLK0 = common dso_local global i32 0, align 4
@NFC_UNLOCKEND_BLK0 = common dso_local global i32 0, align 4
@NFC_WRPROT = common dso_local global i32 0, align 4
@NFC_WPC_UNLOCK = common dso_local global i32 0, align 4
@NFC_BIG_ENDIAN = common dso_local global i32 0, align 4
@NFC_INT_MASK = common dso_local global i32 0, align 4
@NFC_FULL_PAGE_INT = common dso_local global i32 0, align 4
@NFC_SPAS = common dso_local global i32 0, align 4
@mpc5121_nfc_irq = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [23 x i8] c"Error requesting IRQ!\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"NAND Flash not found !\0A\00", align 1
@NFC_PPB_32 = common dso_local global i32 0, align 4
@NFC_PPB_64 = common dso_local global i32 0, align 4
@NFC_PPB_128 = common dso_local global i32 0, align 4
@NFC_PPB_256 = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [25 x i8] c"Unsupported NAND flash!\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"Error adding MTD device!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mpc5121_nfc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc5121_nfc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.mpc5121_nfc_prv*, align 8
  %8 = alloca %struct.resource, align 8
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca %struct.nand_chip*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load %struct.device_node*, %struct.device_node** %20, align 8
  store %struct.device_node* %21, %struct.device_node** %4, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  store %struct.device* %23, %struct.device** %6, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %24 = load i32, i32* @SPRN_SVR, align 4
  %25 = call i32 @mfspr(i32 %24)
  %26 = ashr i32 %25, 4
  %27 = and i32 %26, 15
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = icmp ne i32 %28, 2
  br i1 %29, label %30, label %39

30:                                               ; preds = %1
  %31 = load i32, i32* %16, align 4
  %32 = icmp ne i32 %31, 3
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = load i32, i32* %16, align 4
  %36 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @ENXIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %356

39:                                               ; preds = %30, %1
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.mpc5121_nfc_prv* @devm_kzalloc(%struct.device* %40, i32 104, i32 %41)
  store %struct.mpc5121_nfc_prv* %42, %struct.mpc5121_nfc_prv** %7, align 8
  %43 = load %struct.mpc5121_nfc_prv*, %struct.mpc5121_nfc_prv** %7, align 8
  %44 = icmp ne %struct.mpc5121_nfc_prv* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %356

48:                                               ; preds = %39
  %49 = load %struct.mpc5121_nfc_prv*, %struct.mpc5121_nfc_prv** %7, align 8
  %50 = getelementptr inbounds %struct.mpc5121_nfc_prv, %struct.mpc5121_nfc_prv* %49, i32 0, i32 5
  store %struct.nand_chip* %50, %struct.nand_chip** %10, align 8
  %51 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %52 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %51)
  store %struct.mtd_info* %52, %struct.mtd_info** %9, align 8
  %53 = load %struct.device*, %struct.device** %6, align 8
  %54 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %55 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store %struct.device* %53, %struct.device** %56, align 8
  %57 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %58 = load %struct.mpc5121_nfc_prv*, %struct.mpc5121_nfc_prv** %7, align 8
  %59 = call i32 @nand_set_controller_data(%struct.nand_chip* %57, %struct.mpc5121_nfc_prv* %58)
  %60 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %61 = load %struct.device_node*, %struct.device_node** %4, align 8
  %62 = call i32 @nand_set_flash_node(%struct.nand_chip* %60, %struct.device_node* %61)
  %63 = load %struct.device*, %struct.device** %6, align 8
  %64 = load %struct.mpc5121_nfc_prv*, %struct.mpc5121_nfc_prv** %7, align 8
  %65 = getelementptr inbounds %struct.mpc5121_nfc_prv, %struct.mpc5121_nfc_prv* %64, i32 0, i32 4
  store %struct.device* %63, %struct.device** %65, align 8
  %66 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %67 = call i32 @mpc5121_nfc_read_hw_config(%struct.mtd_info* %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %48
  %71 = load %struct.device*, %struct.device** %6, align 8
  %72 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* %15, align 4
  store i32 %73, i32* %2, align 4
  br label %356

74:                                               ; preds = %48
  %75 = load %struct.device_node*, %struct.device_node** %4, align 8
  %76 = call i64 @irq_of_parse_and_map(%struct.device_node* %75, i32 0)
  %77 = load %struct.mpc5121_nfc_prv*, %struct.mpc5121_nfc_prv** %7, align 8
  %78 = getelementptr inbounds %struct.mpc5121_nfc_prv, %struct.mpc5121_nfc_prv* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.mpc5121_nfc_prv*, %struct.mpc5121_nfc_prv** %7, align 8
  %80 = getelementptr inbounds %struct.mpc5121_nfc_prv, %struct.mpc5121_nfc_prv* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @NO_IRQ, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %74
  %85 = load %struct.device*, %struct.device** %6, align 8
  %86 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %85, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %356

89:                                               ; preds = %74
  %90 = load %struct.device_node*, %struct.device_node** %4, align 8
  %91 = call i32 @of_address_to_resource(%struct.device_node* %90, i32 0, %struct.resource* %8)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load %struct.device*, %struct.device** %6, align 8
  %96 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %95, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i32, i32* %15, align 4
  store i32 %97, i32* %2, align 4
  br label %356

98:                                               ; preds = %89
  %99 = load %struct.device_node*, %struct.device_node** %4, align 8
  %100 = call i32* @of_get_property(%struct.device_node* %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32* %17)
  store i32* %100, i32** %13, align 8
  %101 = load i32*, i32** %13, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32, i32* %17, align 4
  %105 = sext i32 %104 to i64
  %106 = icmp ne i64 %105, 4
  br i1 %106, label %107, label %112

107:                                              ; preds = %103, %98
  %108 = load %struct.device*, %struct.device** %6, align 8
  %109 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %108, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %356

112:                                              ; preds = %103
  %113 = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %11, align 8
  %115 = call i64 @resource_size(%struct.resource* %8)
  store i64 %115, i64* %12, align 8
  %116 = load %struct.device*, %struct.device** %6, align 8
  %117 = load i64, i64* %11, align 8
  %118 = load i64, i64* %12, align 8
  %119 = load i32, i32* @DRV_NAME, align 4
  %120 = call i32 @devm_request_mem_region(%struct.device* %116, i64 %117, i64 %118, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %112
  %123 = load %struct.device*, %struct.device** %6, align 8
  %124 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %123, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %125 = load i32, i32* @EBUSY, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %2, align 4
  br label %356

127:                                              ; preds = %112
  %128 = load %struct.device*, %struct.device** %6, align 8
  %129 = load i64, i64* %11, align 8
  %130 = load i64, i64* %12, align 8
  %131 = call i32 @devm_ioremap(%struct.device* %128, i64 %129, i64 %130)
  %132 = load %struct.mpc5121_nfc_prv*, %struct.mpc5121_nfc_prv** %7, align 8
  %133 = getelementptr inbounds %struct.mpc5121_nfc_prv, %struct.mpc5121_nfc_prv* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 8
  %134 = load %struct.mpc5121_nfc_prv*, %struct.mpc5121_nfc_prv** %7, align 8
  %135 = getelementptr inbounds %struct.mpc5121_nfc_prv, %struct.mpc5121_nfc_prv* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %127
  %139 = load %struct.device*, %struct.device** %6, align 8
  %140 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %139, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %2, align 4
  br label %356

143:                                              ; preds = %127
  %144 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %145 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %144, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** %145, align 8
  %146 = load i32, i32* @mpc5121_nfc_dev_ready, align 4
  %147 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %148 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 7
  store i32 %146, i32* %149, align 8
  %150 = load i32, i32* @mpc5121_nfc_command, align 4
  %151 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %152 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 6
  store i32 %150, i32* %153, align 4
  %154 = load i32, i32* @mpc5121_nfc_read_byte, align 4
  %155 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %156 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 5
  store i32 %154, i32* %157, align 8
  %158 = load i32, i32* @mpc5121_nfc_read_buf, align 4
  %159 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %160 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 4
  store i32 %158, i32* %161, align 4
  %162 = load i32, i32* @mpc5121_nfc_write_buf, align 4
  %163 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %164 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 3
  store i32 %162, i32* %165, align 8
  %166 = load i32, i32* @mpc5121_nfc_select_chip, align 4
  %167 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %168 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  store i32 %166, i32* %169, align 8
  %170 = load i8*, i8** @nand_get_set_features_notsupp, align 8
  %171 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %172 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 2
  store i8* %170, i8** %173, align 8
  %174 = load i8*, i8** @nand_get_set_features_notsupp, align 8
  %175 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %176 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  store i8* %174, i8** %177, align 8
  %178 = load i32, i32* @NAND_BBT_USE_FLASH, align 4
  %179 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %180 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  %181 = load i32, i32* @NAND_ECC_SOFT, align 4
  %182 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %183 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  store i32 %181, i32* %184, align 4
  %185 = load i32, i32* @NAND_ECC_HAMMING, align 4
  %186 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %187 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  store i32 %185, i32* %188, align 8
  %189 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %205

191:                                              ; preds = %143
  %192 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %193 = call i32 @ads5121_chipselect_init(%struct.mtd_info* %192)
  store i32 %193, i32* %15, align 4
  %194 = load i32, i32* %15, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %191
  %197 = load %struct.device*, %struct.device** %6, align 8
  %198 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %197, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %199 = load i32, i32* %15, align 4
  store i32 %199, i32* %2, align 4
  br label %356

200:                                              ; preds = %191
  %201 = load i32, i32* @ads5121_select_chip, align 4
  %202 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %203 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  store i32 %201, i32* %204, align 8
  br label %205

205:                                              ; preds = %200, %143
  %206 = load %struct.device*, %struct.device** %6, align 8
  %207 = call %struct.clk* @devm_clk_get(%struct.device* %206, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  store %struct.clk* %207, %struct.clk** %5, align 8
  %208 = load %struct.clk*, %struct.clk** %5, align 8
  %209 = call i64 @IS_ERR(%struct.clk* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %205
  %212 = load %struct.device*, %struct.device** %6, align 8
  %213 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %212, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  %214 = load %struct.clk*, %struct.clk** %5, align 8
  %215 = call i32 @PTR_ERR(%struct.clk* %214)
  store i32 %215, i32* %15, align 4
  br label %351

216:                                              ; preds = %205
  %217 = load %struct.clk*, %struct.clk** %5, align 8
  %218 = call i32 @clk_prepare_enable(%struct.clk* %217)
  store i32 %218, i32* %15, align 4
  %219 = load i32, i32* %15, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %216
  %222 = load %struct.device*, %struct.device** %6, align 8
  %223 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %222, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  br label %351

224:                                              ; preds = %216
  %225 = load %struct.clk*, %struct.clk** %5, align 8
  %226 = load %struct.mpc5121_nfc_prv*, %struct.mpc5121_nfc_prv** %7, align 8
  %227 = getelementptr inbounds %struct.mpc5121_nfc_prv, %struct.mpc5121_nfc_prv* %226, i32 0, i32 2
  store %struct.clk* %225, %struct.clk** %227, align 8
  %228 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %229 = load i32, i32* @NFC_CONFIG1, align 4
  %230 = load i32, i32* @NFC_RESET, align 4
  %231 = call i32 @nfc_set(%struct.mtd_info* %228, i32 %229, i32 %230)
  br label %232

232:                                              ; preds = %249, %224
  %233 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %234 = load i32, i32* @NFC_CONFIG1, align 4
  %235 = call i32 @nfc_read(%struct.mtd_info* %233, i32 %234)
  %236 = load i32, i32* @NFC_RESET, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %251

239:                                              ; preds = %232
  %240 = load i32, i32* %14, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %14, align 4
  %242 = load i32, i32* @NFC_RESET_TIMEOUT, align 4
  %243 = icmp sge i32 %240, %242
  br i1 %243, label %244, label %249

244:                                              ; preds = %239
  %245 = load %struct.device*, %struct.device** %6, align 8
  %246 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %245, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0))
  %247 = load i32, i32* @EINVAL, align 4
  %248 = sub nsw i32 0, %247
  store i32 %248, i32* %15, align 4
  br label %351

249:                                              ; preds = %239
  %250 = call i32 @udelay(i32 1)
  br label %232

251:                                              ; preds = %232
  %252 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %253 = load i32, i32* @NFC_CONFIG, align 4
  %254 = load i32, i32* @NFC_BLS_UNLOCKED, align 4
  %255 = call i32 @nfc_write(%struct.mtd_info* %252, i32 %253, i32 %254)
  %256 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %257 = load i32, i32* @NFC_UNLOCKSTART_BLK0, align 4
  %258 = call i32 @nfc_write(%struct.mtd_info* %256, i32 %257, i32 0)
  %259 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %260 = load i32, i32* @NFC_UNLOCKEND_BLK0, align 4
  %261 = call i32 @nfc_write(%struct.mtd_info* %259, i32 %260, i32 65535)
  %262 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %263 = load i32, i32* @NFC_WRPROT, align 4
  %264 = load i32, i32* @NFC_WPC_UNLOCK, align 4
  %265 = call i32 @nfc_write(%struct.mtd_info* %262, i32 %263, i32 %264)
  %266 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %267 = load i32, i32* @NFC_CONFIG1, align 4
  %268 = load i32, i32* @NFC_BIG_ENDIAN, align 4
  %269 = load i32, i32* @NFC_INT_MASK, align 4
  %270 = or i32 %268, %269
  %271 = load i32, i32* @NFC_FULL_PAGE_INT, align 4
  %272 = or i32 %270, %271
  %273 = call i32 @nfc_write(%struct.mtd_info* %266, i32 %267, i32 %272)
  %274 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %275 = load i32, i32* @NFC_SPAS, align 4
  %276 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %277 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = ashr i32 %278, 1
  %280 = call i32 @nfc_write(%struct.mtd_info* %274, i32 %275, i32 %279)
  %281 = load %struct.mpc5121_nfc_prv*, %struct.mpc5121_nfc_prv** %7, align 8
  %282 = getelementptr inbounds %struct.mpc5121_nfc_prv, %struct.mpc5121_nfc_prv* %281, i32 0, i32 1
  %283 = call i32 @init_waitqueue_head(i32* %282)
  %284 = load %struct.device*, %struct.device** %6, align 8
  %285 = load %struct.mpc5121_nfc_prv*, %struct.mpc5121_nfc_prv** %7, align 8
  %286 = getelementptr inbounds %struct.mpc5121_nfc_prv, %struct.mpc5121_nfc_prv* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load i32, i32* @DRV_NAME, align 4
  %289 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %290 = call i32 @devm_request_irq(%struct.device* %284, i64 %287, i32* @mpc5121_nfc_irq, i32 0, i32 %288, %struct.mtd_info* %289)
  store i32 %290, i32* %15, align 4
  %291 = load i32, i32* %15, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %251
  %294 = load %struct.device*, %struct.device** %6, align 8
  %295 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %294, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0))
  br label %351

296:                                              ; preds = %251
  %297 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %298 = load i32*, i32** %13, align 8
  %299 = call i32 @be32_to_cpup(i32* %298)
  %300 = call i32 @nand_scan(%struct.nand_chip* %297, i32 %299)
  store i32 %300, i32* %15, align 4
  %301 = load i32, i32* %15, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %306

303:                                              ; preds = %296
  %304 = load %struct.device*, %struct.device** %6, align 8
  %305 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %304, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0))
  br label %351

306:                                              ; preds = %296
  %307 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %308 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %311 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 8
  %313 = sdiv i32 %309, %312
  switch i32 %313, label %334 [
    i32 32, label %314
    i32 64, label %319
    i32 128, label %324
    i32 256, label %329
  ]

314:                                              ; preds = %306
  %315 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %316 = load i32, i32* @NFC_CONFIG1, align 4
  %317 = load i32, i32* @NFC_PPB_32, align 4
  %318 = call i32 @nfc_set(%struct.mtd_info* %315, i32 %316, i32 %317)
  br label %339

319:                                              ; preds = %306
  %320 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %321 = load i32, i32* @NFC_CONFIG1, align 4
  %322 = load i32, i32* @NFC_PPB_64, align 4
  %323 = call i32 @nfc_set(%struct.mtd_info* %320, i32 %321, i32 %322)
  br label %339

324:                                              ; preds = %306
  %325 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %326 = load i32, i32* @NFC_CONFIG1, align 4
  %327 = load i32, i32* @NFC_PPB_128, align 4
  %328 = call i32 @nfc_set(%struct.mtd_info* %325, i32 %326, i32 %327)
  br label %339

329:                                              ; preds = %306
  %330 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %331 = load i32, i32* @NFC_CONFIG1, align 4
  %332 = load i32, i32* @NFC_PPB_256, align 4
  %333 = call i32 @nfc_set(%struct.mtd_info* %330, i32 %331, i32 %332)
  br label %339

334:                                              ; preds = %306
  %335 = load %struct.device*, %struct.device** %6, align 8
  %336 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %335, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0))
  %337 = load i32, i32* @ENXIO, align 4
  %338 = sub nsw i32 0, %337
  store i32 %338, i32* %15, align 4
  br label %351

339:                                              ; preds = %329, %324, %319, %314
  %340 = load %struct.device*, %struct.device** %6, align 8
  %341 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %342 = call i32 @dev_set_drvdata(%struct.device* %340, %struct.mtd_info* %341)
  %343 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %344 = call i32 @mtd_device_register(%struct.mtd_info* %343, i32* null, i32 0)
  store i32 %344, i32* %15, align 4
  %345 = load i32, i32* %15, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %350

347:                                              ; preds = %339
  %348 = load %struct.device*, %struct.device** %6, align 8
  %349 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %348, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0))
  br label %351

350:                                              ; preds = %339
  store i32 0, i32* %2, align 4
  br label %356

351:                                              ; preds = %347, %334, %303, %293, %244, %221, %211
  %352 = load %struct.device*, %struct.device** %6, align 8
  %353 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %354 = call i32 @mpc5121_nfc_free(%struct.device* %352, %struct.mtd_info* %353)
  %355 = load i32, i32* %15, align 4
  store i32 %355, i32* %2, align 4
  br label %356

356:                                              ; preds = %351, %350, %196, %138, %122, %107, %94, %84, %70, %45, %33
  %357 = load i32, i32* %2, align 4
  ret i32 %357
}

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.mpc5121_nfc_prv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nand_set_controller_data(%struct.nand_chip*, %struct.mpc5121_nfc_prv*) #1

declare dso_local i32 @nand_set_flash_node(%struct.nand_chip*, %struct.device_node*) #1

declare dso_local i32 @mpc5121_nfc_read_hw_config(%struct.mtd_info*) #1

declare dso_local i64 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_request_mem_region(%struct.device*, i64, i64, i32) #1

declare dso_local i32 @devm_ioremap(%struct.device*, i64, i64) #1

declare dso_local i64 @of_machine_is_compatible(i8*) #1

declare dso_local i32 @ads5121_chipselect_init(%struct.mtd_info*) #1

declare dso_local %struct.clk* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @nfc_set(%struct.mtd_info*, i32, i32) #1

declare dso_local i32 @nfc_read(%struct.mtd_info*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @nfc_write(%struct.mtd_info*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i64, i32*, i32, i32, %struct.mtd_info*) #1

declare dso_local i32 @nand_scan(%struct.nand_chip*, i32) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.mtd_info*) #1

declare dso_local i32 @mtd_device_register(%struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @mpc5121_nfc_free(%struct.device*, %struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
