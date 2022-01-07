; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_gpio.c_gpio_nand_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_gpio.c_gpio_nand_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.gpiomtd = type { i8*, i8*, %struct.TYPE_9__, i8*, i8*, i8*, i8*, %struct.nand_chip }
%struct.TYPE_9__ = type { i32, i32, i32 (%struct.TYPE_9__*, i32)*, i32, i32 }
%struct.nand_chip = type { %struct.TYPE_7__, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i8*, i8*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.mtd_info = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.device* }
%struct.resource = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"nce\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"nwp\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"ale\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"cle\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"rdy\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@gpio_nand_devready = common dso_local global i32 0, align 4
@NAND_ECC_SOFT = common dso_local global i32 0, align 4
@NAND_ECC_HAMMING = common dso_local global i32 0, align 4
@gpio_nand_cmd_ctrl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gpio_nand_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_nand_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.gpiomtd*, align 8
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.device*, %struct.device** %8, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %8, align 8
  %18 = call i32 @dev_get_platdata(%struct.device* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %313

23:                                               ; preds = %16, %1
  %24 = load %struct.device*, %struct.device** %8, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.gpiomtd* @devm_kzalloc(%struct.device* %24, i32 120, i32 %25)
  store %struct.gpiomtd* %26, %struct.gpiomtd** %4, align 8
  %27 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %28 = icmp ne %struct.gpiomtd* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %313

32:                                               ; preds = %23
  %33 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %34 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %33, i32 0, i32 7
  store %struct.nand_chip* %34, %struct.nand_chip** %5, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = load i32, i32* @IORESOURCE_MEM, align 4
  %37 = call %struct.resource* @platform_get_resource(%struct.platform_device* %35, i32 %36, i32 0)
  store %struct.resource* %37, %struct.resource** %7, align 8
  %38 = load %struct.device*, %struct.device** %8, align 8
  %39 = load %struct.resource*, %struct.resource** %7, align 8
  %40 = call i8* @devm_ioremap_resource(%struct.device* %38, %struct.resource* %39)
  %41 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %42 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  store i8* %40, i8** %43, align 8
  %44 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %45 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @IS_ERR(i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %32
  %51 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %52 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @PTR_ERR(i8* %54)
  store i32 %55, i32* %2, align 4
  br label %313

56:                                               ; preds = %32
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = call %struct.resource* @gpio_nand_get_io_sync(%struct.platform_device* %57)
  store %struct.resource* %58, %struct.resource** %7, align 8
  %59 = load %struct.resource*, %struct.resource** %7, align 8
  %60 = icmp ne %struct.resource* %59, null
  br i1 %60, label %61, label %78

61:                                               ; preds = %56
  %62 = load %struct.device*, %struct.device** %8, align 8
  %63 = load %struct.resource*, %struct.resource** %7, align 8
  %64 = call i8* @devm_ioremap_resource(%struct.device* %62, %struct.resource* %63)
  %65 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %66 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %65, i32 0, i32 6
  store i8* %64, i8** %66, align 8
  %67 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %68 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %67, i32 0, i32 6
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @IS_ERR(i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %61
  %73 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %74 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %73, i32 0, i32 6
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @PTR_ERR(i8* %75)
  store i32 %76, i32* %2, align 4
  br label %313

77:                                               ; preds = %61
  br label %78

78:                                               ; preds = %77, %56
  %79 = load %struct.device*, %struct.device** %8, align 8
  %80 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %81 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %80, i32 0, i32 2
  %82 = call i32 @gpio_nand_get_config(%struct.device* %79, %struct.TYPE_9__* %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %2, align 4
  br label %313

87:                                               ; preds = %78
  %88 = load %struct.device*, %struct.device** %8, align 8
  %89 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %90 = call i8* @devm_gpiod_get_optional(%struct.device* %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %92 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  %93 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %94 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @IS_ERR(i8* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %87
  %99 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %100 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @PTR_ERR(i8* %101)
  store i32 %102, i32* %2, align 4
  br label %313

103:                                              ; preds = %87
  %104 = load %struct.device*, %struct.device** %8, align 8
  %105 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %106 = call i8* @devm_gpiod_get_optional(%struct.device* %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  %107 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %108 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  %109 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %110 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 @IS_ERR(i8* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %103
  %115 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %116 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @PTR_ERR(i8* %117)
  store i32 %118, i32* %9, align 4
  br label %295

119:                                              ; preds = %103
  %120 = load %struct.device*, %struct.device** %8, align 8
  %121 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %122 = call i8* @devm_gpiod_get(%struct.device* %120, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %121)
  %123 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %124 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %123, i32 0, i32 5
  store i8* %122, i8** %124, align 8
  %125 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %126 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %125, i32 0, i32 5
  %127 = load i8*, i8** %126, align 8
  %128 = call i64 @IS_ERR(i8* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %119
  %131 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %132 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %131, i32 0, i32 5
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @PTR_ERR(i8* %133)
  store i32 %134, i32* %9, align 4
  br label %295

135:                                              ; preds = %119
  %136 = load %struct.device*, %struct.device** %8, align 8
  %137 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %138 = call i8* @devm_gpiod_get(%struct.device* %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %137)
  %139 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %140 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %139, i32 0, i32 4
  store i8* %138, i8** %140, align 8
  %141 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %142 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %141, i32 0, i32 4
  %143 = load i8*, i8** %142, align 8
  %144 = call i64 @IS_ERR(i8* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %135
  %147 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %148 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %147, i32 0, i32 4
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @PTR_ERR(i8* %149)
  store i32 %150, i32* %9, align 4
  br label %295

151:                                              ; preds = %135
  %152 = load %struct.device*, %struct.device** %8, align 8
  %153 = load i32, i32* @GPIOD_IN, align 4
  %154 = call i8* @devm_gpiod_get_optional(%struct.device* %152, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %153)
  %155 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %156 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %155, i32 0, i32 3
  store i8* %154, i8** %156, align 8
  %157 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %158 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %157, i32 0, i32 3
  %159 = load i8*, i8** %158, align 8
  %160 = call i64 @IS_ERR(i8* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %151
  %163 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %164 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %163, i32 0, i32 3
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @PTR_ERR(i8* %165)
  store i32 %166, i32* %9, align 4
  br label %295

167:                                              ; preds = %151
  %168 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %169 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %168, i32 0, i32 3
  %170 = load i8*, i8** %169, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load i32, i32* @gpio_nand_devready, align 4
  %174 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %175 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 4
  store i32 %173, i32* %176, align 8
  br label %177

177:                                              ; preds = %172, %167
  %178 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.device, %struct.device* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @nand_set_flash_node(%struct.nand_chip* %178, i32 %182)
  %184 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %185 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 2
  %187 = load i8*, i8** %186, align 8
  %188 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %189 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 3
  store i8* %187, i8** %190, align 8
  %191 = load i32, i32* @NAND_ECC_SOFT, align 4
  %192 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %193 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 1
  store i32 %191, i32* %194, align 4
  %195 = load i32, i32* @NAND_ECC_HAMMING, align 4
  %196 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %197 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  store i32 %195, i32* %198, align 4
  %199 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %200 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %204 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 8
  %205 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %206 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %210 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 1
  store i32 %208, i32* %211, align 4
  %212 = load i32, i32* @gpio_nand_cmd_ctrl, align 4
  %213 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %214 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  store i32 %212, i32* %215, align 8
  %216 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %217 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %216)
  store %struct.mtd_info* %217, %struct.mtd_info** %6, align 8
  %218 = load %struct.device*, %struct.device** %8, align 8
  %219 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %220 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  store %struct.device* %218, %struct.device** %221, align 8
  %222 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %223 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %224 = call i32 @platform_set_drvdata(%struct.platform_device* %222, %struct.gpiomtd* %223)
  %225 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %226 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %225, i32 0, i32 1
  %227 = load i8*, i8** %226, align 8
  %228 = icmp ne i8* %227, null
  br i1 %228, label %229, label %240

229:                                              ; preds = %177
  %230 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %231 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %230, i32 0, i32 1
  %232 = load i8*, i8** %231, align 8
  %233 = call i64 @IS_ERR(i8* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %240, label %235

235:                                              ; preds = %229
  %236 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %237 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %236, i32 0, i32 1
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @gpiod_direction_output(i8* %238, i32 1)
  br label %240

240:                                              ; preds = %235, %229, %177
  %241 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %242 = call i32 @nand_scan(%struct.nand_chip* %241, i32 1)
  store i32 %242, i32* %9, align 4
  %243 = load i32, i32* %9, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %240
  br label %278

246:                                              ; preds = %240
  %247 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %248 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 2
  %250 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %249, align 8
  %251 = icmp ne i32 (%struct.TYPE_9__*, i32)* %250, null
  br i1 %251, label %252, label %263

252:                                              ; preds = %246
  %253 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %254 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 2
  %256 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %255, align 8
  %257 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %258 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %257, i32 0, i32 2
  %259 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %260 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = call i32 %256(%struct.TYPE_9__* %258, i32 %261)
  br label %263

263:                                              ; preds = %252, %246
  %264 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %265 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %266 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %265, i32 0, i32 2
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %270 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @mtd_device_register(%struct.mtd_info* %264, i32 %268, i32 %272)
  store i32 %273, i32* %9, align 4
  %274 = load i32, i32* %9, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %263
  store i32 0, i32* %2, align 4
  br label %313

277:                                              ; preds = %263
  br label %278

278:                                              ; preds = %277, %245
  %279 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %280 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %279, i32 0, i32 1
  %281 = load i8*, i8** %280, align 8
  %282 = icmp ne i8* %281, null
  br i1 %282, label %283, label %294

283:                                              ; preds = %278
  %284 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %285 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %284, i32 0, i32 1
  %286 = load i8*, i8** %285, align 8
  %287 = call i64 @IS_ERR(i8* %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %294, label %289

289:                                              ; preds = %283
  %290 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %291 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %290, i32 0, i32 1
  %292 = load i8*, i8** %291, align 8
  %293 = call i32 @gpiod_set_value(i8* %292, i32 0)
  br label %294

294:                                              ; preds = %289, %283, %278
  br label %295

295:                                              ; preds = %294, %162, %146, %130, %114
  %296 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %297 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %296, i32 0, i32 0
  %298 = load i8*, i8** %297, align 8
  %299 = icmp ne i8* %298, null
  br i1 %299, label %300, label %311

300:                                              ; preds = %295
  %301 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %302 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %301, i32 0, i32 0
  %303 = load i8*, i8** %302, align 8
  %304 = call i64 @IS_ERR(i8* %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %311, label %306

306:                                              ; preds = %300
  %307 = load %struct.gpiomtd*, %struct.gpiomtd** %4, align 8
  %308 = getelementptr inbounds %struct.gpiomtd, %struct.gpiomtd* %307, i32 0, i32 0
  %309 = load i8*, i8** %308, align 8
  %310 = call i32 @gpiod_set_value(i8* %309, i32 0)
  br label %311

311:                                              ; preds = %306, %300, %295
  %312 = load i32, i32* %9, align 4
  store i32 %312, i32* %2, align 4
  br label %313

313:                                              ; preds = %311, %276, %98, %85, %72, %50, %29, %20
  %314 = load i32, i32* %2, align 4
  ret i32 %314
}

declare dso_local i32 @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.gpiomtd* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local %struct.resource* @gpio_nand_get_io_sync(%struct.platform_device*) #1

declare dso_local i32 @gpio_nand_get_config(%struct.device*, %struct.TYPE_9__*) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i32 @nand_set_flash_node(%struct.nand_chip*, i32) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.gpiomtd*) #1

declare dso_local i32 @gpiod_direction_output(i8*, i32) #1

declare dso_local i32 @nand_scan(%struct.nand_chip*, i32) #1

declare dso_local i32 @mtd_device_register(%struct.mtd_info*, i32, i32) #1

declare dso_local i32 @gpiod_set_value(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
