; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tmio_nand.c_tmio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tmio_nand.c_tmio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tmio_nand_data = type { i32, i32*, i32*, i32 }
%struct.resource = type { i32 }
%struct.tmio_nand = type { i32, i32, i8*, i8*, %struct.nand_chip, %struct.platform_device*, i32 }
%struct.nand_chip = type { %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mtd_info = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"NULL platform data!\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"tmio-nand\00", align 1
@EIO = common dso_local global i32 0, align 4
@tmio_nand_hwcontrol = common dso_local global i32 0, align 4
@tmio_nand_dev_ready = common dso_local global i32 0, align 4
@tmio_nand_read_byte = common dso_local global i32 0, align 4
@tmio_nand_write_buf = common dso_local global i32 0, align 4
@tmio_nand_read_buf = common dso_local global i32 0, align 4
@NAND_ECC_HW = common dso_local global i32 0, align 4
@tmio_nand_enable_hwecc = common dso_local global i32 0, align 4
@tmio_nand_calculate_ecc = common dso_local global i32 0, align 4
@tmio_nand_correct_data = common dso_local global i32 0, align 4
@tmio_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"request_irq error %d\0A\00", align 1
@tmio_nand_wait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tmio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tmio_nand_data*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tmio_nand*, align 8
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca %struct.nand_chip*, align 8
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call %struct.tmio_nand_data* @dev_get_platdata(i32* %13)
  store %struct.tmio_nand_data* %14, %struct.tmio_nand_data** %4, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = load i32, i32* @IORESOURCE_MEM, align 4
  %17 = call %struct.resource* @platform_get_resource(%struct.platform_device* %15, i32 %16, i32 0)
  store %struct.resource* %17, %struct.resource** %5, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load i32, i32* @IORESOURCE_MEM, align 4
  %20 = call %struct.resource* @platform_get_resource(%struct.platform_device* %18, i32 %19, i32 1)
  store %struct.resource* %20, %struct.resource** %6, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = call i32 @platform_get_irq(%struct.platform_device* %21, i32 0)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.tmio_nand_data*, %struct.tmio_nand_data** %4, align 8
  %24 = icmp eq %struct.tmio_nand_data* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 @dev_warn(i32* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %25, %1
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.tmio_nand* @devm_kzalloc(i32* %31, i32 120, i32 %32)
  store %struct.tmio_nand* %33, %struct.tmio_nand** %8, align 8
  %34 = load %struct.tmio_nand*, %struct.tmio_nand** %8, align 8
  %35 = icmp ne %struct.tmio_nand* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %249

39:                                               ; preds = %29
  %40 = load %struct.tmio_nand*, %struct.tmio_nand** %8, align 8
  %41 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %40, i32 0, i32 6
  %42 = call i32 @init_completion(i32* %41)
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load %struct.tmio_nand*, %struct.tmio_nand** %8, align 8
  %45 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %44, i32 0, i32 5
  store %struct.platform_device* %43, %struct.platform_device** %45, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = load %struct.tmio_nand*, %struct.tmio_nand** %8, align 8
  %48 = call i32 @platform_set_drvdata(%struct.platform_device* %46, %struct.tmio_nand* %47)
  %49 = load %struct.tmio_nand*, %struct.tmio_nand** %8, align 8
  %50 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %49, i32 0, i32 4
  store %struct.nand_chip* %50, %struct.nand_chip** %10, align 8
  %51 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %52 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %51)
  store %struct.mtd_info* %52, %struct.mtd_info** %9, align 8
  %53 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %54 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %53, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %54, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %58 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32* %56, i32** %59, align 8
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load %struct.resource*, %struct.resource** %6, align 8
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.resource*, %struct.resource** %6, align 8
  %66 = call i32 @resource_size(%struct.resource* %65)
  %67 = call i8* @devm_ioremap(i32* %61, i32 %64, i32 %66)
  %68 = load %struct.tmio_nand*, %struct.tmio_nand** %8, align 8
  %69 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  %70 = load %struct.tmio_nand*, %struct.tmio_nand** %8, align 8
  %71 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %70, i32 0, i32 3
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %39
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %249

77:                                               ; preds = %39
  %78 = load %struct.resource*, %struct.resource** %5, align 8
  %79 = getelementptr inbounds %struct.resource, %struct.resource* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 1048575
  %82 = load %struct.tmio_nand*, %struct.tmio_nand** %8, align 8
  %83 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = load %struct.resource*, %struct.resource** %5, align 8
  %87 = getelementptr inbounds %struct.resource, %struct.resource* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.resource*, %struct.resource** %5, align 8
  %90 = call i32 @resource_size(%struct.resource* %89)
  %91 = call i8* @devm_ioremap(i32* %85, i32 %88, i32 %90)
  %92 = load %struct.tmio_nand*, %struct.tmio_nand** %8, align 8
  %93 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  %94 = load %struct.tmio_nand*, %struct.tmio_nand** %8, align 8
  %95 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %77
  %99 = load i32, i32* @EIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %249

101:                                              ; preds = %77
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = load %struct.tmio_nand*, %struct.tmio_nand** %8, align 8
  %104 = call i32 @tmio_hw_init(%struct.platform_device* %102, %struct.tmio_nand* %103)
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %2, align 4
  br label %249

109:                                              ; preds = %101
  %110 = load %struct.tmio_nand*, %struct.tmio_nand** %8, align 8
  %111 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %110, i32 0, i32 2
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %114 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 8
  store i8* %112, i8** %115, align 8
  %116 = load %struct.tmio_nand*, %struct.tmio_nand** %8, align 8
  %117 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %116, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %120 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 7
  store i8* %118, i8** %121, align 8
  %122 = load i32, i32* @tmio_nand_hwcontrol, align 4
  %123 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %124 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 6
  store i32 %122, i32* %125, align 8
  %126 = load i32, i32* @tmio_nand_dev_ready, align 4
  %127 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %128 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 5
  store i32 %126, i32* %129, align 4
  %130 = load i32, i32* @tmio_nand_read_byte, align 4
  %131 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %132 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 4
  store i32 %130, i32* %133, align 8
  %134 = load i32, i32* @tmio_nand_write_buf, align 4
  %135 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %136 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 3
  store i32 %134, i32* %137, align 4
  %138 = load i32, i32* @tmio_nand_read_buf, align 4
  %139 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %140 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 2
  store i32 %138, i32* %141, align 8
  %142 = load i32, i32* @NAND_ECC_HW, align 4
  %143 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %144 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 6
  store i32 %142, i32* %145, align 4
  %146 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %147 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  store i32 512, i32* %148, align 4
  %149 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %150 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  store i32 6, i32* %151, align 4
  %152 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %153 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 2
  store i32 2, i32* %154, align 4
  %155 = load i32, i32* @tmio_nand_enable_hwecc, align 4
  %156 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %157 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 5
  store i32 %155, i32* %158, align 4
  %159 = load i32, i32* @tmio_nand_calculate_ecc, align 4
  %160 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %161 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 4
  store i32 %159, i32* %162, align 4
  %163 = load i32, i32* @tmio_nand_correct_data, align 4
  %164 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %165 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 3
  store i32 %163, i32* %166, align 4
  %167 = load %struct.tmio_nand_data*, %struct.tmio_nand_data** %4, align 8
  %168 = icmp ne %struct.tmio_nand_data* %167, null
  br i1 %168, label %169, label %175

169:                                              ; preds = %109
  %170 = load %struct.tmio_nand_data*, %struct.tmio_nand_data** %4, align 8
  %171 = getelementptr inbounds %struct.tmio_nand_data, %struct.tmio_nand_data* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %174 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 8
  br label %175

175:                                              ; preds = %169, %109
  %176 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %177 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  store i32 15, i32* %178, align 8
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %179, i32 0, i32 0
  %181 = load i32, i32* %7, align 4
  %182 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %183 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %182, i32 0, i32 0
  %184 = call i32 @dev_name(i32* %183)
  %185 = load %struct.tmio_nand*, %struct.tmio_nand** %8, align 8
  %186 = call i32 @devm_request_irq(i32* %180, i32 %181, i32* @tmio_irq, i32 0, i32 %184, %struct.tmio_nand* %185)
  store i32 %186, i32* %11, align 4
  %187 = load i32, i32* %11, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %175
  %190 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %191 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %190, i32 0, i32 0
  %192 = load i32, i32* %11, align 4
  %193 = call i32 @dev_err(i32* %191, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %192)
  br label %244

194:                                              ; preds = %175
  %195 = load i32, i32* %7, align 4
  %196 = load %struct.tmio_nand*, %struct.tmio_nand** %8, align 8
  %197 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* @tmio_nand_wait, align 4
  %199 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %200 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 1
  store i32 %198, i32* %201, align 4
  %202 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %203 = call i32 @nand_scan(%struct.nand_chip* %202, i32 1)
  store i32 %203, i32* %11, align 4
  %204 = load i32, i32* %11, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %194
  br label %244

207:                                              ; preds = %194
  %208 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %209 = load %struct.tmio_nand_data*, %struct.tmio_nand_data** %4, align 8
  %210 = icmp ne %struct.tmio_nand_data* %209, null
  br i1 %210, label %211, label %215

211:                                              ; preds = %207
  %212 = load %struct.tmio_nand_data*, %struct.tmio_nand_data** %4, align 8
  %213 = getelementptr inbounds %struct.tmio_nand_data, %struct.tmio_nand_data* %212, i32 0, i32 2
  %214 = load i32*, i32** %213, align 8
  br label %216

215:                                              ; preds = %207
  br label %216

216:                                              ; preds = %215, %211
  %217 = phi i32* [ %214, %211 ], [ null, %215 ]
  %218 = load %struct.tmio_nand_data*, %struct.tmio_nand_data** %4, align 8
  %219 = icmp ne %struct.tmio_nand_data* %218, null
  br i1 %219, label %220, label %224

220:                                              ; preds = %216
  %221 = load %struct.tmio_nand_data*, %struct.tmio_nand_data** %4, align 8
  %222 = getelementptr inbounds %struct.tmio_nand_data, %struct.tmio_nand_data* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  br label %225

224:                                              ; preds = %216
  br label %225

225:                                              ; preds = %224, %220
  %226 = phi i32* [ %223, %220 ], [ null, %224 ]
  %227 = load %struct.tmio_nand_data*, %struct.tmio_nand_data** %4, align 8
  %228 = icmp ne %struct.tmio_nand_data* %227, null
  br i1 %228, label %229, label %233

229:                                              ; preds = %225
  %230 = load %struct.tmio_nand_data*, %struct.tmio_nand_data** %4, align 8
  %231 = getelementptr inbounds %struct.tmio_nand_data, %struct.tmio_nand_data* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  br label %234

233:                                              ; preds = %225
  br label %234

234:                                              ; preds = %233, %229
  %235 = phi i32 [ %232, %229 ], [ 0, %233 ]
  %236 = call i32 @mtd_device_parse_register(%struct.mtd_info* %208, i32* %217, i32* null, i32* %226, i32 %235)
  store i32 %236, i32* %11, align 4
  %237 = load i32, i32* %11, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %241, label %239

239:                                              ; preds = %234
  %240 = load i32, i32* %11, align 4
  store i32 %240, i32* %2, align 4
  br label %249

241:                                              ; preds = %234
  %242 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %243 = call i32 @nand_release(%struct.nand_chip* %242)
  br label %244

244:                                              ; preds = %241, %206, %189
  %245 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %246 = load %struct.tmio_nand*, %struct.tmio_nand** %8, align 8
  %247 = call i32 @tmio_hw_stop(%struct.platform_device* %245, %struct.tmio_nand* %246)
  %248 = load i32, i32* %11, align 4
  store i32 %248, i32* %2, align 4
  br label %249

249:                                              ; preds = %244, %239, %107, %98, %74, %36
  %250 = load i32, i32* %2, align 4
  ret i32 %250
}

declare dso_local %struct.tmio_nand_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local %struct.tmio_nand* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tmio_nand*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i8* @devm_ioremap(i32*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @tmio_hw_init(%struct.platform_device*, %struct.tmio_nand*) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32*, i32, i32, %struct.tmio_nand*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @nand_scan(%struct.nand_chip*, i32) #1

declare dso_local i32 @mtd_device_parse_register(%struct.mtd_info*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @nand_release(%struct.nand_chip*) #1

declare dso_local i32 @tmio_hw_stop(%struct.platform_device*, %struct.tmio_nand*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
