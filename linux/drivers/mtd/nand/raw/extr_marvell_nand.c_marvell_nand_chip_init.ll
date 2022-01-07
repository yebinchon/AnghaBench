; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nand_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nand_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.marvell_nfc = type { i32, i64, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.device_node = type { i32 }
%struct.pxa3xx_nand_platform_data = type { i32, i32* }
%struct.marvell_nand_chip = type { i32, i32, i32, i8*, i8*, %struct.nand_chip, %struct.TYPE_6__* }
%struct.nand_chip = type { i32, %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.mtd_info = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device* }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"missing/invalid reg property\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@sels = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"could not allocate chip structure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"could not retrieve reg property: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"invalid reg value: %u (max CS = %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"CS %d already assigned\0A\00", align 1
@NDCB0_CSEL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"nand-rb\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"could not retrieve RB property: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"invalid reg value: %u (max RB = %d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"marvell,nand-keep-config\00", align 1
@NAND_KEEP_TIMINGS = common dso_local global i32 0, align 4
@NAND_ECC_HW = common dso_local global i32 0, align 4
@NDTR0 = common dso_local global i64 0, align 8
@NDTR1 = common dso_local global i64 0, align 8
@NAND_BUSWIDTH_AUTO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"could not scan the nand chip\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"failed to register mtd device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.marvell_nfc*, %struct.device_node*)* @marvell_nand_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_nand_chip_init(%struct.device* %0, %struct.marvell_nfc* %1, %struct.device_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.marvell_nfc*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.pxa3xx_nand_platform_data*, align 8
  %9 = alloca %struct.marvell_nand_chip*, align 8
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca %struct.nand_chip*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.marvell_nfc* %1, %struct.marvell_nfc** %6, align 8
  store %struct.device_node* %2, %struct.device_node** %7, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call %struct.pxa3xx_nand_platform_data* @dev_get_platdata(%struct.device* %17)
  store %struct.pxa3xx_nand_platform_data* %18, %struct.pxa3xx_nand_platform_data** %8, align 8
  %19 = load %struct.pxa3xx_nand_platform_data*, %struct.pxa3xx_nand_platform_data** %8, align 8
  %20 = icmp ne %struct.pxa3xx_nand_platform_data* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %3
  %22 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %23 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %22, i32 0, i32 3
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21, %3
  store i32 1, i32* %12, align 4
  br label %40

29:                                               ; preds = %21
  %30 = load %struct.device_node*, %struct.device_node** %7, align 8
  %31 = call i32 @of_property_count_elems_of_size(%struct.device_node* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %297

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %28
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = load %struct.marvell_nand_chip*, %struct.marvell_nand_chip** %9, align 8
  %43 = load i32, i32* @sels, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @struct_size(%struct.marvell_nand_chip* %42, i32 %43, i32 %44)
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.marvell_nand_chip* @devm_kzalloc(%struct.device* %41, i32 %45, i32 %46)
  store %struct.marvell_nand_chip* %47, %struct.marvell_nand_chip** %9, align 8
  %48 = load %struct.marvell_nand_chip*, %struct.marvell_nand_chip** %9, align 8
  %49 = icmp ne %struct.marvell_nand_chip* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %40
  %51 = load %struct.device*, %struct.device** %5, align 8
  %52 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %297

55:                                               ; preds = %40
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.marvell_nand_chip*, %struct.marvell_nand_chip** %9, align 8
  %58 = getelementptr inbounds %struct.marvell_nand_chip, %struct.marvell_nand_chip* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.marvell_nand_chip*, %struct.marvell_nand_chip** %9, align 8
  %60 = getelementptr inbounds %struct.marvell_nand_chip, %struct.marvell_nand_chip* %59, i32 0, i32 1
  store i32 -1, i32* %60, align 4
  store i32 0, i32* %14, align 4
  br label %61

61:                                               ; preds = %201, %55
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %204

65:                                               ; preds = %61
  %66 = load %struct.pxa3xx_nand_platform_data*, %struct.pxa3xx_nand_platform_data** %8, align 8
  %67 = icmp ne %struct.pxa3xx_nand_platform_data* %66, null
  br i1 %67, label %75, label %68

68:                                               ; preds = %65
  %69 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %70 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %69, i32 0, i32 3
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68, %65
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %15, align 4
  br label %89

77:                                               ; preds = %68
  %78 = load %struct.device_node*, %struct.device_node** %7, align 8
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @of_property_read_u32_index(%struct.device_node* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %79, i32* %15)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load %struct.device*, %struct.device** %5, align 8
  %85 = load i32, i32* %13, align 4
  %86 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %84, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %4, align 4
  br label %297

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88, %75
  %90 = load i32, i32* %15, align 4
  %91 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %92 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %91, i32 0, i32 3
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp sge i32 %90, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %89
  %98 = load %struct.device*, %struct.device** %5, align 8
  %99 = load i32, i32* %15, align 4
  %100 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %101 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %100, i32 0, i32 3
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %98, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %99, i32 %104)
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %297

108:                                              ; preds = %89
  %109 = load i32, i32* %15, align 4
  %110 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %111 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %110, i32 0, i32 4
  %112 = call i64 @test_and_set_bit(i32 %109, i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %108
  %115 = load %struct.device*, %struct.device** %5, align 8
  %116 = load i32, i32* %15, align 4
  %117 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %115, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %297

120:                                              ; preds = %108
  %121 = load i32, i32* %15, align 4
  %122 = load %struct.marvell_nand_chip*, %struct.marvell_nand_chip** %9, align 8
  %123 = getelementptr inbounds %struct.marvell_nand_chip, %struct.marvell_nand_chip* %122, i32 0, i32 6
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  store i32 %121, i32* %128, align 4
  %129 = load i32, i32* %15, align 4
  switch i32 %129, label %147 [
    i32 0, label %130
    i32 2, label %130
    i32 1, label %138
    i32 3, label %138
  ]

130:                                              ; preds = %120, %120
  %131 = load %struct.marvell_nand_chip*, %struct.marvell_nand_chip** %9, align 8
  %132 = getelementptr inbounds %struct.marvell_nand_chip, %struct.marvell_nand_chip* %131, i32 0, i32 6
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 2
  store i32 0, i32* %137, align 4
  br label %150

138:                                              ; preds = %120, %120
  %139 = load i32, i32* @NDCB0_CSEL, align 4
  %140 = load %struct.marvell_nand_chip*, %struct.marvell_nand_chip** %9, align 8
  %141 = getelementptr inbounds %struct.marvell_nand_chip, %struct.marvell_nand_chip* %140, i32 0, i32 6
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 2
  store i32 %139, i32* %146, align 4
  br label %150

147:                                              ; preds = %120
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %4, align 4
  br label %297

150:                                              ; preds = %138, %130
  %151 = load %struct.pxa3xx_nand_platform_data*, %struct.pxa3xx_nand_platform_data** %8, align 8
  %152 = icmp ne %struct.pxa3xx_nand_platform_data* %151, null
  br i1 %152, label %160, label %153

153:                                              ; preds = %150
  %154 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %155 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %154, i32 0, i32 3
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %153, %150
  store i32 0, i32* %16, align 4
  br label %173

161:                                              ; preds = %153
  %162 = load %struct.device_node*, %struct.device_node** %7, align 8
  %163 = load i32, i32* %14, align 4
  %164 = call i32 @of_property_read_u32_index(%struct.device_node* %162, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %163, i32* %16)
  store i32 %164, i32* %13, align 4
  %165 = load i32, i32* %13, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %161
  %168 = load %struct.device*, %struct.device** %5, align 8
  %169 = load i32, i32* %13, align 4
  %170 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %168, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* %13, align 4
  store i32 %171, i32* %4, align 4
  br label %297

172:                                              ; preds = %161
  br label %173

173:                                              ; preds = %172, %160
  %174 = load i32, i32* %16, align 4
  %175 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %176 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %175, i32 0, i32 3
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp sge i32 %174, %179
  br i1 %180, label %181, label %192

181:                                              ; preds = %173
  %182 = load %struct.device*, %struct.device** %5, align 8
  %183 = load i32, i32* %16, align 4
  %184 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %185 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %184, i32 0, i32 3
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %182, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %183, i32 %188)
  %190 = load i32, i32* @EINVAL, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %4, align 4
  br label %297

192:                                              ; preds = %173
  %193 = load i32, i32* %16, align 4
  %194 = load %struct.marvell_nand_chip*, %struct.marvell_nand_chip** %9, align 8
  %195 = getelementptr inbounds %struct.marvell_nand_chip, %struct.marvell_nand_chip* %194, i32 0, i32 6
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %195, align 8
  %197 = load i32, i32* %14, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 1
  store i32 %193, i32* %200, align 4
  br label %201

201:                                              ; preds = %192
  %202 = load i32, i32* %14, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %14, align 4
  br label %61

204:                                              ; preds = %61
  %205 = load %struct.marvell_nand_chip*, %struct.marvell_nand_chip** %9, align 8
  %206 = getelementptr inbounds %struct.marvell_nand_chip, %struct.marvell_nand_chip* %205, i32 0, i32 5
  store %struct.nand_chip* %206, %struct.nand_chip** %11, align 8
  %207 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %208 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %207, i32 0, i32 2
  %209 = load %struct.nand_chip*, %struct.nand_chip** %11, align 8
  %210 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %209, i32 0, i32 2
  store i32* %208, i32** %210, align 8
  %211 = load %struct.nand_chip*, %struct.nand_chip** %11, align 8
  %212 = load %struct.device_node*, %struct.device_node** %7, align 8
  %213 = call i32 @nand_set_flash_node(%struct.nand_chip* %211, %struct.device_node* %212)
  %214 = load %struct.device_node*, %struct.device_node** %7, align 8
  %215 = call i32 @of_property_read_bool(%struct.device_node* %214, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %223, label %217

217:                                              ; preds = %204
  %218 = load i32, i32* @NAND_KEEP_TIMINGS, align 4
  %219 = load %struct.nand_chip*, %struct.nand_chip** %11, align 8
  %220 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = or i32 %221, %218
  store i32 %222, i32* %220, align 8
  br label %223

223:                                              ; preds = %217, %204
  %224 = load %struct.nand_chip*, %struct.nand_chip** %11, align 8
  %225 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %224)
  store %struct.mtd_info* %225, %struct.mtd_info** %10, align 8
  %226 = load %struct.device*, %struct.device** %5, align 8
  %227 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %228 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 0
  store %struct.device* %226, %struct.device** %229, align 8
  %230 = load i32, i32* @NAND_ECC_HW, align 4
  %231 = load %struct.nand_chip*, %struct.nand_chip** %11, align 8
  %232 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 0
  store i32 %230, i32* %233, align 4
  %234 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %235 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @NDTR0, align 8
  %238 = add nsw i64 %236, %237
  %239 = call i8* @readl_relaxed(i64 %238)
  %240 = load %struct.marvell_nand_chip*, %struct.marvell_nand_chip** %9, align 8
  %241 = getelementptr inbounds %struct.marvell_nand_chip, %struct.marvell_nand_chip* %240, i32 0, i32 4
  store i8* %239, i8** %241, align 8
  %242 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %243 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @NDTR1, align 8
  %246 = add nsw i64 %244, %245
  %247 = call i8* @readl_relaxed(i64 %246)
  %248 = load %struct.marvell_nand_chip*, %struct.marvell_nand_chip** %9, align 8
  %249 = getelementptr inbounds %struct.marvell_nand_chip, %struct.marvell_nand_chip* %248, i32 0, i32 3
  store i8* %247, i8** %249, align 8
  %250 = load i32, i32* @NAND_BUSWIDTH_AUTO, align 4
  %251 = load %struct.nand_chip*, %struct.nand_chip** %11, align 8
  %252 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = or i32 %253, %250
  store i32 %254, i32* %252, align 8
  %255 = load %struct.nand_chip*, %struct.nand_chip** %11, align 8
  %256 = load %struct.marvell_nand_chip*, %struct.marvell_nand_chip** %9, align 8
  %257 = getelementptr inbounds %struct.marvell_nand_chip, %struct.marvell_nand_chip* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @nand_scan(%struct.nand_chip* %255, i32 %258)
  store i32 %259, i32* %13, align 4
  %260 = load i32, i32* %13, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %223
  %263 = load %struct.device*, %struct.device** %5, align 8
  %264 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %263, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  %265 = load i32, i32* %13, align 4
  store i32 %265, i32* %4, align 4
  br label %297

266:                                              ; preds = %223
  %267 = load %struct.pxa3xx_nand_platform_data*, %struct.pxa3xx_nand_platform_data** %8, align 8
  %268 = icmp ne %struct.pxa3xx_nand_platform_data* %267, null
  br i1 %268, label %269, label %278

269:                                              ; preds = %266
  %270 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %271 = load %struct.pxa3xx_nand_platform_data*, %struct.pxa3xx_nand_platform_data** %8, align 8
  %272 = getelementptr inbounds %struct.pxa3xx_nand_platform_data, %struct.pxa3xx_nand_platform_data* %271, i32 0, i32 1
  %273 = load i32*, i32** %272, align 8
  %274 = load %struct.pxa3xx_nand_platform_data*, %struct.pxa3xx_nand_platform_data** %8, align 8
  %275 = getelementptr inbounds %struct.pxa3xx_nand_platform_data, %struct.pxa3xx_nand_platform_data* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @mtd_device_register(%struct.mtd_info* %270, i32* %273, i32 %276)
  store i32 %277, i32* %13, align 4
  br label %281

278:                                              ; preds = %266
  %279 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %280 = call i32 @mtd_device_register(%struct.mtd_info* %279, i32* null, i32 0)
  store i32 %280, i32* %13, align 4
  br label %281

281:                                              ; preds = %278, %269
  %282 = load i32, i32* %13, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %291

284:                                              ; preds = %281
  %285 = load %struct.device*, %struct.device** %5, align 8
  %286 = load i32, i32* %13, align 4
  %287 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %285, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i32 %286)
  %288 = load %struct.nand_chip*, %struct.nand_chip** %11, align 8
  %289 = call i32 @nand_release(%struct.nand_chip* %288)
  %290 = load i32, i32* %13, align 4
  store i32 %290, i32* %4, align 4
  br label %297

291:                                              ; preds = %281
  %292 = load %struct.marvell_nand_chip*, %struct.marvell_nand_chip** %9, align 8
  %293 = getelementptr inbounds %struct.marvell_nand_chip, %struct.marvell_nand_chip* %292, i32 0, i32 2
  %294 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %295 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %294, i32 0, i32 0
  %296 = call i32 @list_add_tail(i32* %293, i32* %295)
  store i32 0, i32* %4, align 4
  br label %297

297:                                              ; preds = %291, %284, %262, %181, %167, %147, %114, %97, %83, %50, %34
  %298 = load i32, i32* %4, align 4
  ret i32 %298
}

declare dso_local %struct.pxa3xx_nand_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @of_property_count_elems_of_size(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.marvell_nand_chip* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.marvell_nand_chip*, i32, i32) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @nand_set_flash_node(%struct.nand_chip*, %struct.device_node*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i8* @readl_relaxed(i64) #1

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
