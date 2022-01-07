; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_axp20x.c_axp20x_match_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_axp20x.c_axp20x_match_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp20x_dev = type { i64, i32*, i32*, i8*, i8*, %struct.device*, i32 }
%struct.device = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.acpi_device_id = type { i64 }
%struct.of_device_id = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"Unable to match OF ID\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to match ACPI ID and data\0A\00", align 1
@axp152_cells = common dso_local global i8* null, align 8
@axp152_regmap_config = common dso_local global i32 0, align 4
@axp152_regmap_irq_chip = common dso_local global i32 0, align 4
@axp20x_cells = common dso_local global i8* null, align 8
@axp20x_regmap_config = common dso_local global i32 0, align 4
@axp20x_regmap_irq_chip = common dso_local global i32 0, align 4
@axp221_cells = common dso_local global i8* null, align 8
@axp22x_regmap_config = common dso_local global i32 0, align 4
@axp22x_regmap_irq_chip = common dso_local global i32 0, align 4
@axp223_cells = common dso_local global i8* null, align 8
@axp288_cells = common dso_local global i8* null, align 8
@axp288_regmap_config = common dso_local global i32 0, align 4
@axp288_regmap_irq_chip = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@axp803_cells = common dso_local global i8* null, align 8
@axp803_regmap_irq_chip = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"x-powers,self-working-mode\00", align 1
@axp806_self_working_cells = common dso_local global i8* null, align 8
@axp806_cells = common dso_local global i8* null, align 8
@axp806_regmap_config = common dso_local global i32 0, align 4
@axp806_regmap_irq_chip = common dso_local global i32 0, align 4
@axp809_cells = common dso_local global i8* null, align 8
@axp809_regmap_irq_chip = common dso_local global i32 0, align 4
@axp813_cells = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"unsupported AXP20X ID %lu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"AXP20x variant %s found\0A\00", align 1
@axp20x_model_names = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @axp20x_match_device(%struct.axp20x_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.axp20x_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.acpi_device_id*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  store %struct.axp20x_dev* %0, %struct.axp20x_dev** %3, align 8
  %7 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %8 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %7, i32 0, i32 5
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call %struct.of_device_id* @of_match_device(i32 %19, %struct.device* %20)
  store %struct.of_device_id* %21, %struct.of_device_id** %6, align 8
  %22 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %23 = icmp ne %struct.of_device_id* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %14
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %210

29:                                               ; preds = %14
  %30 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %31 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %34 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %61

35:                                               ; preds = %1
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = getelementptr inbounds %struct.device, %struct.device* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call %struct.acpi_device_id* @acpi_match_device(i32 %40, %struct.device* %41)
  store %struct.acpi_device_id* %42, %struct.acpi_device_id** %5, align 8
  %43 = load %struct.acpi_device_id*, %struct.acpi_device_id** %5, align 8
  %44 = icmp ne %struct.acpi_device_id* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load %struct.acpi_device_id*, %struct.acpi_device_id** %5, align 8
  %47 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45, %35
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %210

55:                                               ; preds = %45
  %56 = load %struct.acpi_device_id*, %struct.acpi_device_id** %5, align 8
  %57 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %60 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %55, %29
  %62 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %63 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  switch i64 %64, label %193 [
    i64 137, label %65
    i64 136, label %77
    i64 135, label %77
    i64 134, label %89
    i64 133, label %101
    i64 132, label %113
    i64 131, label %128
    i64 130, label %140
    i64 129, label %169
    i64 128, label %181
  ]

65:                                               ; preds = %61
  %66 = load i8*, i8** @axp152_cells, align 8
  %67 = call i8* @ARRAY_SIZE(i8* %66)
  %68 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %69 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %68, i32 0, i32 4
  store i8* %67, i8** %69, align 8
  %70 = load i8*, i8** @axp152_cells, align 8
  %71 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %72 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  %73 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %74 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %73, i32 0, i32 2
  store i32* @axp152_regmap_config, i32** %74, align 8
  %75 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %76 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %75, i32 0, i32 1
  store i32* @axp152_regmap_irq_chip, i32** %76, align 8
  br label %201

77:                                               ; preds = %61, %61
  %78 = load i8*, i8** @axp20x_cells, align 8
  %79 = call i8* @ARRAY_SIZE(i8* %78)
  %80 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %81 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %80, i32 0, i32 4
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** @axp20x_cells, align 8
  %83 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %84 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  %85 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %86 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %85, i32 0, i32 2
  store i32* @axp20x_regmap_config, i32** %86, align 8
  %87 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %88 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %87, i32 0, i32 1
  store i32* @axp20x_regmap_irq_chip, i32** %88, align 8
  br label %201

89:                                               ; preds = %61
  %90 = load i8*, i8** @axp221_cells, align 8
  %91 = call i8* @ARRAY_SIZE(i8* %90)
  %92 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %93 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %92, i32 0, i32 4
  store i8* %91, i8** %93, align 8
  %94 = load i8*, i8** @axp221_cells, align 8
  %95 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %96 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %95, i32 0, i32 3
  store i8* %94, i8** %96, align 8
  %97 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %98 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %97, i32 0, i32 2
  store i32* @axp22x_regmap_config, i32** %98, align 8
  %99 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %100 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %99, i32 0, i32 1
  store i32* @axp22x_regmap_irq_chip, i32** %100, align 8
  br label %201

101:                                              ; preds = %61
  %102 = load i8*, i8** @axp223_cells, align 8
  %103 = call i8* @ARRAY_SIZE(i8* %102)
  %104 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %105 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %104, i32 0, i32 4
  store i8* %103, i8** %105, align 8
  %106 = load i8*, i8** @axp223_cells, align 8
  %107 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %108 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %107, i32 0, i32 3
  store i8* %106, i8** %108, align 8
  %109 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %110 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %109, i32 0, i32 2
  store i32* @axp22x_regmap_config, i32** %110, align 8
  %111 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %112 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %111, i32 0, i32 1
  store i32* @axp22x_regmap_irq_chip, i32** %112, align 8
  br label %201

113:                                              ; preds = %61
  %114 = load i8*, i8** @axp288_cells, align 8
  %115 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %116 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %115, i32 0, i32 3
  store i8* %114, i8** %116, align 8
  %117 = load i8*, i8** @axp288_cells, align 8
  %118 = call i8* @ARRAY_SIZE(i8* %117)
  %119 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %120 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %119, i32 0, i32 4
  store i8* %118, i8** %120, align 8
  %121 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %122 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %121, i32 0, i32 2
  store i32* @axp288_regmap_config, i32** %122, align 8
  %123 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %124 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %123, i32 0, i32 1
  store i32* @axp288_regmap_irq_chip, i32** %124, align 8
  %125 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %126 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %127 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %126, i32 0, i32 6
  store i32 %125, i32* %127, align 8
  br label %201

128:                                              ; preds = %61
  %129 = load i8*, i8** @axp803_cells, align 8
  %130 = call i8* @ARRAY_SIZE(i8* %129)
  %131 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %132 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %131, i32 0, i32 4
  store i8* %130, i8** %132, align 8
  %133 = load i8*, i8** @axp803_cells, align 8
  %134 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %135 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %134, i32 0, i32 3
  store i8* %133, i8** %135, align 8
  %136 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %137 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %136, i32 0, i32 2
  store i32* @axp288_regmap_config, i32** %137, align 8
  %138 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %139 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %138, i32 0, i32 1
  store i32* @axp803_regmap_irq_chip, i32** %139, align 8
  br label %201

140:                                              ; preds = %61
  %141 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %142 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %141, i32 0, i32 5
  %143 = load %struct.device*, %struct.device** %142, align 8
  %144 = getelementptr inbounds %struct.device, %struct.device* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @of_property_read_bool(i64 %145, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %140
  %149 = load i8*, i8** @axp806_self_working_cells, align 8
  %150 = call i8* @ARRAY_SIZE(i8* %149)
  %151 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %152 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %151, i32 0, i32 4
  store i8* %150, i8** %152, align 8
  %153 = load i8*, i8** @axp806_self_working_cells, align 8
  %154 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %155 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %154, i32 0, i32 3
  store i8* %153, i8** %155, align 8
  br label %164

156:                                              ; preds = %140
  %157 = load i8*, i8** @axp806_cells, align 8
  %158 = call i8* @ARRAY_SIZE(i8* %157)
  %159 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %160 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %159, i32 0, i32 4
  store i8* %158, i8** %160, align 8
  %161 = load i8*, i8** @axp806_cells, align 8
  %162 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %163 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %162, i32 0, i32 3
  store i8* %161, i8** %163, align 8
  br label %164

164:                                              ; preds = %156, %148
  %165 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %166 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %165, i32 0, i32 2
  store i32* @axp806_regmap_config, i32** %166, align 8
  %167 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %168 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %167, i32 0, i32 1
  store i32* @axp806_regmap_irq_chip, i32** %168, align 8
  br label %201

169:                                              ; preds = %61
  %170 = load i8*, i8** @axp809_cells, align 8
  %171 = call i8* @ARRAY_SIZE(i8* %170)
  %172 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %173 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %172, i32 0, i32 4
  store i8* %171, i8** %173, align 8
  %174 = load i8*, i8** @axp809_cells, align 8
  %175 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %176 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %175, i32 0, i32 3
  store i8* %174, i8** %176, align 8
  %177 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %178 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %177, i32 0, i32 2
  store i32* @axp22x_regmap_config, i32** %178, align 8
  %179 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %180 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %179, i32 0, i32 1
  store i32* @axp809_regmap_irq_chip, i32** %180, align 8
  br label %201

181:                                              ; preds = %61
  %182 = load i8*, i8** @axp813_cells, align 8
  %183 = call i8* @ARRAY_SIZE(i8* %182)
  %184 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %185 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %184, i32 0, i32 4
  store i8* %183, i8** %185, align 8
  %186 = load i8*, i8** @axp813_cells, align 8
  %187 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %188 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %187, i32 0, i32 3
  store i8* %186, i8** %188, align 8
  %189 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %190 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %189, i32 0, i32 2
  store i32* @axp288_regmap_config, i32** %190, align 8
  %191 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %192 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %191, i32 0, i32 1
  store i32* @axp803_regmap_irq_chip, i32** %192, align 8
  br label %201

193:                                              ; preds = %61
  %194 = load %struct.device*, %struct.device** %4, align 8
  %195 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %196 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %194, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %197)
  %199 = load i32, i32* @EINVAL, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %2, align 4
  br label %210

201:                                              ; preds = %181, %169, %164, %128, %113, %101, %89, %77, %65
  %202 = load %struct.device*, %struct.device** %4, align 8
  %203 = load i32*, i32** @axp20x_model_names, align 8
  %204 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %205 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds i32, i32* %203, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @dev_info(%struct.device* %202, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %208)
  store i32 0, i32* %2, align 4
  br label %210

210:                                              ; preds = %201, %193, %50, %24
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.acpi_device_id* @acpi_match_device(i32, %struct.device*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @of_property_read_bool(i64, i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
