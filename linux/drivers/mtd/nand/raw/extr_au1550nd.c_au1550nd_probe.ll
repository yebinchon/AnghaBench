; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_au1550nd.c_au1550nd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_au1550nd.c_au1550nd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.au1550nd_platdata = type { i32, i32, i64 }
%struct.au1550nd_ctx = type { i32, i32, i32, %struct.nand_chip }
%struct.nand_chip = type { %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.mtd_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"missing platform data\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"no NAND memory resource\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"au1550-nand\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"cannot claim NAND memory area\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"cannot remap NAND memory area\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"cannot detect NAND chipselect\0A\00", align 1
@au1550_device_ready = common dso_local global i32 0, align 4
@au1550_select_chip = common dso_local global i32 0, align 4
@au1550_command = common dso_local global i32 0, align 4
@NAND_ECC_SOFT = common dso_local global i32 0, align 4
@NAND_ECC_HAMMING = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@au_read_byte16 = common dso_local global i32 0, align 4
@au_read_byte = common dso_local global i32 0, align 4
@au_write_byte16 = common dso_local global i32 0, align 4
@au_write_byte = common dso_local global i32 0, align 4
@au_write_buf16 = common dso_local global i32 0, align 4
@au_write_buf = common dso_local global i32 0, align 4
@au_read_buf16 = common dso_local global i32 0, align 4
@au_read_buf = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"NAND scan failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @au1550nd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1550nd_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.au1550nd_platdata*, align 8
  %5 = alloca %struct.au1550nd_ctx*, align 8
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.au1550nd_platdata* @dev_get_platdata(i32* %12)
  store %struct.au1550nd_platdata* %13, %struct.au1550nd_platdata** %4, align 8
  %14 = load %struct.au1550nd_platdata*, %struct.au1550nd_platdata** %4, align 8
  %15 = icmp ne %struct.au1550nd_platdata* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 (i32*, i8*, ...) @dev_err(i32* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %221

22:                                               ; preds = %1
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.au1550nd_ctx* @kzalloc(i32 52, i32 %23)
  store %struct.au1550nd_ctx* %24, %struct.au1550nd_ctx** %5, align 8
  %25 = load %struct.au1550nd_ctx*, %struct.au1550nd_ctx** %5, align 8
  %26 = icmp ne %struct.au1550nd_ctx* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %221

30:                                               ; preds = %22
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load i32, i32* @IORESOURCE_MEM, align 4
  %33 = call %struct.resource* @platform_get_resource(%struct.platform_device* %31, i32 %32, i32 0)
  store %struct.resource* %33, %struct.resource** %8, align 8
  %34 = load %struct.resource*, %struct.resource** %8, align 8
  %35 = icmp ne %struct.resource* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 (i32*, i8*, ...) @dev_err(i32* %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  br label %217

42:                                               ; preds = %30
  %43 = load %struct.resource*, %struct.resource** %8, align 8
  %44 = getelementptr inbounds %struct.resource, %struct.resource* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.resource*, %struct.resource** %8, align 8
  %47 = call i32 @resource_size(%struct.resource* %46)
  %48 = call i64 @request_mem_region(i32 %45, i32 %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i32 (i32*, i8*, ...) @dev_err(i32* %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %9, align 4
  br label %217

56:                                               ; preds = %42
  %57 = load %struct.resource*, %struct.resource** %8, align 8
  %58 = getelementptr inbounds %struct.resource, %struct.resource* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ioremap_nocache(i32 %59, i32 4096)
  %61 = load %struct.au1550nd_ctx*, %struct.au1550nd_ctx** %5, align 8
  %62 = getelementptr inbounds %struct.au1550nd_ctx, %struct.au1550nd_ctx* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.au1550nd_ctx*, %struct.au1550nd_ctx** %5, align 8
  %64 = getelementptr inbounds %struct.au1550nd_ctx, %struct.au1550nd_ctx* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %56
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call i32 (i32*, i8*, ...) @dev_err(i32* %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %9, align 4
  br label %210

73:                                               ; preds = %56
  %74 = load %struct.au1550nd_ctx*, %struct.au1550nd_ctx** %5, align 8
  %75 = getelementptr inbounds %struct.au1550nd_ctx, %struct.au1550nd_ctx* %74, i32 0, i32 3
  store %struct.nand_chip* %75, %struct.nand_chip** %6, align 8
  %76 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %77 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %76)
  store %struct.mtd_info* %77, %struct.mtd_info** %7, align 8
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %81 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i32* %79, i32** %82, align 8
  %83 = load %struct.resource*, %struct.resource** %8, align 8
  %84 = getelementptr inbounds %struct.resource, %struct.resource* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @find_nand_cs(i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %73
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = call i32 (i32*, i8*, ...) @dev_err(i32* %91, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %93 = load i32, i32* @ENODEV, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %9, align 4
  br label %205

95:                                               ; preds = %73
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.au1550nd_ctx*, %struct.au1550nd_ctx** %5, align 8
  %98 = getelementptr inbounds %struct.au1550nd_ctx, %struct.au1550nd_ctx* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @au1550_device_ready, align 4
  %100 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %101 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 6
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* @au1550_select_chip, align 4
  %104 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %105 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 5
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* @au1550_command, align 4
  %108 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %109 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 4
  store i32 %107, i32* %110, align 4
  %111 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %112 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  store i32 30, i32* %113, align 4
  %114 = load i32, i32* @NAND_ECC_SOFT, align 4
  %115 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %116 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  store i32 %114, i32* %117, align 4
  %118 = load i32, i32* @NAND_ECC_HAMMING, align 4
  %119 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %120 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 4
  %122 = load %struct.au1550nd_platdata*, %struct.au1550nd_platdata** %4, align 8
  %123 = getelementptr inbounds %struct.au1550nd_platdata, %struct.au1550nd_platdata* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %95
  %127 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %128 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %129 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %126, %95
  %133 = load %struct.au1550nd_platdata*, %struct.au1550nd_platdata** %4, align 8
  %134 = getelementptr inbounds %struct.au1550nd_platdata, %struct.au1550nd_platdata* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = load i32, i32* @au_read_byte16, align 4
  br label %141

139:                                              ; preds = %132
  %140 = load i32, i32* @au_read_byte, align 4
  br label %141

141:                                              ; preds = %139, %137
  %142 = phi i32 [ %138, %137 ], [ %140, %139 ]
  %143 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %144 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 3
  store i32 %142, i32* %145, align 4
  %146 = load %struct.au1550nd_platdata*, %struct.au1550nd_platdata** %4, align 8
  %147 = getelementptr inbounds %struct.au1550nd_platdata, %struct.au1550nd_platdata* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %141
  %151 = load i32, i32* @au_write_byte16, align 4
  br label %154

152:                                              ; preds = %141
  %153 = load i32, i32* @au_write_byte, align 4
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi i32 [ %151, %150 ], [ %153, %152 ]
  %156 = load %struct.au1550nd_ctx*, %struct.au1550nd_ctx** %5, align 8
  %157 = getelementptr inbounds %struct.au1550nd_ctx, %struct.au1550nd_ctx* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 4
  %158 = load %struct.au1550nd_platdata*, %struct.au1550nd_platdata** %4, align 8
  %159 = getelementptr inbounds %struct.au1550nd_platdata, %struct.au1550nd_platdata* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %154
  %163 = load i32, i32* @au_write_buf16, align 4
  br label %166

164:                                              ; preds = %154
  %165 = load i32, i32* @au_write_buf, align 4
  br label %166

166:                                              ; preds = %164, %162
  %167 = phi i32 [ %163, %162 ], [ %165, %164 ]
  %168 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %169 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 2
  store i32 %167, i32* %170, align 4
  %171 = load %struct.au1550nd_platdata*, %struct.au1550nd_platdata** %4, align 8
  %172 = getelementptr inbounds %struct.au1550nd_platdata, %struct.au1550nd_platdata* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %166
  %176 = load i32, i32* @au_read_buf16, align 4
  br label %179

177:                                              ; preds = %166
  %178 = load i32, i32* @au_read_buf, align 4
  br label %179

179:                                              ; preds = %177, %175
  %180 = phi i32 [ %176, %175 ], [ %178, %177 ]
  %181 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %182 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 1
  store i32 %180, i32* %183, align 4
  %184 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %185 = call i32 @nand_scan(%struct.nand_chip* %184, i32 1)
  store i32 %185, i32* %9, align 4
  %186 = load i32, i32* %9, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %179
  %189 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %190 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %189, i32 0, i32 0
  %191 = load i32, i32* %9, align 4
  %192 = call i32 (i32*, i8*, ...) @dev_err(i32* %190, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %191)
  br label %205

193:                                              ; preds = %179
  %194 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %195 = load %struct.au1550nd_platdata*, %struct.au1550nd_platdata** %4, align 8
  %196 = getelementptr inbounds %struct.au1550nd_platdata, %struct.au1550nd_platdata* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.au1550nd_platdata*, %struct.au1550nd_platdata** %4, align 8
  %199 = getelementptr inbounds %struct.au1550nd_platdata, %struct.au1550nd_platdata* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @mtd_device_register(%struct.mtd_info* %194, i32 %197, i32 %200)
  %202 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %203 = load %struct.au1550nd_ctx*, %struct.au1550nd_ctx** %5, align 8
  %204 = call i32 @platform_set_drvdata(%struct.platform_device* %202, %struct.au1550nd_ctx* %203)
  store i32 0, i32* %2, align 4
  br label %221

205:                                              ; preds = %188, %89
  %206 = load %struct.au1550nd_ctx*, %struct.au1550nd_ctx** %5, align 8
  %207 = getelementptr inbounds %struct.au1550nd_ctx, %struct.au1550nd_ctx* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @iounmap(i32 %208)
  br label %210

210:                                              ; preds = %205, %67
  %211 = load %struct.resource*, %struct.resource** %8, align 8
  %212 = getelementptr inbounds %struct.resource, %struct.resource* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.resource*, %struct.resource** %8, align 8
  %215 = call i32 @resource_size(%struct.resource* %214)
  %216 = call i32 @release_mem_region(i32 %213, i32 %215)
  br label %217

217:                                              ; preds = %210, %50, %36
  %218 = load %struct.au1550nd_ctx*, %struct.au1550nd_ctx** %5, align 8
  %219 = call i32 @kfree(%struct.au1550nd_ctx* %218)
  %220 = load i32, i32* %9, align 4
  store i32 %220, i32* %2, align 4
  br label %221

221:                                              ; preds = %217, %193, %27, %16
  %222 = load i32, i32* %2, align 4
  ret i32 %222
}

declare dso_local %struct.au1550nd_platdata* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.au1550nd_ctx* @kzalloc(i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @request_mem_region(i32, i32, i8*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @ioremap_nocache(i32, i32) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @find_nand_cs(i32) #1

declare dso_local i32 @nand_scan(%struct.nand_chip*, i32) #1

declare dso_local i32 @mtd_device_register(%struct.mtd_info*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.au1550nd_ctx*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @kfree(%struct.au1550nd_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
