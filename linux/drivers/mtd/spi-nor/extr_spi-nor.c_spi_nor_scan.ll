; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32, i32, %struct.spi_nor_flash_parameter, i32, %struct.flash_info*, i32, i32, i32, i8*, i8*, i8*, %struct.mtd_info, %struct.device* }
%struct.spi_nor_flash_parameter = type { i32, i32, i64 }
%struct.flash_info = type { i32, i32 }
%struct.mtd_info = type { i32, i32, i32, i32, %struct.TYPE_4__*, i64, i32, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.spi_nor* }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.spi_nor_hwcaps = type { i32 }
%struct.device_node = type { i32 }

@SNOR_PROTO_1_1_1 = common dso_local global i8* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SPI_NOR_XSR_RDY = common dso_local global i32 0, align 4
@SNOR_F_READY_XSR_RDY = common dso_local global i32 0, align 4
@SPI_NOR_HAS_LOCK = common dso_local global i32 0, align 4
@SNOR_F_HAS_LOCK = common dso_local global i32 0, align 4
@SNOR_MFR_ATMEL = common dso_local global i64 0, align 8
@SNOR_MFR_INTEL = common dso_local global i64 0, align 8
@SNOR_MFR_SST = common dso_local global i64 0, align 8
@spi_nor_clear_sr_bp = common dso_local global i32 0, align 4
@MTD_NORFLASH = common dso_local global i32 0, align 4
@MTD_CAP_NORFLASH = common dso_local global i32 0, align 4
@spi_nor_erase = common dso_local global i32 0, align 4
@spi_nor_read = common dso_local global i32 0, align 4
@spi_nor_resume = common dso_local global i32 0, align 4
@spi_nor_lock = common dso_local global i32 0, align 4
@spi_nor_unlock = common dso_local global i32 0, align 4
@spi_nor_is_locked = common dso_local global i32 0, align 4
@SST_WRITE = common dso_local global i32 0, align 4
@sst_write = common dso_local global i32 0, align 4
@spi_nor_write = common dso_local global i32 0, align 4
@USE_FSR = common dso_local global i32 0, align 4
@SNOR_F_USE_FSR = common dso_local global i32 0, align 4
@SPI_NOR_HAS_TB = common dso_local global i32 0, align 4
@SNOR_F_HAS_SR_TB = common dso_local global i32 0, align 4
@NO_CHIP_ERASE = common dso_local global i32 0, align 4
@SNOR_F_NO_OP_CHIP_ERASE = common dso_local global i32 0, align 4
@USE_CLSR = common dso_local global i32 0, align 4
@SNOR_F_USE_CLSR = common dso_local global i32 0, align 4
@SPI_NOR_NO_ERASE = common dso_local global i32 0, align 4
@MTD_NO_ERASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"broken-flash-reset\00", align 1
@SNOR_F_BROKEN_RESET = common dso_local global i32 0, align 4
@SPI_NOR_4B_OPCODES = common dso_local global i32 0, align 4
@SNOR_F_4B_OPCODES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"%s (%lld Kbytes)\0A\00", align 1
@.str.2 = private unnamed_addr constant [93 x i8] c"mtd .name = %s, .size = 0x%llx (%lldMiB), .erasesize = 0x%.8x (%uKiB) .numeraseregions = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [91 x i8] c"mtd.eraseregions[%d] = { .offset = 0x%llx, .erasesize = 0x%.8x (%uKiB), .numblocks = %d }\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_nor_scan(%struct.spi_nor* %0, i8* %1, %struct.spi_nor_hwcaps* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_nor*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.spi_nor_hwcaps*, align 8
  %8 = alloca %struct.flash_info*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca %struct.device_node*, align 8
  %12 = alloca %struct.spi_nor_flash_parameter*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.spi_nor_hwcaps* %2, %struct.spi_nor_hwcaps** %7, align 8
  %15 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %16 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %15, i32 0, i32 12
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %9, align 8
  %18 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %19 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %18, i32 0, i32 11
  store %struct.mtd_info* %19, %struct.mtd_info** %10, align 8
  %20 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %21 = call %struct.device_node* @spi_nor_get_flash_node(%struct.spi_nor* %20)
  store %struct.device_node* %21, %struct.device_node** %11, align 8
  %22 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %23 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %22, i32 0, i32 2
  store %struct.spi_nor_flash_parameter* %23, %struct.spi_nor_flash_parameter** %12, align 8
  %24 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %25 = call i32 @spi_nor_check(%struct.spi_nor* %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %4, align 4
  br label %419

30:                                               ; preds = %3
  %31 = load i8*, i8** @SNOR_PROTO_1_1_1, align 8
  %32 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %33 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %32, i32 0, i32 10
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** @SNOR_PROTO_1_1_1, align 8
  %35 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %36 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %35, i32 0, i32 9
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** @SNOR_PROTO_1_1_1, align 8
  %38 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %39 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %38, i32 0, i32 8
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %42 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 8
  %43 = load %struct.device*, %struct.device** %9, align 8
  %44 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %45 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i32 @devm_kmalloc(%struct.device* %43, i32 %46, i32 %47)
  %49 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %50 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 4
  %51 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %52 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %30
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %419

58:                                               ; preds = %30
  %59 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = call %struct.flash_info* @spi_nor_get_flash_info(%struct.spi_nor* %59, i8* %60)
  store %struct.flash_info* %61, %struct.flash_info** %8, align 8
  %62 = load %struct.flash_info*, %struct.flash_info** %8, align 8
  %63 = call i64 @IS_ERR(%struct.flash_info* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load %struct.flash_info*, %struct.flash_info** %8, align 8
  %67 = call i32 @PTR_ERR(%struct.flash_info* %66)
  store i32 %67, i32* %4, align 4
  br label %419

68:                                               ; preds = %58
  %69 = load %struct.flash_info*, %struct.flash_info** %8, align 8
  %70 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %71 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %70, i32 0, i32 4
  store %struct.flash_info* %69, %struct.flash_info** %71, align 8
  %72 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %73 = load %struct.flash_info*, %struct.flash_info** %8, align 8
  %74 = call i32 @spi_nor_debugfs_init(%struct.spi_nor* %72, %struct.flash_info* %73)
  %75 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %76 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %75, i32 0, i32 5
  %77 = call i32 @mutex_init(i32* %76)
  %78 = load %struct.flash_info*, %struct.flash_info** %8, align 8
  %79 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @SPI_NOR_XSR_RDY, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %68
  %85 = load i32, i32* @SNOR_F_READY_XSR_RDY, align 4
  %86 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %87 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %84, %68
  %91 = load %struct.flash_info*, %struct.flash_info** %8, align 8
  %92 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @SPI_NOR_HAS_LOCK, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %90
  %98 = load i32, i32* @SNOR_F_HAS_LOCK, align 4
  %99 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %100 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %97, %90
  %104 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %105 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %104, i32 0, i32 4
  %106 = load %struct.flash_info*, %struct.flash_info** %105, align 8
  %107 = call i64 @JEDEC_MFR(%struct.flash_info* %106)
  %108 = load i64, i64* @SNOR_MFR_ATMEL, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %133, label %110

110:                                              ; preds = %103
  %111 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %112 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %111, i32 0, i32 4
  %113 = load %struct.flash_info*, %struct.flash_info** %112, align 8
  %114 = call i64 @JEDEC_MFR(%struct.flash_info* %113)
  %115 = load i64, i64* @SNOR_MFR_INTEL, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %133, label %117

117:                                              ; preds = %110
  %118 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %119 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %118, i32 0, i32 4
  %120 = load %struct.flash_info*, %struct.flash_info** %119, align 8
  %121 = call i64 @JEDEC_MFR(%struct.flash_info* %120)
  %122 = load i64, i64* @SNOR_MFR_SST, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %133, label %124

124:                                              ; preds = %117
  %125 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %126 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %125, i32 0, i32 4
  %127 = load %struct.flash_info*, %struct.flash_info** %126, align 8
  %128 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @SPI_NOR_HAS_LOCK, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %124, %117, %110, %103
  %134 = load i32, i32* @spi_nor_clear_sr_bp, align 4
  %135 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %136 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 8
  br label %137

137:                                              ; preds = %133, %124
  %138 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %139 = call i32 @spi_nor_init_params(%struct.spi_nor* %138)
  %140 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %141 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %140, i32 0, i32 5
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %137
  %145 = load %struct.device*, %struct.device** %9, align 8
  %146 = call i64 @dev_name(%struct.device* %145)
  %147 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %148 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %147, i32 0, i32 5
  store i64 %146, i64* %148, align 8
  br label %149

149:                                              ; preds = %144, %137
  %150 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %151 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %152 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %151, i32 0, i32 17
  store %struct.spi_nor* %150, %struct.spi_nor** %152, align 8
  %153 = load i32, i32* @MTD_NORFLASH, align 4
  %154 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %155 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %154, i32 0, i32 16
  store i32 %153, i32* %155, align 8
  %156 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %157 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %156, i32 0, i32 0
  store i32 1, i32* %157, align 8
  %158 = load i32, i32* @MTD_CAP_NORFLASH, align 4
  %159 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %160 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %159, i32 0, i32 8
  store i32 %158, i32* %160, align 8
  %161 = load %struct.spi_nor_flash_parameter*, %struct.spi_nor_flash_parameter** %12, align 8
  %162 = getelementptr inbounds %struct.spi_nor_flash_parameter, %struct.spi_nor_flash_parameter* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %165 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* @spi_nor_erase, align 4
  %167 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %168 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %167, i32 0, i32 15
  store i32 %166, i32* %168, align 4
  %169 = load i32, i32* @spi_nor_read, align 4
  %170 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %171 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %170, i32 0, i32 14
  store i32 %169, i32* %171, align 8
  %172 = load i32, i32* @spi_nor_resume, align 4
  %173 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %174 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %173, i32 0, i32 13
  store i32 %172, i32* %174, align 4
  %175 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %176 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.spi_nor_flash_parameter, %struct.spi_nor_flash_parameter* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %149
  %181 = load i32, i32* @spi_nor_lock, align 4
  %182 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %183 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %182, i32 0, i32 12
  store i32 %181, i32* %183, align 8
  %184 = load i32, i32* @spi_nor_unlock, align 4
  %185 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %186 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %185, i32 0, i32 11
  store i32 %184, i32* %186, align 4
  %187 = load i32, i32* @spi_nor_is_locked, align 4
  %188 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %189 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %188, i32 0, i32 10
  store i32 %187, i32* %189, align 8
  br label %190

190:                                              ; preds = %180, %149
  %191 = load %struct.flash_info*, %struct.flash_info** %8, align 8
  %192 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @SST_WRITE, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %190
  %198 = load i32, i32* @sst_write, align 4
  %199 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %200 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %199, i32 0, i32 9
  store i32 %198, i32* %200, align 4
  br label %205

201:                                              ; preds = %190
  %202 = load i32, i32* @spi_nor_write, align 4
  %203 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %204 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %203, i32 0, i32 9
  store i32 %202, i32* %204, align 4
  br label %205

205:                                              ; preds = %201, %197
  %206 = load %struct.flash_info*, %struct.flash_info** %8, align 8
  %207 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @USE_FSR, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %205
  %213 = load i32, i32* @SNOR_F_USE_FSR, align 4
  %214 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %215 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = or i32 %216, %213
  store i32 %217, i32* %215, align 8
  br label %218

218:                                              ; preds = %212, %205
  %219 = load %struct.flash_info*, %struct.flash_info** %8, align 8
  %220 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @SPI_NOR_HAS_TB, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %218
  %226 = load i32, i32* @SNOR_F_HAS_SR_TB, align 4
  %227 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %228 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 8
  br label %231

231:                                              ; preds = %225, %218
  %232 = load %struct.flash_info*, %struct.flash_info** %8, align 8
  %233 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @NO_CHIP_ERASE, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %231
  %239 = load i32, i32* @SNOR_F_NO_OP_CHIP_ERASE, align 4
  %240 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %241 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = or i32 %242, %239
  store i32 %243, i32* %241, align 8
  br label %244

244:                                              ; preds = %238, %231
  %245 = load %struct.flash_info*, %struct.flash_info** %8, align 8
  %246 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @USE_CLSR, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %244
  %252 = load i32, i32* @SNOR_F_USE_CLSR, align 4
  %253 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %254 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = or i32 %255, %252
  store i32 %256, i32* %254, align 8
  br label %257

257:                                              ; preds = %251, %244
  %258 = load %struct.flash_info*, %struct.flash_info** %8, align 8
  %259 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @SPI_NOR_NO_ERASE, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %257
  %265 = load i32, i32* @MTD_NO_ERASE, align 4
  %266 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %267 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %266, i32 0, i32 8
  %268 = load i32, i32* %267, align 8
  %269 = or i32 %268, %265
  store i32 %269, i32* %267, align 8
  br label %270

270:                                              ; preds = %264, %257
  %271 = load %struct.device*, %struct.device** %9, align 8
  %272 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %273 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %272, i32 0, i32 7
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 0
  store %struct.device* %271, %struct.device** %274, align 8
  %275 = load %struct.spi_nor_flash_parameter*, %struct.spi_nor_flash_parameter** %12, align 8
  %276 = getelementptr inbounds %struct.spi_nor_flash_parameter, %struct.spi_nor_flash_parameter* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %279 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %278, i32 0, i32 1
  store i32 %277, i32* %279, align 4
  %280 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %281 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %284 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %283, i32 0, i32 6
  store i32 %282, i32* %284, align 8
  %285 = load %struct.device_node*, %struct.device_node** %11, align 8
  %286 = call i64 @of_property_read_bool(%struct.device_node* %285, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %294

288:                                              ; preds = %270
  %289 = load i32, i32* @SNOR_F_BROKEN_RESET, align 4
  %290 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %291 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = or i32 %292, %289
  store i32 %293, i32* %291, align 8
  br label %294

294:                                              ; preds = %288, %270
  %295 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %296 = load %struct.spi_nor_hwcaps*, %struct.spi_nor_hwcaps** %7, align 8
  %297 = call i32 @spi_nor_setup(%struct.spi_nor* %295, %struct.spi_nor_hwcaps* %296)
  store i32 %297, i32* %13, align 4
  %298 = load i32, i32* %13, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %302

300:                                              ; preds = %294
  %301 = load i32, i32* %13, align 4
  store i32 %301, i32* %4, align 4
  br label %419

302:                                              ; preds = %294
  %303 = load %struct.flash_info*, %struct.flash_info** %8, align 8
  %304 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @SPI_NOR_4B_OPCODES, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %315

309:                                              ; preds = %302
  %310 = load i32, i32* @SNOR_F_4B_OPCODES, align 4
  %311 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %312 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = or i32 %313, %310
  store i32 %314, i32* %312, align 8
  br label %315

315:                                              ; preds = %309, %302
  %316 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %317 = call i32 @spi_nor_set_addr_width(%struct.spi_nor* %316)
  store i32 %317, i32* %13, align 4
  %318 = load i32, i32* %13, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %315
  %321 = load i32, i32* %13, align 4
  store i32 %321, i32* %4, align 4
  br label %419

322:                                              ; preds = %315
  %323 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %324 = call i32 @spi_nor_init(%struct.spi_nor* %323)
  store i32 %324, i32* %13, align 4
  %325 = load i32, i32* %13, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %329

327:                                              ; preds = %322
  %328 = load i32, i32* %13, align 4
  store i32 %328, i32* %4, align 4
  br label %419

329:                                              ; preds = %322
  %330 = load %struct.device*, %struct.device** %9, align 8
  %331 = load %struct.flash_info*, %struct.flash_info** %8, align 8
  %332 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %335 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = sext i32 %336 to i64
  %338 = ashr i64 %337, 10
  %339 = call i32 @dev_info(%struct.device* %330, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %333, i64 %338)
  %340 = load %struct.device*, %struct.device** %9, align 8
  %341 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %342 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %341, i32 0, i32 5
  %343 = load i64, i64* %342, align 8
  %344 = trunc i64 %343 to i32
  %345 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %346 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = sext i32 %347 to i64
  %349 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %350 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = ashr i32 %351, 20
  %353 = sext i32 %352 to i64
  %354 = trunc i64 %353 to i32
  %355 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %356 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 8
  %358 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %359 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 8
  %361 = sdiv i32 %360, 1024
  %362 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %363 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %362, i32 0, i32 3
  %364 = load i32, i32* %363, align 4
  %365 = call i32 (%struct.device*, i8*, i32, i64, i32, i32, i32, ...) @dev_dbg(%struct.device* %340, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.2, i64 0, i64 0), i32 %344, i64 %348, i32 %354, i32 %357, i32 %361, i32 %364)
  %366 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %367 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %366, i32 0, i32 3
  %368 = load i32, i32* %367, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %418

370:                                              ; preds = %329
  store i32 0, i32* %14, align 4
  br label %371

371:                                              ; preds = %414, %370
  %372 = load i32, i32* %14, align 4
  %373 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %374 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %373, i32 0, i32 3
  %375 = load i32, i32* %374, align 4
  %376 = icmp slt i32 %372, %375
  br i1 %376, label %377, label %417

377:                                              ; preds = %371
  %378 = load %struct.device*, %struct.device** %9, align 8
  %379 = load i32, i32* %14, align 4
  %380 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %381 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %380, i32 0, i32 4
  %382 = load %struct.TYPE_4__*, %struct.TYPE_4__** %381, align 8
  %383 = load i32, i32* %14, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %382, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %385, i32 0, i32 2
  %387 = load i64, i64* %386, align 8
  %388 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %389 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %388, i32 0, i32 4
  %390 = load %struct.TYPE_4__*, %struct.TYPE_4__** %389, align 8
  %391 = load i32, i32* %14, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %390, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %397 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %396, i32 0, i32 4
  %398 = load %struct.TYPE_4__*, %struct.TYPE_4__** %397, align 8
  %399 = load i32, i32* %14, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %398, i64 %400
  %402 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = sdiv i32 %403, 1024
  %405 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %406 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %405, i32 0, i32 4
  %407 = load %struct.TYPE_4__*, %struct.TYPE_4__** %406, align 8
  %408 = load i32, i32* %14, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %407, i64 %409
  %411 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 4
  %413 = call i32 (%struct.device*, i8*, i32, i64, i32, i32, i32, ...) @dev_dbg(%struct.device* %378, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.3, i64 0, i64 0), i32 %379, i64 %387, i32 %395, i32 %404, i32 %412)
  br label %414

414:                                              ; preds = %377
  %415 = load i32, i32* %14, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %14, align 4
  br label %371

417:                                              ; preds = %371
  br label %418

418:                                              ; preds = %417, %329
  store i32 0, i32* %4, align 4
  br label %419

419:                                              ; preds = %418, %327, %320, %300, %65, %55, %28
  %420 = load i32, i32* %4, align 4
  ret i32 %420
}

declare dso_local %struct.device_node* @spi_nor_get_flash_node(%struct.spi_nor*) #1

declare dso_local i32 @spi_nor_check(%struct.spi_nor*) #1

declare dso_local i32 @devm_kmalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.flash_info* @spi_nor_get_flash_info(%struct.spi_nor*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.flash_info*) #1

declare dso_local i32 @PTR_ERR(%struct.flash_info*) #1

declare dso_local i32 @spi_nor_debugfs_init(%struct.spi_nor*, %struct.flash_info*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @JEDEC_MFR(%struct.flash_info*) #1

declare dso_local i32 @spi_nor_init_params(%struct.spi_nor*) #1

declare dso_local i64 @dev_name(%struct.device*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @spi_nor_setup(%struct.spi_nor*, %struct.spi_nor_hwcaps*) #1

declare dso_local i32 @spi_nor_set_addr_width(%struct.spi_nor*) #1

declare dso_local i32 @spi_nor_init(%struct.spi_nor*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i64, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
