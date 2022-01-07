; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_as3722.c_as3722_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_as3722.c_as3722_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.as3722 = type { i64, i32*, i32, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@as3722_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"regmap init failed: %d\0A\00", align 1
@IRQF_ONESHOT = common dso_local global i64 0, align 8
@as3722_irq_chip = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to add regmap irq: %d\0A\00", align 1
@AS3722_CTRL_SEQU1_AC_OK_PWR_ON = common dso_local global i32 0, align 4
@AS3722_CTRL_SEQU1_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"CTRLsequ1 update failed: %d\0A\00", align 1
@as3722_devs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to add MFD devices: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"AS3722 core driver initialized successfully\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @as3722_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3722_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.as3722*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.as3722* @devm_kzalloc(i32* %11, i32 40, i32 %12)
  store %struct.as3722* %13, %struct.as3722** %6, align 8
  %14 = load %struct.as3722*, %struct.as3722** %6, align 8
  %15 = icmp ne %struct.as3722* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %152

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = load %struct.as3722*, %struct.as3722** %6, align 8
  %23 = getelementptr inbounds %struct.as3722, %struct.as3722* %22, i32 0, i32 1
  store i32* %21, i32** %23, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.as3722*, %struct.as3722** %6, align 8
  %28 = getelementptr inbounds %struct.as3722, %struct.as3722* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = load %struct.as3722*, %struct.as3722** %6, align 8
  %31 = call i32 @i2c_set_clientdata(%struct.i2c_client* %29, %struct.as3722* %30)
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = load %struct.as3722*, %struct.as3722** %6, align 8
  %34 = call i32 @as3722_i2c_of_probe(%struct.i2c_client* %32, %struct.as3722* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %19
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %152

39:                                               ; preds = %19
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %40, i32* @as3722_regmap_config)
  %42 = load %struct.as3722*, %struct.as3722** %6, align 8
  %43 = getelementptr inbounds %struct.as3722, %struct.as3722* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load %struct.as3722*, %struct.as3722** %6, align 8
  %45 = getelementptr inbounds %struct.as3722, %struct.as3722* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @IS_ERR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %39
  %50 = load %struct.as3722*, %struct.as3722** %6, align 8
  %51 = getelementptr inbounds %struct.as3722, %struct.as3722* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @PTR_ERR(i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %152

59:                                               ; preds = %39
  %60 = load %struct.as3722*, %struct.as3722** %6, align 8
  %61 = call i32 @as3722_check_device_id(%struct.as3722* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %152

66:                                               ; preds = %59
  %67 = load %struct.as3722*, %struct.as3722** %6, align 8
  %68 = getelementptr inbounds %struct.as3722, %struct.as3722* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @IRQF_ONESHOT, align 8
  %71 = or i64 %69, %70
  store i64 %71, i64* %7, align 8
  %72 = load %struct.as3722*, %struct.as3722** %6, align 8
  %73 = getelementptr inbounds %struct.as3722, %struct.as3722* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.as3722*, %struct.as3722** %6, align 8
  %76 = getelementptr inbounds %struct.as3722, %struct.as3722* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.as3722*, %struct.as3722** %6, align 8
  %79 = getelementptr inbounds %struct.as3722, %struct.as3722* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load %struct.as3722*, %struct.as3722** %6, align 8
  %83 = getelementptr inbounds %struct.as3722, %struct.as3722* %82, i32 0, i32 2
  %84 = call i32 @devm_regmap_add_irq_chip(i32* %74, i32 %77, i32 %80, i64 %81, i32 -1, i32* @as3722_irq_chip, i32* %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %66
  %88 = load %struct.as3722*, %struct.as3722** %6, align 8
  %89 = getelementptr inbounds %struct.as3722, %struct.as3722* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @dev_err(i32* %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %3, align 4
  br label %152

94:                                               ; preds = %66
  %95 = load %struct.as3722*, %struct.as3722** %6, align 8
  %96 = call i32 @as3722_configure_pullups(%struct.as3722* %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %3, align 4
  br label %152

101:                                              ; preds = %94
  %102 = load %struct.as3722*, %struct.as3722** %6, align 8
  %103 = getelementptr inbounds %struct.as3722, %struct.as3722* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* @AS3722_CTRL_SEQU1_AC_OK_PWR_ON, align 4
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %106, %101
  %109 = load %struct.as3722*, %struct.as3722** %6, align 8
  %110 = load i32, i32* @AS3722_CTRL_SEQU1_REG, align 4
  %111 = load i32, i32* @AS3722_CTRL_SEQU1_AC_OK_PWR_ON, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @as3722_update_bits(%struct.as3722* %109, i32 %110, i32 %111, i32 %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %108
  %117 = load %struct.as3722*, %struct.as3722** %6, align 8
  %118 = getelementptr inbounds %struct.as3722, %struct.as3722* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @dev_err(i32* %119, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %3, align 4
  br label %152

123:                                              ; preds = %108
  %124 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %125 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %124, i32 0, i32 0
  %126 = load i32, i32* @as3722_devs, align 4
  %127 = load i32, i32* @as3722_devs, align 4
  %128 = call i32 @ARRAY_SIZE(i32 %127)
  %129 = load %struct.as3722*, %struct.as3722** %6, align 8
  %130 = getelementptr inbounds %struct.as3722, %struct.as3722* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @regmap_irq_get_domain(i32 %131)
  %133 = call i32 @devm_mfd_add_devices(i32* %125, i32 -1, i32 %126, i32 %128, i32* null, i32 0, i32 %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %123
  %137 = load %struct.as3722*, %struct.as3722** %6, align 8
  %138 = getelementptr inbounds %struct.as3722, %struct.as3722* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @dev_err(i32* %139, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %3, align 4
  br label %152

143:                                              ; preds = %123
  %144 = load %struct.as3722*, %struct.as3722** %6, align 8
  %145 = getelementptr inbounds %struct.as3722, %struct.as3722* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = call i32 @device_init_wakeup(i32* %146, i32 1)
  %148 = load %struct.as3722*, %struct.as3722** %6, align 8
  %149 = getelementptr inbounds %struct.as3722, %struct.as3722* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @dev_dbg(i32* %150, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %143, %136, %116, %99, %87, %64, %49, %37, %16
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local %struct.as3722* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.as3722*) #1

declare dso_local i32 @as3722_i2c_of_probe(%struct.i2c_client*, %struct.as3722*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @as3722_check_device_id(%struct.as3722*) #1

declare dso_local i32 @devm_regmap_add_irq_chip(i32*, i32, i32, i64, i32, i32*, i32*) #1

declare dso_local i32 @as3722_configure_pullups(%struct.as3722*) #1

declare dso_local i32 @as3722_update_bits(%struct.as3722*, i32, i32, i32) #1

declare dso_local i32 @devm_mfd_add_devices(i32*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regmap_irq_get_domain(i32) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
