; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_ams-delta.c_ams_delta_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_ams-delta.c_ams_delta_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ams_delta_nand = type { i32, %struct.TYPE_6__, %struct.gpio_descs*, %struct.gpio_descs*, %struct.gpio_descs*, %struct.gpio_descs*, %struct.gpio_descs*, %struct.gpio_descs*, %struct.gpio_descs*, %struct.gpio_descs*, %struct.nand_chip }
%struct.TYPE_6__ = type { i32* }
%struct.gpio_descs = type { i32 }
%struct.nand_chip = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.mtd_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"rdy\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"RDY GPIO request failed (%d)\0A\00", align 1
@NAND_ECC_SOFT = common dso_local global i32 0, align 4
@NAND_ECC_HAMMING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"nwp\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"NWP GPIO request failed (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"nce\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"NCE GPIO request failed (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"nre\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"NRE GPIO request failed (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"nwe\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"NWE GPIO request failed (%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"ale\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"ALE GPIO request failed (%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"cle\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"CLE GPIO request failed (%d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"data GPIO request failed: %d\0A\00", align 1
@ams_delta_ops = common dso_local global i32 0, align 4
@partition_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ams_delta_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ams_delta_init(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ams_delta_nand*, align 8
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca %struct.gpio_descs*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ams_delta_nand* @devm_kzalloc(i32* %10, i32 96, i32 %11)
  store %struct.ams_delta_nand* %12, %struct.ams_delta_nand** %4, align 8
  %13 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %4, align 8
  %14 = icmp ne %struct.ams_delta_nand* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %253

18:                                               ; preds = %1
  %19 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %4, align 8
  %20 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %19, i32 0, i32 10
  store %struct.nand_chip* %20, %struct.nand_chip** %5, align 8
  %21 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %22 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %21)
  store %struct.mtd_info* %22, %struct.mtd_info** %6, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %26 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32* %24, i32** %27, align 8
  %28 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %29 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %4, align 8
  %30 = call i32 @nand_set_controller_data(%struct.nand_chip* %28, %struct.ams_delta_nand* %29)
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load i32, i32* @GPIOD_IN, align 4
  %34 = call %struct.gpio_descs* @devm_gpiod_get_optional(i32* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %4, align 8
  %36 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %35, i32 0, i32 9
  store %struct.gpio_descs* %34, %struct.gpio_descs** %36, align 8
  %37 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %4, align 8
  %38 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %37, i32 0, i32 9
  %39 = load %struct.gpio_descs*, %struct.gpio_descs** %38, align 8
  %40 = call i64 @IS_ERR(%struct.gpio_descs* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %18
  %43 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %4, align 8
  %44 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %43, i32 0, i32 9
  %45 = load %struct.gpio_descs*, %struct.gpio_descs** %44, align 8
  %46 = call i32 @PTR_ERR(%struct.gpio_descs* %45)
  store i32 %46, i32* %8, align 4
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @dev_warn(i32* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %2, align 4
  br label %253

52:                                               ; preds = %18
  %53 = load i32, i32* @NAND_ECC_SOFT, align 4
  %54 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %55 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @NAND_ECC_HAMMING, align 4
  %58 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %59 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %4, align 8
  %63 = call i32 @platform_set_drvdata(%struct.platform_device* %61, %struct.ams_delta_nand* %62)
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %67 = call i8* @devm_gpiod_get(i32* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = bitcast i8* %67 to %struct.gpio_descs*
  %69 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %4, align 8
  %70 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %69, i32 0, i32 8
  store %struct.gpio_descs* %68, %struct.gpio_descs** %70, align 8
  %71 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %4, align 8
  %72 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %71, i32 0, i32 8
  %73 = load %struct.gpio_descs*, %struct.gpio_descs** %72, align 8
  %74 = call i64 @IS_ERR(%struct.gpio_descs* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %52
  %77 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %4, align 8
  %78 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %77, i32 0, i32 8
  %79 = load %struct.gpio_descs*, %struct.gpio_descs** %78, align 8
  %80 = call i32 @PTR_ERR(%struct.gpio_descs* %79)
  store i32 %80, i32* %8, align 4
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @dev_err(i32* %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %2, align 4
  br label %253

86:                                               ; preds = %52
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %90 = call i8* @devm_gpiod_get(i32* %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  %91 = bitcast i8* %90 to %struct.gpio_descs*
  %92 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %4, align 8
  %93 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %92, i32 0, i32 7
  store %struct.gpio_descs* %91, %struct.gpio_descs** %93, align 8
  %94 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %4, align 8
  %95 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %94, i32 0, i32 7
  %96 = load %struct.gpio_descs*, %struct.gpio_descs** %95, align 8
  %97 = call i64 @IS_ERR(%struct.gpio_descs* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %86
  %100 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %4, align 8
  %101 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %100, i32 0, i32 7
  %102 = load %struct.gpio_descs*, %struct.gpio_descs** %101, align 8
  %103 = call i32 @PTR_ERR(%struct.gpio_descs* %102)
  store i32 %103, i32* %8, align 4
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @dev_err(i32* %105, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %2, align 4
  br label %253

109:                                              ; preds = %86
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %113 = call i8* @devm_gpiod_get(i32* %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %112)
  %114 = bitcast i8* %113 to %struct.gpio_descs*
  %115 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %4, align 8
  %116 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %115, i32 0, i32 6
  store %struct.gpio_descs* %114, %struct.gpio_descs** %116, align 8
  %117 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %4, align 8
  %118 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %117, i32 0, i32 6
  %119 = load %struct.gpio_descs*, %struct.gpio_descs** %118, align 8
  %120 = call i64 @IS_ERR(%struct.gpio_descs* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %109
  %123 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %4, align 8
  %124 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %123, i32 0, i32 6
  %125 = load %struct.gpio_descs*, %struct.gpio_descs** %124, align 8
  %126 = call i32 @PTR_ERR(%struct.gpio_descs* %125)
  store i32 %126, i32* %8, align 4
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @dev_err(i32* %128, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %2, align 4
  br label %253

132:                                              ; preds = %109
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %136 = call i8* @devm_gpiod_get(i32* %134, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %135)
  %137 = bitcast i8* %136 to %struct.gpio_descs*
  %138 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %4, align 8
  %139 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %138, i32 0, i32 5
  store %struct.gpio_descs* %137, %struct.gpio_descs** %139, align 8
  %140 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %4, align 8
  %141 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %140, i32 0, i32 5
  %142 = load %struct.gpio_descs*, %struct.gpio_descs** %141, align 8
  %143 = call i64 @IS_ERR(%struct.gpio_descs* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %132
  %146 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %4, align 8
  %147 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %146, i32 0, i32 5
  %148 = load %struct.gpio_descs*, %struct.gpio_descs** %147, align 8
  %149 = call i32 @PTR_ERR(%struct.gpio_descs* %148)
  store i32 %149, i32* %8, align 4
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @dev_err(i32* %151, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* %8, align 4
  store i32 %154, i32* %2, align 4
  br label %253

155:                                              ; preds = %132
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 0
  %158 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %159 = call i8* @devm_gpiod_get(i32* %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %158)
  %160 = bitcast i8* %159 to %struct.gpio_descs*
  %161 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %4, align 8
  %162 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %161, i32 0, i32 4
  store %struct.gpio_descs* %160, %struct.gpio_descs** %162, align 8
  %163 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %4, align 8
  %164 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %163, i32 0, i32 4
  %165 = load %struct.gpio_descs*, %struct.gpio_descs** %164, align 8
  %166 = call i64 @IS_ERR(%struct.gpio_descs* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %178

168:                                              ; preds = %155
  %169 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %4, align 8
  %170 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %169, i32 0, i32 4
  %171 = load %struct.gpio_descs*, %struct.gpio_descs** %170, align 8
  %172 = call i32 @PTR_ERR(%struct.gpio_descs* %171)
  store i32 %172, i32* %8, align 4
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %173, i32 0, i32 0
  %175 = load i32, i32* %8, align 4
  %176 = call i32 @dev_err(i32* %174, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* %8, align 4
  store i32 %177, i32* %2, align 4
  br label %253

178:                                              ; preds = %155
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %179, i32 0, i32 0
  %181 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %182 = call i8* @devm_gpiod_get(i32* %180, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %181)
  %183 = bitcast i8* %182 to %struct.gpio_descs*
  %184 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %4, align 8
  %185 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %184, i32 0, i32 3
  store %struct.gpio_descs* %183, %struct.gpio_descs** %185, align 8
  %186 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %4, align 8
  %187 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %186, i32 0, i32 3
  %188 = load %struct.gpio_descs*, %struct.gpio_descs** %187, align 8
  %189 = call i64 @IS_ERR(%struct.gpio_descs* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %178
  %192 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %4, align 8
  %193 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %192, i32 0, i32 3
  %194 = load %struct.gpio_descs*, %struct.gpio_descs** %193, align 8
  %195 = call i32 @PTR_ERR(%struct.gpio_descs* %194)
  store i32 %195, i32* %8, align 4
  %196 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %197 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %196, i32 0, i32 0
  %198 = load i32, i32* %8, align 4
  %199 = call i32 @dev_err(i32* %197, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 %198)
  %200 = load i32, i32* %8, align 4
  store i32 %200, i32* %2, align 4
  br label %253

201:                                              ; preds = %178
  %202 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %203 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %202, i32 0, i32 0
  %204 = load i32, i32* @GPIOD_IN, align 4
  %205 = call %struct.gpio_descs* @devm_gpiod_get_array(i32* %203, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %204)
  store %struct.gpio_descs* %205, %struct.gpio_descs** %7, align 8
  %206 = load %struct.gpio_descs*, %struct.gpio_descs** %7, align 8
  %207 = call i64 @IS_ERR(%struct.gpio_descs* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %201
  %210 = load %struct.gpio_descs*, %struct.gpio_descs** %7, align 8
  %211 = call i32 @PTR_ERR(%struct.gpio_descs* %210)
  store i32 %211, i32* %8, align 4
  %212 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %213 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %212, i32 0, i32 0
  %214 = load i32, i32* %8, align 4
  %215 = call i32 @dev_err(i32* %213, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i32 %214)
  %216 = load i32, i32* %8, align 4
  store i32 %216, i32* %2, align 4
  br label %253

217:                                              ; preds = %201
  %218 = load %struct.gpio_descs*, %struct.gpio_descs** %7, align 8
  %219 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %4, align 8
  %220 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %219, i32 0, i32 2
  store %struct.gpio_descs* %218, %struct.gpio_descs** %220, align 8
  %221 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %4, align 8
  %222 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %221, i32 0, i32 0
  store i32 1, i32* %222, align 8
  %223 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %4, align 8
  %224 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  store i32* @ams_delta_ops, i32** %225, align 8
  %226 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %4, align 8
  %227 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %226, i32 0, i32 1
  %228 = call i32 @nand_controller_init(%struct.TYPE_6__* %227)
  %229 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %4, align 8
  %230 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %229, i32 0, i32 1
  %231 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %232 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %231, i32 0, i32 0
  store %struct.TYPE_6__* %230, %struct.TYPE_6__** %232, align 8
  %233 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %234 = call i32 @nand_scan(%struct.nand_chip* %233, i32 1)
  store i32 %234, i32* %8, align 4
  %235 = load i32, i32* %8, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %217
  %238 = load i32, i32* %8, align 4
  store i32 %238, i32* %2, align 4
  br label %253

239:                                              ; preds = %217
  %240 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %241 = load i32, i32* @partition_info, align 4
  %242 = load i32, i32* @partition_info, align 4
  %243 = call i32 @ARRAY_SIZE(i32 %242)
  %244 = call i32 @mtd_device_register(%struct.mtd_info* %240, i32 %241, i32 %243)
  store i32 %244, i32* %8, align 4
  %245 = load i32, i32* %8, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %239
  br label %249

248:                                              ; preds = %239
  store i32 0, i32* %2, align 4
  br label %253

249:                                              ; preds = %247
  %250 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %251 = call i32 @nand_cleanup(%struct.nand_chip* %250)
  %252 = load i32, i32* %8, align 4
  store i32 %252, i32* %2, align 4
  br label %253

253:                                              ; preds = %249, %248, %237, %209, %191, %168, %145, %122, %99, %76, %42, %15
  %254 = load i32, i32* %2, align 4
  ret i32 %254
}

declare dso_local %struct.ams_delta_nand* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nand_set_controller_data(%struct.nand_chip*, %struct.ams_delta_nand*) #1

declare dso_local %struct.gpio_descs* @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_descs*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_descs*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ams_delta_nand*) #1

declare dso_local i8* @devm_gpiod_get(i32*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.gpio_descs* @devm_gpiod_get_array(i32*, i8*, i32) #1

declare dso_local i32 @nand_controller_init(%struct.TYPE_6__*) #1

declare dso_local i32 @nand_scan(%struct.nand_chip*, i32) #1

declare dso_local i32 @mtd_device_register(%struct.mtd_info*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @nand_cleanup(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
