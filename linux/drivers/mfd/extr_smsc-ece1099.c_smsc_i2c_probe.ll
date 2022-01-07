; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_smsc-ece1099.c_smsc_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_smsc-ece1099.c_smsc_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.smsc = type { i32, i32, %struct.TYPE_4__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@smsc_regmap_config = common dso_local global i32 0, align 4
@SMSC_DEV_ID = common dso_local global i32 0, align 4
@SMSC_DEV_REV = common dso_local global i32 0, align 4
@SMSC_VEN_ID_L = common dso_local global i32 0, align 4
@SMSC_VEN_ID_H = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"SMSCxxx devid: %02x rev: %02x venid: %02x\0A\00", align 1
@SMSC_CLK_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @smsc_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.smsc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.smsc* @devm_kzalloc(%struct.TYPE_4__* %13, i32 16, i32 %14)
  store %struct.smsc* %15, %struct.smsc** %6, align 8
  %16 = load %struct.smsc*, %struct.smsc** %6, align 8
  %17 = icmp ne %struct.smsc* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %87

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %22, i32* @smsc_regmap_config)
  %24 = load %struct.smsc*, %struct.smsc** %6, align 8
  %25 = getelementptr inbounds %struct.smsc, %struct.smsc* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.smsc*, %struct.smsc** %6, align 8
  %27 = getelementptr inbounds %struct.smsc, %struct.smsc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load %struct.smsc*, %struct.smsc** %6, align 8
  %33 = getelementptr inbounds %struct.smsc, %struct.smsc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %3, align 4
  br label %87

36:                                               ; preds = %21
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load %struct.smsc*, %struct.smsc** %6, align 8
  %39 = call i32 @i2c_set_clientdata(%struct.i2c_client* %37, %struct.smsc* %38)
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = load %struct.smsc*, %struct.smsc** %6, align 8
  %43 = getelementptr inbounds %struct.smsc, %struct.smsc* %42, i32 0, i32 2
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %43, align 8
  %44 = load %struct.smsc*, %struct.smsc** %6, align 8
  %45 = getelementptr inbounds %struct.smsc, %struct.smsc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SMSC_DEV_ID, align 4
  %48 = call i32 @regmap_read(i32 %46, i32 %47, i32* %7)
  %49 = load %struct.smsc*, %struct.smsc** %6, align 8
  %50 = getelementptr inbounds %struct.smsc, %struct.smsc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SMSC_DEV_REV, align 4
  %53 = call i32 @regmap_read(i32 %51, i32 %52, i32* %8)
  %54 = load %struct.smsc*, %struct.smsc** %6, align 8
  %55 = getelementptr inbounds %struct.smsc, %struct.smsc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SMSC_VEN_ID_L, align 4
  %58 = call i32 @regmap_read(i32 %56, i32 %57, i32* %9)
  %59 = load %struct.smsc*, %struct.smsc** %6, align 8
  %60 = getelementptr inbounds %struct.smsc, %struct.smsc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SMSC_VEN_ID_H, align 4
  %63 = call i32 @regmap_read(i32 %61, i32 %62, i32* %10)
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 0
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %10, align 4
  %69 = shl i32 %68, 8
  %70 = load i32, i32* %9, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @dev_info(%struct.TYPE_4__* %65, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67, i32 %71)
  %73 = load %struct.smsc*, %struct.smsc** %6, align 8
  %74 = getelementptr inbounds %struct.smsc, %struct.smsc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @SMSC_CLK_CTRL, align 4
  %77 = load %struct.smsc*, %struct.smsc** %6, align 8
  %78 = getelementptr inbounds %struct.smsc, %struct.smsc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @regmap_write(i32 %75, i32 %76, i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %36
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %3, align 4
  br label %87

85:                                               ; preds = %36
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %83, %31, %18
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.smsc* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.smsc*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_4__*, i8*, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
