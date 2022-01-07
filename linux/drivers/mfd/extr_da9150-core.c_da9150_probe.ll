; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_da9150-core.c_da9150_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_da9150-core.c_da9150_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.da9150 = type { i32, %struct.i2c_client*, i32, i32, i32*, %struct.i2c_client* }
%struct.da9150_pdata = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@da9150_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@DA9150_CORE2WIRE_CTRL_A = common dso_local global i32 0, align 4
@DA9150_CORE_BASE_ADDR_MASK = common dso_local global i32 0, align 4
@DA9150_QIF_I2C_ADDR_LSB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to attach QIF client\0A\00", align 1
@da9150_devs = common dso_local global %struct.TYPE_4__* null, align 8
@DA9150_FG_IDX = common dso_local global i64 0, align 8
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@da9150_regmap_irq_chip = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to add regmap irq chip: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to add child devices: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @da9150_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9150_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.da9150*, align 8
  %7 = alloca %struct.da9150_pdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 2
  %12 = call %struct.da9150_pdata* @dev_get_platdata(i32* %11)
  store %struct.da9150_pdata* %12, %struct.da9150_pdata** %7, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.da9150* @devm_kzalloc(i32* %14, i32 40, i32 %15)
  store %struct.da9150* %16, %struct.da9150** %6, align 8
  %17 = load %struct.da9150*, %struct.da9150** %6, align 8
  %18 = icmp ne %struct.da9150* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %183

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 2
  %25 = load %struct.da9150*, %struct.da9150** %6, align 8
  %26 = getelementptr inbounds %struct.da9150, %struct.da9150* %25, i32 0, i32 4
  store i32* %24, i32** %26, align 8
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.da9150*, %struct.da9150** %6, align 8
  %31 = getelementptr inbounds %struct.da9150, %struct.da9150* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = load %struct.da9150*, %struct.da9150** %6, align 8
  %34 = call i32 @i2c_set_clientdata(%struct.i2c_client* %32, %struct.da9150* %33)
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = call %struct.i2c_client* @devm_regmap_init_i2c(%struct.i2c_client* %35, i32* @da9150_regmap_config)
  %37 = load %struct.da9150*, %struct.da9150** %6, align 8
  %38 = getelementptr inbounds %struct.da9150, %struct.da9150* %37, i32 0, i32 5
  store %struct.i2c_client* %36, %struct.i2c_client** %38, align 8
  %39 = load %struct.da9150*, %struct.da9150** %6, align 8
  %40 = getelementptr inbounds %struct.da9150, %struct.da9150* %39, i32 0, i32 5
  %41 = load %struct.i2c_client*, %struct.i2c_client** %40, align 8
  %42 = call i64 @IS_ERR(%struct.i2c_client* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %22
  %45 = load %struct.da9150*, %struct.da9150** %6, align 8
  %46 = getelementptr inbounds %struct.da9150, %struct.da9150* %45, i32 0, i32 5
  %47 = load %struct.i2c_client*, %struct.i2c_client** %46, align 8
  %48 = call i32 @PTR_ERR(%struct.i2c_client* %47)
  store i32 %48, i32* %9, align 4
  %49 = load %struct.da9150*, %struct.da9150** %6, align 8
  %50 = getelementptr inbounds %struct.da9150, %struct.da9150* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 (i32*, i8*, ...) @dev_err(i32* %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %3, align 4
  br label %183

55:                                               ; preds = %22
  %56 = load %struct.da9150*, %struct.da9150** %6, align 8
  %57 = load i32, i32* @DA9150_CORE2WIRE_CTRL_A, align 4
  %58 = call i32 @da9150_reg_read(%struct.da9150* %56, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @DA9150_CORE_BASE_ADDR_MASK, align 4
  %61 = and i32 %59, %60
  %62 = ashr i32 %61, 1
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* @DA9150_QIF_I2C_ADDR_LSB, align 4
  %64 = load i32, i32* %8, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call %struct.i2c_client* @i2c_new_dummy_device(i32 %68, i32 %69)
  %71 = load %struct.da9150*, %struct.da9150** %6, align 8
  %72 = getelementptr inbounds %struct.da9150, %struct.da9150* %71, i32 0, i32 1
  store %struct.i2c_client* %70, %struct.i2c_client** %72, align 8
  %73 = load %struct.da9150*, %struct.da9150** %6, align 8
  %74 = getelementptr inbounds %struct.da9150, %struct.da9150* %73, i32 0, i32 1
  %75 = load %struct.i2c_client*, %struct.i2c_client** %74, align 8
  %76 = call i64 @IS_ERR(%struct.i2c_client* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %55
  %79 = load %struct.da9150*, %struct.da9150** %6, align 8
  %80 = getelementptr inbounds %struct.da9150, %struct.da9150* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 (i32*, i8*, ...) @dev_err(i32* %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %83 = load %struct.da9150*, %struct.da9150** %6, align 8
  %84 = getelementptr inbounds %struct.da9150, %struct.da9150* %83, i32 0, i32 1
  %85 = load %struct.i2c_client*, %struct.i2c_client** %84, align 8
  %86 = call i32 @PTR_ERR(%struct.i2c_client* %85)
  store i32 %86, i32* %3, align 4
  br label %183

87:                                               ; preds = %55
  %88 = load %struct.da9150*, %struct.da9150** %6, align 8
  %89 = getelementptr inbounds %struct.da9150, %struct.da9150* %88, i32 0, i32 1
  %90 = load %struct.i2c_client*, %struct.i2c_client** %89, align 8
  %91 = load %struct.da9150*, %struct.da9150** %6, align 8
  %92 = call i32 @i2c_set_clientdata(%struct.i2c_client* %90, %struct.da9150* %91)
  %93 = load %struct.da9150_pdata*, %struct.da9150_pdata** %7, align 8
  %94 = icmp ne %struct.da9150_pdata* %93, null
  br i1 %94, label %95, label %112

95:                                               ; preds = %87
  %96 = load %struct.da9150_pdata*, %struct.da9150_pdata** %7, align 8
  %97 = getelementptr inbounds %struct.da9150_pdata, %struct.da9150_pdata* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.da9150*, %struct.da9150** %6, align 8
  %100 = getelementptr inbounds %struct.da9150, %struct.da9150* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.da9150_pdata*, %struct.da9150_pdata** %7, align 8
  %102 = getelementptr inbounds %struct.da9150_pdata, %struct.da9150_pdata* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** @da9150_devs, align 8
  %105 = load i64, i64* @DA9150_FG_IDX, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  store i32 %103, i32* %107, align 4
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** @da9150_devs, align 8
  %109 = load i64, i64* @DA9150_FG_IDX, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  store i32 4, i32* %111, align 4
  br label %115

112:                                              ; preds = %87
  %113 = load %struct.da9150*, %struct.da9150** %6, align 8
  %114 = getelementptr inbounds %struct.da9150, %struct.da9150* %113, i32 0, i32 0
  store i32 -1, i32* %114, align 8
  br label %115

115:                                              ; preds = %112, %95
  %116 = load %struct.da9150*, %struct.da9150** %6, align 8
  %117 = getelementptr inbounds %struct.da9150, %struct.da9150* %116, i32 0, i32 5
  %118 = load %struct.i2c_client*, %struct.i2c_client** %117, align 8
  %119 = load %struct.da9150*, %struct.da9150** %6, align 8
  %120 = getelementptr inbounds %struct.da9150, %struct.da9150* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %123 = load i32, i32* @IRQF_ONESHOT, align 4
  %124 = or i32 %122, %123
  %125 = load %struct.da9150*, %struct.da9150** %6, align 8
  %126 = getelementptr inbounds %struct.da9150, %struct.da9150* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.da9150*, %struct.da9150** %6, align 8
  %129 = getelementptr inbounds %struct.da9150, %struct.da9150* %128, i32 0, i32 2
  %130 = call i32 @regmap_add_irq_chip(%struct.i2c_client* %118, i32 %121, i32 %124, i32 %127, i32* @da9150_regmap_irq_chip, i32* %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %115
  %134 = load %struct.da9150*, %struct.da9150** %6, align 8
  %135 = getelementptr inbounds %struct.da9150, %struct.da9150* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = call i32 (i32*, i8*, ...) @dev_err(i32* %136, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %137)
  br label %177

139:                                              ; preds = %115
  %140 = load %struct.da9150*, %struct.da9150** %6, align 8
  %141 = getelementptr inbounds %struct.da9150, %struct.da9150* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @regmap_irq_chip_get_base(i32 %142)
  %144 = load %struct.da9150*, %struct.da9150** %6, align 8
  %145 = getelementptr inbounds %struct.da9150, %struct.da9150* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.da9150*, %struct.da9150** %6, align 8
  %147 = getelementptr inbounds %struct.da9150, %struct.da9150* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @enable_irq_wake(i32 %148)
  %150 = load %struct.da9150*, %struct.da9150** %6, align 8
  %151 = getelementptr inbounds %struct.da9150, %struct.da9150* %150, i32 0, i32 4
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** @da9150_devs, align 8
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** @da9150_devs, align 8
  %155 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %154)
  %156 = load %struct.da9150*, %struct.da9150** %6, align 8
  %157 = getelementptr inbounds %struct.da9150, %struct.da9150* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @mfd_add_devices(i32* %152, i32 -1, %struct.TYPE_4__* %153, i32 %155, i32* null, i32 %158, i32* null)
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %139
  %163 = load %struct.da9150*, %struct.da9150** %6, align 8
  %164 = getelementptr inbounds %struct.da9150, %struct.da9150* %163, i32 0, i32 4
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = call i32 (i32*, i8*, ...) @dev_err(i32* %165, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %166)
  br label %169

168:                                              ; preds = %139
  store i32 0, i32* %3, align 4
  br label %183

169:                                              ; preds = %162
  %170 = load %struct.da9150*, %struct.da9150** %6, align 8
  %171 = getelementptr inbounds %struct.da9150, %struct.da9150* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.da9150*, %struct.da9150** %6, align 8
  %174 = getelementptr inbounds %struct.da9150, %struct.da9150* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @regmap_del_irq_chip(i32 %172, i32 %175)
  br label %177

177:                                              ; preds = %169, %133
  %178 = load %struct.da9150*, %struct.da9150** %6, align 8
  %179 = getelementptr inbounds %struct.da9150, %struct.da9150* %178, i32 0, i32 1
  %180 = load %struct.i2c_client*, %struct.i2c_client** %179, align 8
  %181 = call i32 @i2c_unregister_device(%struct.i2c_client* %180)
  %182 = load i32, i32* %9, align 4
  store i32 %182, i32* %3, align 4
  br label %183

183:                                              ; preds = %177, %168, %78, %44, %19
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local %struct.da9150_pdata* @dev_get_platdata(i32*) #1

declare dso_local %struct.da9150* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.da9150*) #1

declare dso_local %struct.i2c_client* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.i2c_client*) #1

declare dso_local i32 @PTR_ERR(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @da9150_reg_read(%struct.da9150*, i32) #1

declare dso_local %struct.i2c_client* @i2c_new_dummy_device(i32, i32) #1

declare dso_local i32 @regmap_add_irq_chip(%struct.i2c_client*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @regmap_irq_chip_get_base(i32) #1

declare dso_local i32 @enable_irq_wake(i32) #1

declare dso_local i32 @mfd_add_devices(i32*, i32, %struct.TYPE_4__*, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @regmap_del_irq_chip(i32, i32) #1

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
