; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_samsung.c_s3c_onenand_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_samsung.c_s3c_onenand_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.platform_device*, i32, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.platform_device = type { i32 }
%struct.onenand_platform_data = type { i32, i32* }
%struct.onenand_chip = type { i32, i32, i8* }
%struct.mtd_info = type { i32, i64, %struct.TYPE_5__, %struct.onenand_chip* }
%struct.TYPE_5__ = type { i32* }
%struct.resource = type { i32 }
%struct.TYPE_6__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@onenand = common dso_local global %struct.TYPE_7__* null, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ONENAND_SKIP_UNLOCK_CHECK = common dso_local global i32 0, align 4
@TYPE_S5PC110 = common dso_local global i64 0, align 8
@SZ_4K = common dso_local global i32 0, align 4
@s5pc110_dma_poll = common dso_local global i32 0, align 4
@s5pc110_dma_ops = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@s5pc110_dma_irq = common dso_local global i32 0, align 4
@s5pc110_onenand_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"onenand\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"failed to get irq\0A\00", align 1
@MEM_CFG_OFFSET = common dso_local global i32 0, align 4
@ONENAND_SYS_CFG1_SYNC_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"OneNAND Sync. Burst Read enabled\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"failed to parse partitions and register the MTD device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s3c_onenand_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_onenand_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.onenand_platform_data*, align 8
  %5 = alloca %struct.onenand_chip*, align 8
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.onenand_platform_data* @dev_get_platdata(i32* %11)
  store %struct.onenand_platform_data* %12, %struct.onenand_platform_data** %4, align 8
  store i32 48, i32* %8, align 4
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @devm_kzalloc(i32* %14, i32 %15, i32 %16)
  %18 = bitcast i8* %17 to %struct.mtd_info*
  store %struct.mtd_info* %18, %struct.mtd_info** %6, align 8
  %19 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %20 = icmp ne %struct.mtd_info* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %271

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @devm_kzalloc(i32* %26, i32 4, i32 %27)
  %29 = bitcast i8* %28 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** @onenand, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** @onenand, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %271

35:                                               ; preds = %24
  %36 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %37 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %36, i64 1
  %38 = bitcast %struct.mtd_info* %37 to %struct.onenand_chip*
  store %struct.onenand_chip* %38, %struct.onenand_chip** %5, align 8
  %39 = load %struct.onenand_chip*, %struct.onenand_chip** %5, align 8
  %40 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %41 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %40, i32 0, i32 3
  store %struct.onenand_chip* %39, %struct.onenand_chip** %41, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %45 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32* %43, i32** %46, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** @onenand, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  store %struct.platform_device* %47, %struct.platform_device** %49, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = call %struct.TYPE_6__* @platform_get_device_id(%struct.platform_device* %50)
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** @onenand, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %57 = call i32 @s3c_onenand_setup(%struct.mtd_info* %56)
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = load i32, i32* @IORESOURCE_MEM, align 4
  %60 = call %struct.resource* @platform_get_resource(%struct.platform_device* %58, i32 %59, i32 0)
  store %struct.resource* %60, %struct.resource** %7, align 8
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load %struct.resource*, %struct.resource** %7, align 8
  %64 = call i8* @devm_ioremap_resource(i32* %62, %struct.resource* %63)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** @onenand, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 7
  store i8* %64, i8** %66, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** @onenand, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 7
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @IS_ERR(i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %35
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** @onenand, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 7
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @PTR_ERR(i8* %75)
  store i32 %76, i32* %2, align 4
  br label %271

77:                                               ; preds = %35
  %78 = load %struct.resource*, %struct.resource** %7, align 8
  %79 = getelementptr inbounds %struct.resource, %struct.resource* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** @onenand, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 8
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** @onenand, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 7
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.onenand_chip*, %struct.onenand_chip** %5, align 8
  %87 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* @ONENAND_SKIP_UNLOCK_CHECK, align 4
  %89 = load %struct.onenand_chip*, %struct.onenand_chip** %5, align 8
  %90 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** @onenand, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @TYPE_S5PC110, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %155

98:                                               ; preds = %77
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = load i32, i32* @IORESOURCE_MEM, align 4
  %101 = call %struct.resource* @platform_get_resource(%struct.platform_device* %99, i32 %100, i32 1)
  store %struct.resource* %101, %struct.resource** %7, align 8
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = load %struct.resource*, %struct.resource** %7, align 8
  %105 = call i8* @devm_ioremap_resource(i32* %103, %struct.resource* %104)
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** @onenand, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 6
  store i8* %105, i8** %107, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** @onenand, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 6
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @IS_ERR(i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %98
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** @onenand, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 6
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @PTR_ERR(i8* %116)
  store i32 %117, i32* %2, align 4
  br label %271

118:                                              ; preds = %98
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = load i32, i32* @SZ_4K, align 4
  %122 = load i32, i32* @GFP_KERNEL, align 4
  %123 = call i8* @devm_kzalloc(i32* %120, i32 %121, i32 %122)
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** @onenand, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 5
  store i8* %123, i8** %125, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** @onenand, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 5
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %118
  %131 = load i32, i32* @ENOMEM, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %2, align 4
  br label %271

133:                                              ; preds = %118
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 0
  %136 = load i32, i32* @GFP_KERNEL, align 4
  %137 = call i8* @devm_kzalloc(i32* %135, i32 128, i32 %136)
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** @onenand, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 4
  store i8* %137, i8** %139, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** @onenand, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 4
  %142 = load i8*, i8** %141, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %133
  %145 = load i32, i32* @ENOMEM, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %2, align 4
  br label %271

147:                                              ; preds = %133
  %148 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %149 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %148, i32 0, i32 1
  store i64 0, i64* %149, align 8
  %150 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %151 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.onenand_chip*, %struct.onenand_chip** %5, align 8
  %154 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  br label %204

155:                                              ; preds = %77
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = load i32, i32* @IORESOURCE_MEM, align 4
  %158 = call %struct.resource* @platform_get_resource(%struct.platform_device* %156, i32 %157, i32 1)
  store %struct.resource* %158, %struct.resource** %7, align 8
  %159 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %160 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %159, i32 0, i32 0
  %161 = load %struct.resource*, %struct.resource** %7, align 8
  %162 = call i8* @devm_ioremap_resource(i32* %160, %struct.resource* %161)
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** @onenand, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 3
  store i8* %162, i8** %164, align 8
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** @onenand, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 3
  %167 = load i8*, i8** %166, align 8
  %168 = call i64 @IS_ERR(i8* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %155
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** @onenand, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 3
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 @PTR_ERR(i8* %173)
  store i32 %174, i32* %2, align 4
  br label %271

175:                                              ; preds = %155
  %176 = load i32, i32* @s5pc110_dma_poll, align 4
  store i32 %176, i32* @s5pc110_dma_ops, align 4
  %177 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %178 = load i32, i32* @IORESOURCE_IRQ, align 4
  %179 = call %struct.resource* @platform_get_resource(%struct.platform_device* %177, i32 %178, i32 0)
  store %struct.resource* %179, %struct.resource** %7, align 8
  %180 = load %struct.resource*, %struct.resource** %7, align 8
  %181 = icmp ne %struct.resource* %180, null
  br i1 %181, label %182, label %203

182:                                              ; preds = %175
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** @onenand, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 2
  %185 = call i32 @init_completion(i32* %184)
  %186 = load i32, i32* @s5pc110_dma_irq, align 4
  store i32 %186, i32* @s5pc110_dma_ops, align 4
  %187 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %188 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %187, i32 0, i32 0
  %189 = load %struct.resource*, %struct.resource** %7, align 8
  %190 = getelementptr inbounds %struct.resource, %struct.resource* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @s5pc110_onenand_irq, align 4
  %193 = load i32, i32* @IRQF_SHARED, align 4
  %194 = call i32 @devm_request_irq(i32* %188, i32 %191, i32 %192, i32 %193, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__** @onenand)
  store i32 %194, i32* %9, align 4
  %195 = load i32, i32* %9, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %182
  %198 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %199 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %198, i32 0, i32 0
  %200 = call i32 @dev_err(i32* %199, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %201 = load i32, i32* %9, align 4
  store i32 %201, i32* %2, align 4
  br label %271

202:                                              ; preds = %182
  br label %203

203:                                              ; preds = %202, %175
  br label %204

204:                                              ; preds = %203, %147
  %205 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %206 = call i32 @onenand_scan(%struct.mtd_info* %205, i32 1)
  store i32 %206, i32* %9, align 4
  %207 = load i32, i32* %9, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %204
  %210 = load i32, i32* %9, align 4
  store i32 %210, i32* %2, align 4
  br label %271

211:                                              ; preds = %204
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** @onenand, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @TYPE_S5PC110, align 8
  %216 = icmp ne i64 %214, %215
  br i1 %216, label %217, label %225

217:                                              ; preds = %211
  %218 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %219 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %218, i32 0, i32 1
  store i64 0, i64* %219, align 8
  %220 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %221 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.onenand_chip*, %struct.onenand_chip** %5, align 8
  %224 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 8
  br label %225

225:                                              ; preds = %217, %211
  %226 = load i32, i32* @MEM_CFG_OFFSET, align 4
  %227 = call i32 @s3c_read_reg(i32 %226)
  %228 = load i32, i32* @ONENAND_SYS_CFG1_SYNC_READ, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %225
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** @onenand, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 1
  %234 = load %struct.platform_device*, %struct.platform_device** %233, align 8
  %235 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %234, i32 0, i32 0
  %236 = call i32 @dev_info(i32* %235, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %237

237:                                              ; preds = %231, %225
  %238 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %239 = load %struct.onenand_platform_data*, %struct.onenand_platform_data** %4, align 8
  %240 = icmp ne %struct.onenand_platform_data* %239, null
  br i1 %240, label %241, label %245

241:                                              ; preds = %237
  %242 = load %struct.onenand_platform_data*, %struct.onenand_platform_data** %4, align 8
  %243 = getelementptr inbounds %struct.onenand_platform_data, %struct.onenand_platform_data* %242, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  br label %246

245:                                              ; preds = %237
  br label %246

246:                                              ; preds = %245, %241
  %247 = phi i32* [ %244, %241 ], [ null, %245 ]
  %248 = load %struct.onenand_platform_data*, %struct.onenand_platform_data** %4, align 8
  %249 = icmp ne %struct.onenand_platform_data* %248, null
  br i1 %249, label %250, label %254

250:                                              ; preds = %246
  %251 = load %struct.onenand_platform_data*, %struct.onenand_platform_data** %4, align 8
  %252 = getelementptr inbounds %struct.onenand_platform_data, %struct.onenand_platform_data* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  br label %255

254:                                              ; preds = %246
  br label %255

255:                                              ; preds = %254, %250
  %256 = phi i32 [ %253, %250 ], [ 0, %254 ]
  %257 = call i32 @mtd_device_register(%struct.mtd_info* %238, i32* %247, i32 %256)
  store i32 %257, i32* %9, align 4
  %258 = load i32, i32* %9, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %267

260:                                              ; preds = %255
  %261 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %262 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %261, i32 0, i32 0
  %263 = call i32 @dev_err(i32* %262, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %264 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %265 = call i32 @onenand_release(%struct.mtd_info* %264)
  %266 = load i32, i32* %9, align 4
  store i32 %266, i32* %2, align 4
  br label %271

267:                                              ; preds = %255
  %268 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %269 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %270 = call i32 @platform_set_drvdata(%struct.platform_device* %268, %struct.mtd_info* %269)
  store i32 0, i32* %2, align 4
  br label %271

271:                                              ; preds = %267, %260, %209, %197, %170, %144, %130, %113, %72, %32, %21
  %272 = load i32, i32* %2, align 4
  ret i32 %272
}

declare dso_local %struct.onenand_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local i32 @s3c_onenand_setup(%struct.mtd_info*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i8*, %struct.TYPE_7__**) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @onenand_scan(%struct.mtd_info*, i32) #1

declare dso_local i32 @s3c_read_reg(i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @mtd_device_register(%struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @onenand_release(%struct.mtd_info*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
