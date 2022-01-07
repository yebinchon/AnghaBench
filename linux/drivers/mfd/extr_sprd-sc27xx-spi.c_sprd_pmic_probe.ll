; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_sprd-sc27xx-spi.c_sprd_pmic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_sprd-sc27xx-spi.c_sprd_pmic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.sprd_pmic = type { i32, %struct.TYPE_3__, i32, i32, %struct.TYPE_4__*, i32* }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.TYPE_4__*, i64, i64, i64, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sprd_pmic_data = type { i32, i64 }

@.str = private unnamed_addr constant [31 x i8] c"No matching driver data found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sprd_pmic_regmap = common dso_local global i32 0, align 4
@sprd_pmic_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to allocate register map %d\0A\00", align 1
@SPRD_PMIC_INT_MASK_STATUS = common dso_local global i64 0, align 8
@SPRD_PMIC_INT_EN = common dso_local global i64 0, align 8
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to add PMIC irq chip %d\0A\00", align 1
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@sprd_pmic_devs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to register device %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @sprd_pmic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_pmic_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.sprd_pmic*, align 8
  %5 = alloca %struct.sprd_pmic_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = call %struct.sprd_pmic_data* @of_device_get_match_data(i32* %9)
  store %struct.sprd_pmic_data* %10, %struct.sprd_pmic_data** %5, align 8
  %11 = load %struct.sprd_pmic_data*, %struct.sprd_pmic_data** %5, align 8
  %12 = icmp ne %struct.sprd_pmic_data* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 0
  %16 = call i32 (i32*, i8*, ...) @dev_err(i32* %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %206

19:                                               ; preds = %1
  %20 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %21 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %20, i32 0, i32 0
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.sprd_pmic* @devm_kzalloc(i32* %21, i32 88, i32 %22)
  store %struct.sprd_pmic* %23, %struct.sprd_pmic** %4, align 8
  %24 = load %struct.sprd_pmic*, %struct.sprd_pmic** %4, align 8
  %25 = icmp ne %struct.sprd_pmic* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %206

29:                                               ; preds = %19
  %30 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %31 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %30, i32 0, i32 0
  %32 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %33 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %32, i32 0, i32 0
  %34 = call i32 @devm_regmap_init(i32* %31, i32* @sprd_pmic_regmap, i32* %33, i32* @sprd_pmic_config)
  %35 = load %struct.sprd_pmic*, %struct.sprd_pmic** %4, align 8
  %36 = getelementptr inbounds %struct.sprd_pmic, %struct.sprd_pmic* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.sprd_pmic*, %struct.sprd_pmic** %4, align 8
  %38 = getelementptr inbounds %struct.sprd_pmic, %struct.sprd_pmic* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @IS_ERR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %29
  %43 = load %struct.sprd_pmic*, %struct.sprd_pmic** %4, align 8
  %44 = getelementptr inbounds %struct.sprd_pmic, %struct.sprd_pmic* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @PTR_ERR(i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %48 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %47, i32 0, i32 0
  %49 = load i32, i32* %6, align 4
  %50 = call i32 (i32*, i8*, ...) @dev_err(i32* %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %206

52:                                               ; preds = %29
  %53 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %54 = load %struct.sprd_pmic*, %struct.sprd_pmic** %4, align 8
  %55 = call i32 @spi_set_drvdata(%struct.spi_device* %53, %struct.sprd_pmic* %54)
  %56 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %57 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %56, i32 0, i32 0
  %58 = load %struct.sprd_pmic*, %struct.sprd_pmic** %4, align 8
  %59 = getelementptr inbounds %struct.sprd_pmic, %struct.sprd_pmic* %58, i32 0, i32 5
  store i32* %57, i32** %59, align 8
  %60 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %61 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sprd_pmic*, %struct.sprd_pmic** %4, align 8
  %64 = getelementptr inbounds %struct.sprd_pmic, %struct.sprd_pmic* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %66 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %65, i32 0, i32 0
  %67 = call i32 @dev_name(i32* %66)
  %68 = load %struct.sprd_pmic*, %struct.sprd_pmic** %4, align 8
  %69 = getelementptr inbounds %struct.sprd_pmic, %struct.sprd_pmic* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 7
  store i32 %67, i32* %70, align 8
  %71 = load %struct.sprd_pmic_data*, %struct.sprd_pmic_data** %5, align 8
  %72 = getelementptr inbounds %struct.sprd_pmic_data, %struct.sprd_pmic_data* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SPRD_PMIC_INT_MASK_STATUS, align 8
  %75 = add nsw i64 %73, %74
  %76 = load %struct.sprd_pmic*, %struct.sprd_pmic** %4, align 8
  %77 = getelementptr inbounds %struct.sprd_pmic, %struct.sprd_pmic* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 6
  store i64 %75, i64* %78, align 8
  %79 = load %struct.sprd_pmic_data*, %struct.sprd_pmic_data** %5, align 8
  %80 = getelementptr inbounds %struct.sprd_pmic_data, %struct.sprd_pmic_data* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SPRD_PMIC_INT_EN, align 8
  %83 = add nsw i64 %81, %82
  %84 = load %struct.sprd_pmic*, %struct.sprd_pmic** %4, align 8
  %85 = getelementptr inbounds %struct.sprd_pmic, %struct.sprd_pmic* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 5
  store i64 %83, i64* %86, align 8
  %87 = load %struct.sprd_pmic*, %struct.sprd_pmic** %4, align 8
  %88 = getelementptr inbounds %struct.sprd_pmic, %struct.sprd_pmic* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 4
  store i64 0, i64* %89, align 8
  %90 = load %struct.sprd_pmic*, %struct.sprd_pmic** %4, align 8
  %91 = getelementptr inbounds %struct.sprd_pmic, %struct.sprd_pmic* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  %93 = load %struct.sprd_pmic_data*, %struct.sprd_pmic_data** %5, align 8
  %94 = getelementptr inbounds %struct.sprd_pmic_data, %struct.sprd_pmic_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.sprd_pmic*, %struct.sprd_pmic** %4, align 8
  %97 = getelementptr inbounds %struct.sprd_pmic, %struct.sprd_pmic* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  store i32 %95, i32* %98, align 4
  %99 = load %struct.sprd_pmic*, %struct.sprd_pmic** %4, align 8
  %100 = getelementptr inbounds %struct.sprd_pmic, %struct.sprd_pmic* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  store i32 1, i32* %101, align 8
  %102 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %103 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %102, i32 0, i32 0
  %104 = load %struct.sprd_pmic_data*, %struct.sprd_pmic_data** %5, align 8
  %105 = getelementptr inbounds %struct.sprd_pmic_data, %struct.sprd_pmic_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @GFP_KERNEL, align 4
  %108 = call %struct.TYPE_4__* @devm_kcalloc(i32* %103, i32 %106, i32 4, i32 %107)
  %109 = load %struct.sprd_pmic*, %struct.sprd_pmic** %4, align 8
  %110 = getelementptr inbounds %struct.sprd_pmic, %struct.sprd_pmic* %109, i32 0, i32 4
  store %struct.TYPE_4__* %108, %struct.TYPE_4__** %110, align 8
  %111 = load %struct.sprd_pmic*, %struct.sprd_pmic** %4, align 8
  %112 = getelementptr inbounds %struct.sprd_pmic, %struct.sprd_pmic* %111, i32 0, i32 4
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = icmp ne %struct.TYPE_4__* %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %52
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %2, align 4
  br label %206

118:                                              ; preds = %52
  %119 = load %struct.sprd_pmic*, %struct.sprd_pmic** %4, align 8
  %120 = getelementptr inbounds %struct.sprd_pmic, %struct.sprd_pmic* %119, i32 0, i32 4
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load %struct.sprd_pmic*, %struct.sprd_pmic** %4, align 8
  %123 = getelementptr inbounds %struct.sprd_pmic, %struct.sprd_pmic* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 3
  store %struct.TYPE_4__* %121, %struct.TYPE_4__** %124, align 8
  store i32 0, i32* %7, align 4
  br label %125

125:                                              ; preds = %157, %118
  %126 = load i32, i32* %7, align 4
  %127 = load %struct.sprd_pmic_data*, %struct.sprd_pmic_data** %5, align 8
  %128 = getelementptr inbounds %struct.sprd_pmic_data, %struct.sprd_pmic_data* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %160

131:                                              ; preds = %125
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.sprd_pmic_data*, %struct.sprd_pmic_data** %5, align 8
  %134 = getelementptr inbounds %struct.sprd_pmic_data, %struct.sprd_pmic_data* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sdiv i32 %132, %135
  %137 = load %struct.sprd_pmic*, %struct.sprd_pmic** %4, align 8
  %138 = getelementptr inbounds %struct.sprd_pmic, %struct.sprd_pmic* %137, i32 0, i32 4
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  store i32 %136, i32* %143, align 4
  %144 = load i32, i32* %7, align 4
  %145 = load %struct.sprd_pmic_data*, %struct.sprd_pmic_data** %5, align 8
  %146 = getelementptr inbounds %struct.sprd_pmic_data, %struct.sprd_pmic_data* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = srem i32 %144, %147
  %149 = call i32 @BIT(i32 %148)
  %150 = load %struct.sprd_pmic*, %struct.sprd_pmic** %4, align 8
  %151 = getelementptr inbounds %struct.sprd_pmic, %struct.sprd_pmic* %150, i32 0, i32 4
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = load i32, i32* %7, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  store i32 %149, i32* %156, align 4
  br label %157

157:                                              ; preds = %131
  %158 = load i32, i32* %7, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %7, align 4
  br label %125

160:                                              ; preds = %125
  %161 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %162 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %161, i32 0, i32 0
  %163 = load %struct.sprd_pmic*, %struct.sprd_pmic** %4, align 8
  %164 = getelementptr inbounds %struct.sprd_pmic, %struct.sprd_pmic* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.sprd_pmic*, %struct.sprd_pmic** %4, align 8
  %167 = getelementptr inbounds %struct.sprd_pmic, %struct.sprd_pmic* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @IRQF_ONESHOT, align 4
  %170 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %171 = or i32 %169, %170
  %172 = load %struct.sprd_pmic*, %struct.sprd_pmic** %4, align 8
  %173 = getelementptr inbounds %struct.sprd_pmic, %struct.sprd_pmic* %172, i32 0, i32 1
  %174 = load %struct.sprd_pmic*, %struct.sprd_pmic** %4, align 8
  %175 = getelementptr inbounds %struct.sprd_pmic, %struct.sprd_pmic* %174, i32 0, i32 0
  %176 = call i32 @devm_regmap_add_irq_chip(i32* %162, i32 %165, i32 %168, i32 %171, i32 0, %struct.TYPE_3__* %173, i32* %175)
  store i32 %176, i32* %6, align 4
  %177 = load i32, i32* %6, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %160
  %180 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %181 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %180, i32 0, i32 0
  %182 = load i32, i32* %6, align 4
  %183 = call i32 (i32*, i8*, ...) @dev_err(i32* %181, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* %6, align 4
  store i32 %184, i32* %2, align 4
  br label %206

185:                                              ; preds = %160
  %186 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %187 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %186, i32 0, i32 0
  %188 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %189 = load i32, i32* @sprd_pmic_devs, align 4
  %190 = load i32, i32* @sprd_pmic_devs, align 4
  %191 = call i32 @ARRAY_SIZE(i32 %190)
  %192 = load %struct.sprd_pmic*, %struct.sprd_pmic** %4, align 8
  %193 = getelementptr inbounds %struct.sprd_pmic, %struct.sprd_pmic* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @regmap_irq_get_domain(i32 %194)
  %196 = call i32 @devm_mfd_add_devices(i32* %187, i32 %188, i32 %189, i32 %191, i32* null, i32 0, i32 %195)
  store i32 %196, i32* %6, align 4
  %197 = load i32, i32* %6, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %185
  %200 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %201 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %200, i32 0, i32 0
  %202 = load i32, i32* %6, align 4
  %203 = call i32 (i32*, i8*, ...) @dev_err(i32* %201, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %202)
  %204 = load i32, i32* %6, align 4
  store i32 %204, i32* %2, align 4
  br label %206

205:                                              ; preds = %185
  store i32 0, i32* %2, align 4
  br label %206

206:                                              ; preds = %205, %199, %179, %115, %42, %26, %13
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

declare dso_local %struct.sprd_pmic_data* @of_device_get_match_data(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.sprd_pmic* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_regmap_init(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.sprd_pmic*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local %struct.TYPE_4__* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @devm_regmap_add_irq_chip(i32*, i32, i32, i32, i32, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @devm_mfd_add_devices(i32*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regmap_irq_get_domain(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
