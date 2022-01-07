; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_slc.c_lpc32xx_nand_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_slc.c_lpc32xx_nand_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.lpc32xx_nand_host = type { i32, i32, i32, %struct.TYPE_17__*, i32*, i32, %struct.nand_chip, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.nand_chip = type { %struct.TYPE_16__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__, i32, i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mtd_info = type { i8*, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_18__* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Missing or bad NAND config from device tree\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"NAND WP\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GPIO not available\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"Clock failure\0A\00", align 1
@lpc32xx_nand_cmd_ctrl = common dso_local global i32 0, align 4
@lpc32xx_nand_device_ready = common dso_local global i32 0, align 4
@NAND_ECC_HW_SYNDROME = common dso_local global i32 0, align 4
@lpc32xx_nand_read_byte = common dso_local global i32 0, align 4
@lpc32xx_nand_read_buf = common dso_local global i32 0, align 4
@lpc32xx_nand_write_buf = common dso_local global i32 0, align 4
@lpc32xx_nand_read_page_raw_syndrome = common dso_local global i32 0, align 4
@lpc32xx_nand_read_page_syndrome = common dso_local global i32 0, align 4
@lpc32xx_nand_write_page_raw_syndrome = common dso_local global i32 0, align 4
@lpc32xx_nand_write_page_syndrome = common dso_local global i32 0, align 4
@lpc32xx_nand_write_oob_syndrome = common dso_local global i32 0, align 4
@lpc32xx_nand_read_oob_syndrome = common dso_local global i32 0, align 4
@lpc32xx_nand_ecc_calculate = common dso_local global i32 0, align 4
@nand_correct_data = common dso_local global i32 0, align 4
@lpc32xx_nand_ecc_enable = common dso_local global i32 0, align 4
@LPC32XX_DMA_DATA_SIZE = common dso_local global i32 0, align 4
@LPC32XX_ECC_SAVE_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@lpc32xx_nand_controller_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"nxp_lpc3220_slc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lpc32xx_nand_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_nand_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lpc32xx_nand_host*, align 8
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @devm_kzalloc(%struct.TYPE_18__* %10, i32 152, i32 %11)
  %13 = bitcast i8* %12 to %struct.lpc32xx_nand_host*
  store %struct.lpc32xx_nand_host* %13, %struct.lpc32xx_nand_host** %4, align 8
  %14 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %15 = icmp ne %struct.lpc32xx_nand_host* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %318

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load i32, i32* @IORESOURCE_MEM, align 4
  %22 = call %struct.resource* @platform_get_resource(%struct.platform_device* %20, i32 %21, i32 0)
  store %struct.resource* %22, %struct.resource** %7, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.resource*, %struct.resource** %7, align 8
  %26 = call i32 @devm_ioremap_resource(%struct.TYPE_18__* %24, %struct.resource* %25)
  %27 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %28 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 8
  %29 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %30 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @IS_ERR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %19
  %35 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %36 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @PTR_ERR(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %318

39:                                               ; preds = %19
  %40 = load %struct.resource*, %struct.resource** %7, align 8
  %41 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %44 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 4
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %39
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call %struct.TYPE_17__* @lpc32xx_parse_dt(%struct.TYPE_18__* %52)
  %54 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %55 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %54, i32 0, i32 3
  store %struct.TYPE_17__* %53, %struct.TYPE_17__** %55, align 8
  br label %56

56:                                               ; preds = %50, %39
  %57 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %58 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %57, i32 0, i32 3
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  %60 = icmp ne %struct.TYPE_17__* %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %56
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i32 @dev_err(%struct.TYPE_18__* %63, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @ENOENT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %318

67:                                               ; preds = %56
  %68 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %69 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %68, i32 0, i32 3
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @EPROBE_DEFER, align 4
  %74 = sub nsw i32 0, %73
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load i32, i32* @EPROBE_DEFER, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %318

79:                                               ; preds = %67
  %80 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %81 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %80, i32 0, i32 3
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @gpio_is_valid(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %103

87:                                               ; preds = %79
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %91 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %90, i32 0, i32 3
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @devm_gpio_request(%struct.TYPE_18__* %89, i32 %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %87
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = call i32 @dev_err(%struct.TYPE_18__* %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %101 = load i32, i32* @EBUSY, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %318

103:                                              ; preds = %87, %79
  %104 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %105 = call i32 @lpc32xx_wp_disable(%struct.lpc32xx_nand_host* %104)
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = call i32 @dev_get_platdata(%struct.TYPE_18__* %107)
  %109 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %110 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %109, i32 0, i32 7
  store i32 %108, i32* %110, align 8
  %111 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %112 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %111, i32 0, i32 6
  store %struct.nand_chip* %112, %struct.nand_chip** %6, align 8
  %113 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %114 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %113)
  store %struct.mtd_info* %114, %struct.mtd_info** %5, align 8
  %115 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %116 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %117 = call i32 @nand_set_controller_data(%struct.nand_chip* %115, %struct.lpc32xx_nand_host* %116)
  %118 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @nand_set_flash_node(%struct.nand_chip* %118, i32 %122)
  %124 = load i32, i32* @THIS_MODULE, align 4
  %125 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %126 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %130 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  store %struct.TYPE_18__* %128, %struct.TYPE_18__** %131, align 8
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = call i32 @devm_clk_get(%struct.TYPE_18__* %133, i32* null)
  %135 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %136 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %138 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @IS_ERR(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %103
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = call i32 @dev_err(%struct.TYPE_18__* %144, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %146 = load i32, i32* @ENOENT, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %8, align 4
  br label %314

148:                                              ; preds = %103
  %149 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %150 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @clk_prepare_enable(i32 %151)
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %8, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %148
  br label %314

156:                                              ; preds = %148
  %157 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %158 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 8
  %160 = call i8* @SLC_DATA(i32 %159)
  %161 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %162 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 8
  store i8* %160, i8** %163, align 8
  %164 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %165 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 8
  %167 = call i8* @SLC_DATA(i32 %166)
  %168 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %169 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 7
  store i8* %167, i8** %170, align 8
  %171 = load i32, i32* @lpc32xx_nand_cmd_ctrl, align 4
  %172 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %173 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 6
  store i32 %171, i32* %174, align 8
  %175 = load i32, i32* @lpc32xx_nand_device_ready, align 4
  %176 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %177 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 5
  store i32 %175, i32* %178, align 4
  %179 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %180 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  store i32 20, i32* %181, align 8
  %182 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %183 = call i32 @lpc32xx_nand_setup(%struct.lpc32xx_nand_host* %182)
  %184 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %185 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %186 = call i32 @platform_set_drvdata(%struct.platform_device* %184, %struct.lpc32xx_nand_host* %185)
  %187 = load i32, i32* @NAND_ECC_HW_SYNDROME, align 4
  %188 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %189 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 10
  store i32 %187, i32* %190, align 8
  %191 = load i32, i32* @lpc32xx_nand_read_byte, align 4
  %192 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %193 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 4
  store i32 %191, i32* %194, align 8
  %195 = load i32, i32* @lpc32xx_nand_read_buf, align 4
  %196 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %197 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 3
  store i32 %195, i32* %198, align 4
  %199 = load i32, i32* @lpc32xx_nand_write_buf, align 4
  %200 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %201 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 2
  store i32 %199, i32* %202, align 8
  %203 = load i32, i32* @lpc32xx_nand_read_page_raw_syndrome, align 4
  %204 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %205 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 9
  store i32 %203, i32* %206, align 4
  %207 = load i32, i32* @lpc32xx_nand_read_page_syndrome, align 4
  %208 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %209 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 8
  store i32 %207, i32* %210, align 8
  %211 = load i32, i32* @lpc32xx_nand_write_page_raw_syndrome, align 4
  %212 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %213 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 7
  store i32 %211, i32* %214, align 4
  %215 = load i32, i32* @lpc32xx_nand_write_page_syndrome, align 4
  %216 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %217 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 6
  store i32 %215, i32* %218, align 8
  %219 = load i32, i32* @lpc32xx_nand_write_oob_syndrome, align 4
  %220 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %221 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 5
  store i32 %219, i32* %222, align 4
  %223 = load i32, i32* @lpc32xx_nand_read_oob_syndrome, align 4
  %224 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %225 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 4
  store i32 %223, i32* %226, align 8
  %227 = load i32, i32* @lpc32xx_nand_ecc_calculate, align 4
  %228 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %229 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 3
  store i32 %227, i32* %230, align 4
  %231 = load i32, i32* @nand_correct_data, align 4
  %232 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %233 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 2
  store i32 %231, i32* %234, align 8
  %235 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %236 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 0
  store i32 1, i32* %237, align 8
  %238 = load i32, i32* @lpc32xx_nand_ecc_enable, align 4
  %239 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %240 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 1
  store i32 %238, i32* %241, align 4
  %242 = load i32, i32* @LPC32XX_DMA_DATA_SIZE, align 4
  %243 = load i32, i32* @LPC32XX_ECC_SAVE_SIZE, align 4
  %244 = add nsw i32 %242, %243
  %245 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %246 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %245, i32 0, i32 0
  store i32 %244, i32* %246, align 8
  %247 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %248 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %247, i32 0, i32 0
  %249 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %250 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @GFP_KERNEL, align 4
  %253 = call i8* @devm_kzalloc(%struct.TYPE_18__* %248, i32 %251, i32 %252)
  %254 = bitcast i8* %253 to i32*
  %255 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %256 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %255, i32 0, i32 4
  store i32* %254, i32** %256, align 8
  %257 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %258 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %257, i32 0, i32 4
  %259 = load i32*, i32** %258, align 8
  %260 = icmp eq i32* %259, null
  br i1 %260, label %261, label %264

261:                                              ; preds = %156
  %262 = load i32, i32* @ENOMEM, align 4
  %263 = sub nsw i32 0, %262
  store i32 %263, i32* %8, align 4
  br label %309

264:                                              ; preds = %156
  %265 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %266 = call i32 @lpc32xx_nand_dma_setup(%struct.lpc32xx_nand_host* %265)
  store i32 %266, i32* %8, align 4
  %267 = load i32, i32* %8, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %264
  %270 = load i32, i32* @EIO, align 4
  %271 = sub nsw i32 0, %270
  store i32 %271, i32* %8, align 4
  br label %309

272:                                              ; preds = %264
  %273 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %274 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %275, i32 0, i32 0
  store i32* @lpc32xx_nand_controller_ops, i32** %276, align 8
  %277 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %278 = call i32 @nand_scan(%struct.nand_chip* %277, i32 1)
  store i32 %278, i32* %8, align 4
  %279 = load i32, i32* %8, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %272
  br label %304

282:                                              ; preds = %272
  %283 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %284 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %283, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8** %284, align 8
  %285 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %286 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %287 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %286, i32 0, i32 3
  %288 = load %struct.TYPE_17__*, %struct.TYPE_17__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %292 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %291, i32 0, i32 3
  %293 = load %struct.TYPE_17__*, %struct.TYPE_17__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @mtd_device_register(%struct.mtd_info* %285, i32 %290, i32 %295)
  store i32 %296, i32* %8, align 4
  %297 = load i32, i32* %8, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %282
  br label %301

300:                                              ; preds = %282
  store i32 0, i32* %2, align 4
  br label %318

301:                                              ; preds = %299
  %302 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %303 = call i32 @nand_cleanup(%struct.nand_chip* %302)
  br label %304

304:                                              ; preds = %301, %281
  %305 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %306 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @dma_release_channel(i32 %307)
  br label %309

309:                                              ; preds = %304, %269, %261
  %310 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %311 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @clk_disable_unprepare(i32 %312)
  br label %314

314:                                              ; preds = %309, %155, %142
  %315 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %316 = call i32 @lpc32xx_wp_enable(%struct.lpc32xx_nand_host* %315)
  %317 = load i32, i32* %8, align 4
  store i32 %317, i32* %2, align 4
  br label %318

318:                                              ; preds = %314, %300, %97, %76, %61, %34, %16
  %319 = load i32, i32* %2, align 4
  ret i32 %319
}

declare dso_local i8* @devm_kzalloc(%struct.TYPE_18__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_18__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.TYPE_17__* @lpc32xx_parse_dt(%struct.TYPE_18__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_18__*, i8*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i64 @devm_gpio_request(%struct.TYPE_18__*, i32, i8*) #1

declare dso_local i32 @lpc32xx_wp_disable(%struct.lpc32xx_nand_host*) #1

declare dso_local i32 @dev_get_platdata(%struct.TYPE_18__*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nand_set_controller_data(%struct.nand_chip*, %struct.lpc32xx_nand_host*) #1

declare dso_local i32 @nand_set_flash_node(%struct.nand_chip*, i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i8* @SLC_DATA(i32) #1

declare dso_local i32 @lpc32xx_nand_setup(%struct.lpc32xx_nand_host*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lpc32xx_nand_host*) #1

declare dso_local i32 @lpc32xx_nand_dma_setup(%struct.lpc32xx_nand_host*) #1

declare dso_local i32 @nand_scan(%struct.nand_chip*, i32) #1

declare dso_local i32 @mtd_device_register(%struct.mtd_info*, i32, i32) #1

declare dso_local i32 @nand_cleanup(%struct.nand_chip*) #1

declare dso_local i32 @dma_release_channel(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @lpc32xx_wp_enable(%struct.lpc32xx_nand_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
