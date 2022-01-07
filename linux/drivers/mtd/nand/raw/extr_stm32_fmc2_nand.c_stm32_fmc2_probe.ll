; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.reset_control = type { i32 }
%struct.stm32_fmc2_nfc = type { i32, %struct.reset_control*, i32, i32, i64, i64, i64, %struct.TYPE_6__, %struct.stm32_fmc2_nand, i32, %struct.reset_control**, %struct.reset_control**, i32*, %struct.reset_control**, i32, %struct.reset_control*, %struct.device* }
%struct.TYPE_6__ = type { i32* }
%struct.stm32_fmc2_nand = type { i32, %struct.nand_chip }
%struct.nand_chip = type { i32, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.resource = type { i32 }
%struct.mtd_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@stm32_fmc2_nand_controller_ops = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@FMC2_MAX_CE = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"IRQ error missing or invalid\0A\00", align 1
@stm32_fmc2_irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to request irq\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"can not enable the clock\0A\00", align 1
@NAND_BUSWIDTH_AUTO = common dso_local global i32 0, align 4
@NAND_NO_SUBPAGE_WRITE = common dso_local global i32 0, align 4
@NAND_USE_BOUNCE_BUFFER = common dso_local global i32 0, align 4
@NAND_ECC_HW = common dso_local global i32 0, align 4
@FMC2_ECC_STEP_SIZE = common dso_local global i32 0, align 4
@FMC2_ECC_BCH8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_fmc2_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_fmc2_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.reset_control*, align 8
  %6 = alloca %struct.stm32_fmc2_nfc*, align 8
  %7 = alloca %struct.stm32_fmc2_nand*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca %struct.nand_chip*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %4, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.stm32_fmc2_nfc* @devm_kzalloc(%struct.device* %17, i32 152, i32 %18)
  store %struct.stm32_fmc2_nfc* %19, %struct.stm32_fmc2_nfc** %6, align 8
  %20 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %21 = icmp ne %struct.stm32_fmc2_nfc* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %373

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %28 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %27, i32 0, i32 16
  store %struct.device* %26, %struct.device** %28, align 8
  %29 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %30 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %29, i32 0, i32 7
  %31 = call i32 @nand_controller_init(%struct.TYPE_6__* %30)
  %32 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %33 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %32, i32 0, i32 7
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32* @stm32_fmc2_nand_controller_ops, i32** %34, align 8
  %35 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %36 = call i32 @stm32_fmc2_parse_dt(%struct.stm32_fmc2_nfc* %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %2, align 4
  br label %373

41:                                               ; preds = %25
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = load i32, i32* @IORESOURCE_MEM, align 4
  %44 = call %struct.resource* @platform_get_resource(%struct.platform_device* %42, i32 %43, i32 0)
  store %struct.resource* %44, %struct.resource** %8, align 8
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = load %struct.resource*, %struct.resource** %8, align 8
  %47 = call i8* @devm_ioremap_resource(%struct.device* %45, %struct.resource* %46)
  %48 = bitcast i8* %47 to %struct.reset_control*
  %49 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %50 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %49, i32 0, i32 15
  store %struct.reset_control* %48, %struct.reset_control** %50, align 8
  %51 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %52 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %51, i32 0, i32 15
  %53 = load %struct.reset_control*, %struct.reset_control** %52, align 8
  %54 = call i64 @IS_ERR(%struct.reset_control* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %41
  %57 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %58 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %57, i32 0, i32 15
  %59 = load %struct.reset_control*, %struct.reset_control** %58, align 8
  %60 = call i32 @PTR_ERR(%struct.reset_control* %59)
  store i32 %60, i32* %2, align 4
  br label %373

61:                                               ; preds = %41
  %62 = load %struct.resource*, %struct.resource** %8, align 8
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %66 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %65, i32 0, i32 14
  store i32 %64, i32* %66, align 8
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %67

67:                                               ; preds = %191, %61
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @FMC2_MAX_CE, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %196

71:                                               ; preds = %67
  %72 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %73 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @BIT(i32 %75)
  %77 = and i32 %74, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %71
  br label %191

80:                                               ; preds = %71
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = load i32, i32* @IORESOURCE_MEM, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call %struct.resource* @platform_get_resource(%struct.platform_device* %81, i32 %82, i32 %83)
  store %struct.resource* %84, %struct.resource** %8, align 8
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = load %struct.resource*, %struct.resource** %8, align 8
  %87 = call i8* @devm_ioremap_resource(%struct.device* %85, %struct.resource* %86)
  %88 = bitcast i8* %87 to %struct.reset_control*
  %89 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %90 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %89, i32 0, i32 13
  %91 = load %struct.reset_control**, %struct.reset_control*** %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.reset_control*, %struct.reset_control** %91, i64 %93
  store %struct.reset_control* %88, %struct.reset_control** %94, align 8
  %95 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %96 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %95, i32 0, i32 13
  %97 = load %struct.reset_control**, %struct.reset_control*** %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.reset_control*, %struct.reset_control** %97, i64 %99
  %101 = load %struct.reset_control*, %struct.reset_control** %100, align 8
  %102 = call i64 @IS_ERR(%struct.reset_control* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %80
  %105 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %106 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %105, i32 0, i32 13
  %107 = load %struct.reset_control**, %struct.reset_control*** %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.reset_control*, %struct.reset_control** %107, i64 %109
  %111 = load %struct.reset_control*, %struct.reset_control** %110, align 8
  %112 = call i32 @PTR_ERR(%struct.reset_control* %111)
  store i32 %112, i32* %2, align 4
  br label %373

113:                                              ; preds = %80
  %114 = load %struct.resource*, %struct.resource** %8, align 8
  %115 = getelementptr inbounds %struct.resource, %struct.resource* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %118 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %117, i32 0, i32 12
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %116, i32* %122, align 4
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = load i32, i32* @IORESOURCE_MEM, align 4
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, 1
  %127 = call %struct.resource* @platform_get_resource(%struct.platform_device* %123, i32 %124, i32 %126)
  store %struct.resource* %127, %struct.resource** %8, align 8
  %128 = load %struct.device*, %struct.device** %4, align 8
  %129 = load %struct.resource*, %struct.resource** %8, align 8
  %130 = call i8* @devm_ioremap_resource(%struct.device* %128, %struct.resource* %129)
  %131 = bitcast i8* %130 to %struct.reset_control*
  %132 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %133 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %132, i32 0, i32 11
  %134 = load %struct.reset_control**, %struct.reset_control*** %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.reset_control*, %struct.reset_control** %134, i64 %136
  store %struct.reset_control* %131, %struct.reset_control** %137, align 8
  %138 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %139 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %138, i32 0, i32 11
  %140 = load %struct.reset_control**, %struct.reset_control*** %139, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.reset_control*, %struct.reset_control** %140, i64 %142
  %144 = load %struct.reset_control*, %struct.reset_control** %143, align 8
  %145 = call i64 @IS_ERR(%struct.reset_control* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %113
  %148 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %149 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %148, i32 0, i32 11
  %150 = load %struct.reset_control**, %struct.reset_control*** %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.reset_control*, %struct.reset_control** %150, i64 %152
  %154 = load %struct.reset_control*, %struct.reset_control** %153, align 8
  %155 = call i32 @PTR_ERR(%struct.reset_control* %154)
  store i32 %155, i32* %2, align 4
  br label %373

156:                                              ; preds = %113
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = load i32, i32* @IORESOURCE_MEM, align 4
  %159 = load i32, i32* %12, align 4
  %160 = add nsw i32 %159, 2
  %161 = call %struct.resource* @platform_get_resource(%struct.platform_device* %157, i32 %158, i32 %160)
  store %struct.resource* %161, %struct.resource** %8, align 8
  %162 = load %struct.device*, %struct.device** %4, align 8
  %163 = load %struct.resource*, %struct.resource** %8, align 8
  %164 = call i8* @devm_ioremap_resource(%struct.device* %162, %struct.resource* %163)
  %165 = bitcast i8* %164 to %struct.reset_control*
  %166 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %167 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %166, i32 0, i32 10
  %168 = load %struct.reset_control**, %struct.reset_control*** %167, align 8
  %169 = load i32, i32* %11, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.reset_control*, %struct.reset_control** %168, i64 %170
  store %struct.reset_control* %165, %struct.reset_control** %171, align 8
  %172 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %173 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %172, i32 0, i32 10
  %174 = load %struct.reset_control**, %struct.reset_control*** %173, align 8
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.reset_control*, %struct.reset_control** %174, i64 %176
  %178 = load %struct.reset_control*, %struct.reset_control** %177, align 8
  %179 = call i64 @IS_ERR(%struct.reset_control* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %156
  %182 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %183 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %182, i32 0, i32 10
  %184 = load %struct.reset_control**, %struct.reset_control*** %183, align 8
  %185 = load i32, i32* %11, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.reset_control*, %struct.reset_control** %184, i64 %186
  %188 = load %struct.reset_control*, %struct.reset_control** %187, align 8
  %189 = call i32 @PTR_ERR(%struct.reset_control* %188)
  store i32 %189, i32* %2, align 4
  br label %373

190:                                              ; preds = %156
  br label %191

191:                                              ; preds = %190, %79
  %192 = load i32, i32* %11, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %11, align 4
  %194 = load i32, i32* %12, align 4
  %195 = add nsw i32 %194, 3
  store i32 %195, i32* %12, align 4
  br label %67

196:                                              ; preds = %67
  %197 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %198 = call i32 @platform_get_irq(%struct.platform_device* %197, i32 0)
  store i32 %198, i32* %14, align 4
  %199 = load i32, i32* %14, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %211

201:                                              ; preds = %196
  %202 = load i32, i32* %14, align 4
  %203 = load i32, i32* @EPROBE_DEFER, align 4
  %204 = sub nsw i32 0, %203
  %205 = icmp ne i32 %202, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %201
  %207 = load %struct.device*, %struct.device** %4, align 8
  %208 = call i32 @dev_err(%struct.device* %207, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %209

209:                                              ; preds = %206, %201
  %210 = load i32, i32* %14, align 4
  store i32 %210, i32* %2, align 4
  br label %373

211:                                              ; preds = %196
  %212 = load %struct.device*, %struct.device** %4, align 8
  %213 = load i32, i32* %14, align 4
  %214 = load i32, i32* @stm32_fmc2_irq, align 4
  %215 = load %struct.device*, %struct.device** %4, align 8
  %216 = call i32 @dev_name(%struct.device* %215)
  %217 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %218 = call i32 @devm_request_irq(%struct.device* %212, i32 %213, i32 %214, i32 0, i32 %216, %struct.stm32_fmc2_nfc* %217)
  store i32 %218, i32* %13, align 4
  %219 = load i32, i32* %13, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %211
  %222 = load %struct.device*, %struct.device** %4, align 8
  %223 = call i32 @dev_err(%struct.device* %222, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %224 = load i32, i32* %13, align 4
  store i32 %224, i32* %2, align 4
  br label %373

225:                                              ; preds = %211
  %226 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %227 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %226, i32 0, i32 9
  %228 = call i32 @init_completion(i32* %227)
  %229 = load %struct.device*, %struct.device** %4, align 8
  %230 = call %struct.reset_control* @devm_clk_get(%struct.device* %229, i32* null)
  %231 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %232 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %231, i32 0, i32 1
  store %struct.reset_control* %230, %struct.reset_control** %232, align 8
  %233 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %234 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %233, i32 0, i32 1
  %235 = load %struct.reset_control*, %struct.reset_control** %234, align 8
  %236 = call i64 @IS_ERR(%struct.reset_control* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %225
  %239 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %240 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %239, i32 0, i32 1
  %241 = load %struct.reset_control*, %struct.reset_control** %240, align 8
  %242 = call i32 @PTR_ERR(%struct.reset_control* %241)
  store i32 %242, i32* %2, align 4
  br label %373

243:                                              ; preds = %225
  %244 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %245 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %244, i32 0, i32 1
  %246 = load %struct.reset_control*, %struct.reset_control** %245, align 8
  %247 = call i32 @clk_prepare_enable(%struct.reset_control* %246)
  store i32 %247, i32* %13, align 4
  %248 = load i32, i32* %13, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %243
  %251 = load %struct.device*, %struct.device** %4, align 8
  %252 = call i32 @dev_err(%struct.device* %251, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %253 = load i32, i32* %13, align 4
  store i32 %253, i32* %2, align 4
  br label %373

254:                                              ; preds = %243
  %255 = load %struct.device*, %struct.device** %4, align 8
  %256 = call %struct.reset_control* @devm_reset_control_get(%struct.device* %255, i32* null)
  store %struct.reset_control* %256, %struct.reset_control** %5, align 8
  %257 = load %struct.reset_control*, %struct.reset_control** %5, align 8
  %258 = call i64 @IS_ERR(%struct.reset_control* %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %265, label %260

260:                                              ; preds = %254
  %261 = load %struct.reset_control*, %struct.reset_control** %5, align 8
  %262 = call i32 @reset_control_assert(%struct.reset_control* %261)
  %263 = load %struct.reset_control*, %struct.reset_control** %5, align 8
  %264 = call i32 @reset_control_deassert(%struct.reset_control* %263)
  br label %265

265:                                              ; preds = %260, %254
  %266 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %267 = call i32 @stm32_fmc2_dma_setup(%struct.stm32_fmc2_nfc* %266)
  store i32 %267, i32* %13, align 4
  %268 = load i32, i32* %13, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %265
  %271 = load i32, i32* %13, align 4
  store i32 %271, i32* %2, align 4
  br label %373

272:                                              ; preds = %265
  %273 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %274 = call i32 @stm32_fmc2_init(%struct.stm32_fmc2_nfc* %273)
  %275 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %276 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %275, i32 0, i32 8
  store %struct.stm32_fmc2_nand* %276, %struct.stm32_fmc2_nand** %7, align 8
  %277 = load %struct.stm32_fmc2_nand*, %struct.stm32_fmc2_nand** %7, align 8
  %278 = getelementptr inbounds %struct.stm32_fmc2_nand, %struct.stm32_fmc2_nand* %277, i32 0, i32 1
  store %struct.nand_chip* %278, %struct.nand_chip** %10, align 8
  %279 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %280 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %279)
  store %struct.mtd_info* %280, %struct.mtd_info** %9, align 8
  %281 = load %struct.device*, %struct.device** %4, align 8
  %282 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %283 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 0
  store %struct.device* %281, %struct.device** %284, align 8
  %285 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %286 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %285, i32 0, i32 7
  %287 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %288 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %287, i32 0, i32 2
  store %struct.TYPE_6__* %286, %struct.TYPE_6__** %288, align 8
  %289 = load i32, i32* @NAND_BUSWIDTH_AUTO, align 4
  %290 = load i32, i32* @NAND_NO_SUBPAGE_WRITE, align 4
  %291 = or i32 %289, %290
  %292 = load i32, i32* @NAND_USE_BOUNCE_BUFFER, align 4
  %293 = or i32 %291, %292
  %294 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %295 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = or i32 %296, %293
  store i32 %297, i32* %295, align 8
  %298 = load i32, i32* @NAND_ECC_HW, align 4
  %299 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %300 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 2
  store i32 %298, i32* %301, align 4
  %302 = load i32, i32* @FMC2_ECC_STEP_SIZE, align 4
  %303 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %304 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 1
  store i32 %302, i32* %305, align 4
  %306 = load i32, i32* @FMC2_ECC_BCH8, align 4
  %307 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %308 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %308, i32 0, i32 0
  store i32 %306, i32* %309, align 4
  %310 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %311 = load %struct.stm32_fmc2_nand*, %struct.stm32_fmc2_nand** %7, align 8
  %312 = getelementptr inbounds %struct.stm32_fmc2_nand, %struct.stm32_fmc2_nand* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = call i32 @nand_scan(%struct.nand_chip* %310, i32 %313)
  store i32 %314, i32* %13, align 4
  %315 = load i32, i32* %13, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %272
  br label %331

318:                                              ; preds = %272
  %319 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %320 = call i32 @mtd_device_register(%struct.mtd_info* %319, i32* null, i32 0)
  store i32 %320, i32* %13, align 4
  %321 = load i32, i32* %13, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %318
  br label %328

324:                                              ; preds = %318
  %325 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %326 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %327 = call i32 @platform_set_drvdata(%struct.platform_device* %325, %struct.stm32_fmc2_nfc* %326)
  store i32 0, i32* %2, align 4
  br label %373

328:                                              ; preds = %323
  %329 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %330 = call i32 @nand_cleanup(%struct.nand_chip* %329)
  br label %331

331:                                              ; preds = %328, %317
  %332 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %333 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %332, i32 0, i32 6
  %334 = load i64, i64* %333, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %341

336:                                              ; preds = %331
  %337 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %338 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %337, i32 0, i32 6
  %339 = load i64, i64* %338, align 8
  %340 = call i32 @dma_release_channel(i64 %339)
  br label %341

341:                                              ; preds = %336, %331
  %342 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %343 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %342, i32 0, i32 5
  %344 = load i64, i64* %343, align 8
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %351

346:                                              ; preds = %341
  %347 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %348 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %347, i32 0, i32 5
  %349 = load i64, i64* %348, align 8
  %350 = call i32 @dma_release_channel(i64 %349)
  br label %351

351:                                              ; preds = %346, %341
  %352 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %353 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %352, i32 0, i32 4
  %354 = load i64, i64* %353, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %361

356:                                              ; preds = %351
  %357 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %358 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %357, i32 0, i32 4
  %359 = load i64, i64* %358, align 8
  %360 = call i32 @dma_release_channel(i64 %359)
  br label %361

361:                                              ; preds = %356, %351
  %362 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %363 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %362, i32 0, i32 3
  %364 = call i32 @sg_free_table(i32* %363)
  %365 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %366 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %365, i32 0, i32 2
  %367 = call i32 @sg_free_table(i32* %366)
  %368 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %369 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %368, i32 0, i32 1
  %370 = load %struct.reset_control*, %struct.reset_control** %369, align 8
  %371 = call i32 @clk_disable_unprepare(%struct.reset_control* %370)
  %372 = load i32, i32* %13, align 4
  store i32 %372, i32* %2, align 4
  br label %373

373:                                              ; preds = %361, %324, %270, %250, %238, %221, %209, %181, %147, %104, %56, %39, %22
  %374 = load i32, i32* %2, align 4
  ret i32 %374
}

declare dso_local %struct.stm32_fmc2_nfc* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @nand_controller_init(%struct.TYPE_6__*) #1

declare dso_local i32 @stm32_fmc2_parse_dt(%struct.stm32_fmc2_nfc*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.reset_control*) #1

declare dso_local i32 @PTR_ERR(%struct.reset_control*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.stm32_fmc2_nfc*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local %struct.reset_control* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @clk_prepare_enable(%struct.reset_control*) #1

declare dso_local %struct.reset_control* @devm_reset_control_get(%struct.device*, i32*) #1

declare dso_local i32 @reset_control_assert(%struct.reset_control*) #1

declare dso_local i32 @reset_control_deassert(%struct.reset_control*) #1

declare dso_local i32 @stm32_fmc2_dma_setup(%struct.stm32_fmc2_nfc*) #1

declare dso_local i32 @stm32_fmc2_init(%struct.stm32_fmc2_nfc*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nand_scan(%struct.nand_chip*, i32) #1

declare dso_local i32 @mtd_device_register(%struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.stm32_fmc2_nfc*) #1

declare dso_local i32 @nand_cleanup(%struct.nand_chip*) #1

declare dso_local i32 @dma_release_channel(i64) #1

declare dso_local i32 @sg_free_table(i32*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.reset_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
