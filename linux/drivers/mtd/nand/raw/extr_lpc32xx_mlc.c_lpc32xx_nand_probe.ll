; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_mlc.c_lpc32xx_nand_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_mlc.c_lpc32xx_nand_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.lpc32xx_nand_host = type { i64, %struct.TYPE_16__*, i32, i32, i32, i32, i32, i32, %struct.nand_chip, i32, %struct.platform_device* }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.nand_chip = type { i32, %struct.TYPE_15__, i32*, i32*, i32, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__, i32, i8*, i8*, i32, i32 }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32 }
%struct.mtd_info = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_17__* }
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
@.str.3 = private unnamed_addr constant [30 x i8] c"Clock initialization failure\0A\00", align 1
@lpc32xx_nand_cmd_ctrl = common dso_local global i32 0, align 4
@lpc32xx_nand_device_ready = common dso_local global i32 0, align 4
@lpc32xx_ecc_enable = common dso_local global i32 0, align 4
@lpc32xx_read_page = common dso_local global i8* null, align 8
@lpc32xx_write_page_lowlevel = common dso_local global i8* null, align 8
@lpc32xx_write_oob = common dso_local global i32 0, align 4
@lpc32xx_read_oob = common dso_local global i32 0, align 4
@lpc32xx_waitfunc = common dso_local global i32 0, align 4
@NAND_NO_SUBPAGE_WRITE = common dso_local global i32 0, align 4
@NAND_BBT_USE_FLASH = common dso_local global i32 0, align 4
@NAND_BBT_NO_OOB = common dso_local global i32 0, align 4
@lpc32xx_nand_bbt = common dso_local global i32 0, align 4
@lpc32xx_nand_bbt_mirror = common dso_local global i32 0, align 4
@use_dma = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to get platform irq\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@lpc3xxx_nand_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Error requesting NAND IRQ\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@lpc32xx_nand_controller_ops = common dso_local global i32 0, align 4
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
  %12 = call %struct.lpc32xx_nand_host* @devm_kzalloc(%struct.TYPE_17__* %10, i32 192, i32 %11)
  store %struct.lpc32xx_nand_host* %12, %struct.lpc32xx_nand_host** %4, align 8
  %13 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %14 = icmp ne %struct.lpc32xx_nand_host* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %354

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %21 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %20, i32 0, i32 10
  store %struct.platform_device* %19, %struct.platform_device** %21, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load i32, i32* @IORESOURCE_MEM, align 4
  %24 = call %struct.resource* @platform_get_resource(%struct.platform_device* %22, i32 %23, i32 0)
  store %struct.resource* %24, %struct.resource** %7, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load %struct.resource*, %struct.resource** %7, align 8
  %28 = call i32 @devm_ioremap_resource(%struct.TYPE_17__* %26, %struct.resource* %27)
  %29 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %30 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 8
  %31 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %32 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %18
  %37 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %38 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @PTR_ERR(i32 %39)
  store i32 %40, i32* %2, align 4
  br label %354

41:                                               ; preds = %18
  %42 = load %struct.resource*, %struct.resource** %7, align 8
  %43 = getelementptr inbounds %struct.resource, %struct.resource* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %46 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %45, i32 0, i32 9
  store i32 %44, i32* %46, align 8
  %47 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %48 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %47, i32 0, i32 8
  store %struct.nand_chip* %48, %struct.nand_chip** %6, align 8
  %49 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %50 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %49)
  store %struct.mtd_info* %50, %struct.mtd_info** %5, align 8
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %41
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call %struct.TYPE_16__* @lpc32xx_parse_dt(%struct.TYPE_17__* %58)
  %60 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %61 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %60, i32 0, i32 1
  store %struct.TYPE_16__* %59, %struct.TYPE_16__** %61, align 8
  br label %62

62:                                               ; preds = %56, %41
  %63 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %64 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %63, i32 0, i32 1
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = icmp ne %struct.TYPE_16__* %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %62
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call i32 @dev_err(%struct.TYPE_17__* %69, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @ENOENT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %354

73:                                               ; preds = %62
  %74 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %75 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %74, i32 0, i32 1
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @EPROBE_DEFER, align 4
  %80 = sub nsw i32 0, %79
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %73
  %83 = load i32, i32* @EPROBE_DEFER, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %354

85:                                               ; preds = %73
  %86 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %87 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %86, i32 0, i32 1
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @gpio_is_valid(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %85
  %94 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %95 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %94, i32 0, i32 1
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @gpio_request(i32 %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %93
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = call i32 @dev_err(%struct.TYPE_17__* %103, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %105 = load i32, i32* @EBUSY, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %354

107:                                              ; preds = %93, %85
  %108 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %109 = call i32 @lpc32xx_wp_disable(%struct.lpc32xx_nand_host* %108)
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = call i32 @dev_get_platdata(%struct.TYPE_17__* %111)
  %113 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %114 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %113, i32 0, i32 7
  store i32 %112, i32* %114, align 4
  %115 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %116 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %117 = call i32 @nand_set_controller_data(%struct.nand_chip* %115, %struct.lpc32xx_nand_host* %116)
  %118 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @nand_set_flash_node(%struct.nand_chip* %118, i32 %122)
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %127 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  store %struct.TYPE_17__* %125, %struct.TYPE_17__** %128, align 8
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = call i32 @clk_get(%struct.TYPE_17__* %130, i32* null)
  %132 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %133 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %135 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i64 @IS_ERR(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %107
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = call i32 @dev_err(%struct.TYPE_17__* %141, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %143 = load i32, i32* @ENOENT, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %8, align 4
  br label %344

145:                                              ; preds = %107
  %146 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %147 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @clk_prepare_enable(i32 %148)
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  br label %339

153:                                              ; preds = %145
  %154 = load i32, i32* @lpc32xx_nand_cmd_ctrl, align 4
  %155 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %156 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 6
  store i32 %154, i32* %157, align 4
  %158 = load i32, i32* @lpc32xx_nand_device_ready, align 4
  %159 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %160 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 5
  store i32 %158, i32* %161, align 8
  %162 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %163 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  store i32 25, i32* %164, align 8
  %165 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %166 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 8
  %168 = call i8* @MLC_DATA(i32 %167)
  %169 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %170 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 4
  store i8* %168, i8** %171, align 8
  %172 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %173 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 8
  %175 = call i8* @MLC_DATA(i32 %174)
  %176 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %177 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 3
  store i8* %175, i8** %178, align 8
  %179 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %180 = call i32 @lpc32xx_nand_setup(%struct.lpc32xx_nand_host* %179)
  %181 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %182 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %183 = call i32 @platform_set_drvdata(%struct.platform_device* %181, %struct.lpc32xx_nand_host* %182)
  %184 = load i32, i32* @lpc32xx_ecc_enable, align 4
  %185 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %186 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %185, i32 0, i32 5
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 8
  store i32 %184, i32* %187, align 8
  %188 = load i8*, i8** @lpc32xx_read_page, align 8
  %189 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %190 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %189, i32 0, i32 5
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 7
  store i8* %188, i8** %191, align 8
  %192 = load i8*, i8** @lpc32xx_read_page, align 8
  %193 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %194 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %193, i32 0, i32 5
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 6
  store i8* %192, i8** %195, align 8
  %196 = load i8*, i8** @lpc32xx_write_page_lowlevel, align 8
  %197 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %198 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %197, i32 0, i32 5
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 5
  store i8* %196, i8** %199, align 8
  %200 = load i8*, i8** @lpc32xx_write_page_lowlevel, align 8
  %201 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %202 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %201, i32 0, i32 5
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 4
  store i8* %200, i8** %203, align 8
  %204 = load i32, i32* @lpc32xx_write_oob, align 4
  %205 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %206 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %205, i32 0, i32 5
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 3
  store i32 %204, i32* %207, align 4
  %208 = load i32, i32* @lpc32xx_read_oob, align 4
  %209 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %210 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %209, i32 0, i32 5
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 2
  store i32 %208, i32* %211, align 8
  %212 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %213 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %212, i32 0, i32 5
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 0
  store i32 4, i32* %214, align 8
  %215 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %216 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %215, i32 0, i32 5
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 1
  store i32 10, i32* %217, align 4
  %218 = load i32, i32* @lpc32xx_waitfunc, align 4
  %219 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %220 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 2
  store i32 %218, i32* %221, align 8
  %222 = load i32, i32* @NAND_NO_SUBPAGE_WRITE, align 4
  %223 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %224 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %223, i32 0, i32 4
  store i32 %222, i32* %224, align 8
  %225 = load i32, i32* @NAND_BBT_USE_FLASH, align 4
  %226 = load i32, i32* @NAND_BBT_NO_OOB, align 4
  %227 = or i32 %225, %226
  %228 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %229 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %228, i32 0, i32 0
  store i32 %227, i32* %229, align 8
  %230 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %231 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %230, i32 0, i32 3
  store i32* @lpc32xx_nand_bbt, i32** %231, align 8
  %232 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %233 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %232, i32 0, i32 2
  store i32* @lpc32xx_nand_bbt_mirror, i32** %233, align 8
  %234 = load i64, i64* @use_dma, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %245

236:                                              ; preds = %153
  %237 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %238 = call i32 @lpc32xx_dma_setup(%struct.lpc32xx_nand_host* %237)
  store i32 %238, i32* %8, align 4
  %239 = load i32, i32* %8, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %236
  %242 = load i32, i32* @EIO, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %8, align 4
  br label %334

244:                                              ; preds = %236
  br label %245

245:                                              ; preds = %244, %153
  %246 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %247 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %246, i32 0, i32 6
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @MLC_IRQ_SR(i32 %248)
  %250 = call i32 @readb(i32 %249)
  %251 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %252 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %251, i32 0, i32 5
  %253 = call i32 @init_completion(i32* %252)
  %254 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %255 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %254, i32 0, i32 4
  %256 = call i32 @init_completion(i32* %255)
  %257 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %258 = call i64 @platform_get_irq(%struct.platform_device* %257, i32 0)
  %259 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %260 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %259, i32 0, i32 0
  store i64 %258, i64* %260, align 8
  %261 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %262 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = icmp slt i64 %263, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %245
  %266 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %267 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %266, i32 0, i32 0
  %268 = call i32 @dev_err(%struct.TYPE_17__* %267, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %269 = load i32, i32* @EINVAL, align 4
  %270 = sub nsw i32 0, %269
  store i32 %270, i32* %8, align 4
  br label %325

271:                                              ; preds = %245
  %272 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %273 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %276 = load i32, i32* @DRV_NAME, align 4
  %277 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %278 = call i64 @request_irq(i64 %274, i32 ptrtoint (i32* @lpc3xxx_nand_irq to i32), i32 %275, i32 %276, %struct.lpc32xx_nand_host* %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %286

280:                                              ; preds = %271
  %281 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %282 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %281, i32 0, i32 0
  %283 = call i32 @dev_err(%struct.TYPE_17__* %282, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %284 = load i32, i32* @ENXIO, align 4
  %285 = sub nsw i32 0, %284
  store i32 %285, i32* %8, align 4
  br label %325

286:                                              ; preds = %271
  %287 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %288 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 0
  store i32* @lpc32xx_nand_controller_ops, i32** %290, align 8
  %291 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %292 = call i32 @nand_scan(%struct.nand_chip* %291, i32 1)
  store i32 %292, i32* %8, align 4
  %293 = load i32, i32* %8, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %286
  br label %319

296:                                              ; preds = %286
  %297 = load i32, i32* @DRV_NAME, align 4
  %298 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %299 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %298, i32 0, i32 0
  store i32 %297, i32* %299, align 8
  %300 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %301 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %302 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %301, i32 0, i32 1
  %303 = load %struct.TYPE_16__*, %struct.TYPE_16__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %307 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %306, i32 0, i32 1
  %308 = load %struct.TYPE_16__*, %struct.TYPE_16__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @mtd_device_register(%struct.mtd_info* %300, i32 %305, i32 %310)
  store i32 %311, i32* %8, align 4
  %312 = load i32, i32* %8, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %296
  br label %316

315:                                              ; preds = %296
  store i32 0, i32* %2, align 4
  br label %354

316:                                              ; preds = %314
  %317 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %318 = call i32 @nand_cleanup(%struct.nand_chip* %317)
  br label %319

319:                                              ; preds = %316, %295
  %320 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %321 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %324 = call i32 @free_irq(i64 %322, %struct.lpc32xx_nand_host* %323)
  br label %325

325:                                              ; preds = %319, %280, %265
  %326 = load i64, i64* @use_dma, align 8
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %333

328:                                              ; preds = %325
  %329 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %330 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @dma_release_channel(i32 %331)
  br label %333

333:                                              ; preds = %328, %325
  br label %334

334:                                              ; preds = %333, %241
  %335 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %336 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = call i32 @clk_disable_unprepare(i32 %337)
  br label %339

339:                                              ; preds = %334, %152
  %340 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %341 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 8
  %343 = call i32 @clk_put(i32 %342)
  br label %344

344:                                              ; preds = %339, %139
  %345 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %346 = call i32 @lpc32xx_wp_enable(%struct.lpc32xx_nand_host* %345)
  %347 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %348 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %347, i32 0, i32 1
  %349 = load %struct.TYPE_16__*, %struct.TYPE_16__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @gpio_free(i32 %351)
  %353 = load i32, i32* %8, align 4
  store i32 %353, i32* %2, align 4
  br label %354

354:                                              ; preds = %344, %315, %101, %82, %67, %36, %15
  %355 = load i32, i32* %2, align 4
  ret i32 %355
}

declare dso_local %struct.lpc32xx_nand_host* @devm_kzalloc(%struct.TYPE_17__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_17__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.TYPE_16__* @lpc32xx_parse_dt(%struct.TYPE_17__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_17__*, i8*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i64 @gpio_request(i32, i8*) #1

declare dso_local i32 @lpc32xx_wp_disable(%struct.lpc32xx_nand_host*) #1

declare dso_local i32 @dev_get_platdata(%struct.TYPE_17__*) #1

declare dso_local i32 @nand_set_controller_data(%struct.nand_chip*, %struct.lpc32xx_nand_host*) #1

declare dso_local i32 @nand_set_flash_node(%struct.nand_chip*, i32) #1

declare dso_local i32 @clk_get(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i8* @MLC_DATA(i32) #1

declare dso_local i32 @lpc32xx_nand_setup(%struct.lpc32xx_nand_host*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lpc32xx_nand_host*) #1

declare dso_local i32 @lpc32xx_dma_setup(%struct.lpc32xx_nand_host*) #1

declare dso_local i32 @readb(i32) #1

declare dso_local i32 @MLC_IRQ_SR(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i64 @request_irq(i64, i32, i32, i32, %struct.lpc32xx_nand_host*) #1

declare dso_local i32 @nand_scan(%struct.nand_chip*, i32) #1

declare dso_local i32 @mtd_device_register(%struct.mtd_info*, i32, i32) #1

declare dso_local i32 @nand_cleanup(%struct.nand_chip*) #1

declare dso_local i32 @free_irq(i64, %struct.lpc32xx_nand_host*) #1

declare dso_local i32 @dma_release_channel(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @lpc32xx_wp_enable(%struct.lpc32xx_nand_host*) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
