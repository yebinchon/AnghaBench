; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_retu-mfd.c_retu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_retu-mfd.c_retu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retu_data = type { i8*, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.retu_dev = type { i32, i32*, i32, i32 }
%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_device_id = type { i32 }

@retu_data = common dso_local global %struct.retu_data* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@retu_bus = common dso_local global i32 0, align 4
@retu_config = common dso_local global i32 0, align 4
@RETU_REG_ASICR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"could not read %s revision: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%s%s%s v%d.%d found\0A\00", align 1
@RETU_REG_ASICR_VILMA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c" & \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@pm_power_off = common dso_local global i64 0, align 8
@retu_pm_power_off = common dso_local global %struct.retu_dev* null, align 8
@retu_power_off = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @retu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @retu_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.retu_data*, align 8
  %7 = alloca %struct.retu_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.retu_data*, %struct.retu_data** @retu_data, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.retu_data* %12)
  %14 = icmp sgt i32 %11, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %176

18:                                               ; preds = %2
  %19 = load %struct.retu_data*, %struct.retu_data** @retu_data, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.retu_data, %struct.retu_data* %19, i64 %24
  store %struct.retu_data* %25, %struct.retu_data** %6, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 2
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.retu_dev* @devm_kzalloc(i32* %27, i32 24, i32 %28)
  store %struct.retu_dev* %29, %struct.retu_dev** %7, align 8
  %30 = load %struct.retu_dev*, %struct.retu_dev** %7, align 8
  %31 = icmp eq %struct.retu_dev* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %18
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %176

35:                                               ; preds = %18
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = load %struct.retu_dev*, %struct.retu_dev** %7, align 8
  %38 = call i32 @i2c_set_clientdata(%struct.i2c_client* %36, %struct.retu_dev* %37)
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 2
  %41 = load %struct.retu_dev*, %struct.retu_dev** %7, align 8
  %42 = getelementptr inbounds %struct.retu_dev, %struct.retu_dev* %41, i32 0, i32 1
  store i32* %40, i32** %42, align 8
  %43 = load %struct.retu_dev*, %struct.retu_dev** %7, align 8
  %44 = getelementptr inbounds %struct.retu_dev, %struct.retu_dev* %43, i32 0, i32 3
  %45 = call i32 @mutex_init(i32* %44)
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 2
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 2
  %50 = call i32 @devm_regmap_init(i32* %47, i32* @retu_bus, i32* %49, i32* @retu_config)
  %51 = load %struct.retu_dev*, %struct.retu_dev** %7, align 8
  %52 = getelementptr inbounds %struct.retu_dev, %struct.retu_dev* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.retu_dev*, %struct.retu_dev** %7, align 8
  %54 = getelementptr inbounds %struct.retu_dev, %struct.retu_dev* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @IS_ERR(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %35
  %59 = load %struct.retu_dev*, %struct.retu_dev** %7, align 8
  %60 = getelementptr inbounds %struct.retu_dev, %struct.retu_dev* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @PTR_ERR(i32 %61)
  store i32 %62, i32* %3, align 4
  br label %176

63:                                               ; preds = %35
  %64 = load %struct.retu_dev*, %struct.retu_dev** %7, align 8
  %65 = load i32, i32* @RETU_REG_ASICR, align 4
  %66 = call i32 @retu_read(%struct.retu_dev* %64, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %63
  %70 = load %struct.retu_dev*, %struct.retu_dev** %7, align 8
  %71 = getelementptr inbounds %struct.retu_dev, %struct.retu_dev* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.retu_data*, %struct.retu_data** %6, align 8
  %74 = getelementptr inbounds %struct.retu_data, %struct.retu_data* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %176

79:                                               ; preds = %63
  %80 = load %struct.retu_dev*, %struct.retu_dev** %7, align 8
  %81 = getelementptr inbounds %struct.retu_dev, %struct.retu_dev* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.retu_data*, %struct.retu_data** %6, align 8
  %84 = getelementptr inbounds %struct.retu_data, %struct.retu_data* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @RETU_REG_ASICR_VILMA, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @RETU_REG_ASICR_VILMA, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %79
  %97 = load %struct.retu_data*, %struct.retu_data** %6, align 8
  %98 = getelementptr inbounds %struct.retu_data, %struct.retu_data* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  br label %101

100:                                              ; preds = %79
  br label %101

101:                                              ; preds = %100, %96
  %102 = phi i8* [ %99, %96 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %100 ]
  %103 = load i32, i32* %8, align 4
  %104 = ashr i32 %103, 4
  %105 = and i32 %104, 7
  %106 = load i32, i32* %8, align 4
  %107 = and i32 %106, 15
  %108 = call i32 @dev_info(i32* %82, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %85, i8* %91, i8* %102, i32 %105, i32 %107)
  %109 = load %struct.retu_dev*, %struct.retu_dev** %7, align 8
  %110 = load %struct.retu_data*, %struct.retu_data** %6, align 8
  %111 = getelementptr inbounds %struct.retu_data, %struct.retu_data* %110, i32 0, i32 3
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @retu_write(%struct.retu_dev* %109, i32 %114, i32 65535)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %101
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %3, align 4
  br label %176

120:                                              ; preds = %101
  %121 = load %struct.retu_dev*, %struct.retu_dev** %7, align 8
  %122 = getelementptr inbounds %struct.retu_dev, %struct.retu_dev* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %125 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @IRQF_ONESHOT, align 4
  %128 = load %struct.retu_data*, %struct.retu_data** %6, align 8
  %129 = getelementptr inbounds %struct.retu_data, %struct.retu_data* %128, i32 0, i32 3
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = load %struct.retu_dev*, %struct.retu_dev** %7, align 8
  %132 = getelementptr inbounds %struct.retu_dev, %struct.retu_dev* %131, i32 0, i32 0
  %133 = call i32 @regmap_add_irq_chip(i32 %123, i32 %126, i32 %127, i32 -1, %struct.TYPE_2__* %130, i32* %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %120
  %137 = load i32, i32* %8, align 4
  store i32 %137, i32* %3, align 4
  br label %176

138:                                              ; preds = %120
  %139 = load %struct.retu_dev*, %struct.retu_dev** %7, align 8
  %140 = getelementptr inbounds %struct.retu_dev, %struct.retu_dev* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.retu_data*, %struct.retu_data** %6, align 8
  %143 = getelementptr inbounds %struct.retu_data, %struct.retu_data* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.retu_data*, %struct.retu_data** %6, align 8
  %146 = getelementptr inbounds %struct.retu_data, %struct.retu_data* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.retu_dev*, %struct.retu_dev** %7, align 8
  %149 = getelementptr inbounds %struct.retu_dev, %struct.retu_dev* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @regmap_irq_chip_get_base(i32 %150)
  %152 = call i32 @mfd_add_devices(i32* %141, i32 -1, i32 %144, i32 %147, i32* null, i32 %151, i32* null)
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %8, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %138
  %156 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %157 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.retu_dev*, %struct.retu_dev** %7, align 8
  %160 = getelementptr inbounds %struct.retu_dev, %struct.retu_dev* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @regmap_del_irq_chip(i32 %158, i32 %161)
  %163 = load i32, i32* %8, align 4
  store i32 %163, i32* %3, align 4
  br label %176

164:                                              ; preds = %138
  %165 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %166 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %169, label %175

169:                                              ; preds = %164
  %170 = load i64, i64* @pm_power_off, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %169
  %173 = load %struct.retu_dev*, %struct.retu_dev** %7, align 8
  store %struct.retu_dev* %173, %struct.retu_dev** @retu_pm_power_off, align 8
  %174 = load i64, i64* @retu_power_off, align 8
  store i64 %174, i64* @pm_power_off, align 8
  br label %175

175:                                              ; preds = %172, %169, %164
  store i32 0, i32* %3, align 4
  br label %176

176:                                              ; preds = %175, %155, %136, %118, %69, %58, %32, %15
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local i32 @ARRAY_SIZE(%struct.retu_data*) #1

declare dso_local %struct.retu_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.retu_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_regmap_init(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @retu_read(%struct.retu_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @retu_write(%struct.retu_dev*, i32, i32) #1

declare dso_local i32 @regmap_add_irq_chip(i32, i32, i32, i32, %struct.TYPE_2__*, i32*) #1

declare dso_local i32 @mfd_add_devices(i32*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @regmap_irq_chip_get_base(i32) #1

declare dso_local i32 @regmap_del_irq_chip(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
