; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303_i2c.c_lan9303_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303_i2c.c_lan9303_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.lan9303_i2c = type { %struct.TYPE_5__, %struct.i2c_client* }
%struct.TYPE_5__ = type { i32*, %struct.TYPE_6__*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lan9303_i2c_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@lan9303_indirect_phy_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"LAN9303 I2C driver loaded successfully\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lan9303_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan9303_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.lan9303_i2c*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.lan9303_i2c* @devm_kzalloc(%struct.TYPE_6__* %9, i32 32, i32 %10)
  store %struct.lan9303_i2c* %11, %struct.lan9303_i2c** %6, align 8
  %12 = load %struct.lan9303_i2c*, %struct.lan9303_i2c** %6, align 8
  %13 = icmp ne %struct.lan9303_i2c* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %70

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %18, i32* @lan9303_i2c_regmap_config)
  %20 = load %struct.lan9303_i2c*, %struct.lan9303_i2c** %6, align 8
  %21 = getelementptr inbounds %struct.lan9303_i2c, %struct.lan9303_i2c* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 8
  %23 = load %struct.lan9303_i2c*, %struct.lan9303_i2c** %6, align 8
  %24 = getelementptr inbounds %struct.lan9303_i2c, %struct.lan9303_i2c* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @IS_ERR(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %17
  %30 = load %struct.lan9303_i2c*, %struct.lan9303_i2c** %6, align 8
  %31 = getelementptr inbounds %struct.lan9303_i2c, %struct.lan9303_i2c* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @PTR_ERR(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @dev_err(%struct.TYPE_6__* %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %70

40:                                               ; preds = %17
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = load %struct.lan9303_i2c*, %struct.lan9303_i2c** %6, align 8
  %43 = getelementptr inbounds %struct.lan9303_i2c, %struct.lan9303_i2c* %42, i32 0, i32 1
  store %struct.i2c_client* %41, %struct.i2c_client** %43, align 8
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = load %struct.lan9303_i2c*, %struct.lan9303_i2c** %6, align 8
  %46 = call i32 @i2c_set_clientdata(%struct.i2c_client* %44, %struct.lan9303_i2c* %45)
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = load %struct.lan9303_i2c*, %struct.lan9303_i2c** %6, align 8
  %50 = getelementptr inbounds %struct.lan9303_i2c, %struct.lan9303_i2c* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store %struct.TYPE_6__* %48, %struct.TYPE_6__** %51, align 8
  %52 = load %struct.lan9303_i2c*, %struct.lan9303_i2c** %6, align 8
  %53 = getelementptr inbounds %struct.lan9303_i2c, %struct.lan9303_i2c* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32* @lan9303_indirect_phy_ops, i32** %54, align 8
  %55 = load %struct.lan9303_i2c*, %struct.lan9303_i2c** %6, align 8
  %56 = getelementptr inbounds %struct.lan9303_i2c, %struct.lan9303_i2c* %55, i32 0, i32 0
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @lan9303_probe(%struct.TYPE_5__* %56, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %40
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %70

66:                                               ; preds = %40
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 0
  %69 = call i32 @dev_info(%struct.TYPE_6__* %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %64, %29, %14
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.lan9303_i2c* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lan9303_i2c*) #1

declare dso_local i32 @lan9303_probe(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
