; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65086.c_tps65086_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65086.c_tps65086_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.tps65086 = type { i32, i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tps65086_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to initialize register map\0A\00", align 1
@TPS65086_DEVICEID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to read revision register\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Device: TPS65086%01lX, OTP: %c, Rev: %ld\0A\00", align 1
@TPS65086_DEVICEID_PART_MASK = common dso_local global i32 0, align 4
@TPS65086_DEVICEID_OTP_MASK = common dso_local global i32 0, align 4
@TPS65086_DEVICEID_REV_MASK = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@tps65086_irq_chip = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to register IRQ chip\0A\00", align 1
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@tps65086_cells = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tps65086_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65086_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tps65086*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.tps65086* @devm_kzalloc(i32* %10, i32 24, i32 %11)
  store %struct.tps65086* %12, %struct.tps65086** %6, align 8
  %13 = load %struct.tps65086*, %struct.tps65086** %6, align 8
  %14 = icmp ne %struct.tps65086* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %126

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.tps65086*, %struct.tps65086** %6, align 8
  %21 = call i32 @i2c_set_clientdata(%struct.i2c_client* %19, %struct.tps65086* %20)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 1
  %24 = load %struct.tps65086*, %struct.tps65086** %6, align 8
  %25 = getelementptr inbounds %struct.tps65086, %struct.tps65086* %24, i32 0, i32 2
  store i32* %23, i32** %25, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.tps65086*, %struct.tps65086** %6, align 8
  %30 = getelementptr inbounds %struct.tps65086, %struct.tps65086* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %31, i32* @tps65086_regmap_config)
  %33 = load %struct.tps65086*, %struct.tps65086** %6, align 8
  %34 = getelementptr inbounds %struct.tps65086, %struct.tps65086* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.tps65086*, %struct.tps65086** %6, align 8
  %36 = getelementptr inbounds %struct.tps65086, %struct.tps65086* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %18
  %41 = load %struct.tps65086*, %struct.tps65086** %6, align 8
  %42 = getelementptr inbounds %struct.tps65086, %struct.tps65086* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.tps65086*, %struct.tps65086** %6, align 8
  %46 = getelementptr inbounds %struct.tps65086, %struct.tps65086* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @PTR_ERR(i32 %47)
  store i32 %48, i32* %3, align 4
  br label %126

49:                                               ; preds = %18
  %50 = load %struct.tps65086*, %struct.tps65086** %6, align 8
  %51 = getelementptr inbounds %struct.tps65086, %struct.tps65086* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @TPS65086_DEVICEID, align 4
  %54 = call i32 @regmap_read(i32 %52, i32 %53, i32* %7)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load %struct.tps65086*, %struct.tps65086** %6, align 8
  %59 = getelementptr inbounds %struct.tps65086, %struct.tps65086* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @dev_err(i32* %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %126

63:                                               ; preds = %49
  %64 = load %struct.tps65086*, %struct.tps65086** %6, align 8
  %65 = getelementptr inbounds %struct.tps65086, %struct.tps65086* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @TPS65086_DEVICEID_PART_MASK, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @TPS65086_DEVICEID_OTP_MASK, align 4
  %72 = and i32 %70, %71
  %73 = lshr i32 %72, 4
  %74 = trunc i32 %73 to i8
  %75 = sext i8 %74 to i32
  %76 = add nsw i32 %75, 65
  %77 = trunc i32 %76 to i8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @TPS65086_DEVICEID_REV_MASK, align 4
  %80 = and i32 %78, %79
  %81 = lshr i32 %80, 6
  %82 = call i32 @dev_info(i32* %66, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %69, i8 signext %77, i32 %81)
  %83 = load %struct.tps65086*, %struct.tps65086** %6, align 8
  %84 = getelementptr inbounds %struct.tps65086, %struct.tps65086* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.tps65086*, %struct.tps65086** %6, align 8
  %87 = getelementptr inbounds %struct.tps65086, %struct.tps65086* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @IRQF_ONESHOT, align 4
  %90 = load %struct.tps65086*, %struct.tps65086** %6, align 8
  %91 = getelementptr inbounds %struct.tps65086, %struct.tps65086* %90, i32 0, i32 0
  %92 = call i32 @regmap_add_irq_chip(i32 %85, i32 %88, i32 %89, i32 0, i32* @tps65086_irq_chip, i32* %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %63
  %96 = load %struct.tps65086*, %struct.tps65086** %6, align 8
  %97 = getelementptr inbounds %struct.tps65086, %struct.tps65086* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @dev_err(i32* %98, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %3, align 4
  br label %126

101:                                              ; preds = %63
  %102 = load %struct.tps65086*, %struct.tps65086** %6, align 8
  %103 = getelementptr inbounds %struct.tps65086, %struct.tps65086* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %106 = load i32, i32* @tps65086_cells, align 4
  %107 = load i32, i32* @tps65086_cells, align 4
  %108 = call i32 @ARRAY_SIZE(i32 %107)
  %109 = load %struct.tps65086*, %struct.tps65086** %6, align 8
  %110 = getelementptr inbounds %struct.tps65086, %struct.tps65086* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @regmap_irq_get_domain(i32 %111)
  %113 = call i32 @mfd_add_devices(i32* %104, i32 %105, i32 %106, i32 %108, i32* null, i32 0, i32 %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %101
  %117 = load %struct.tps65086*, %struct.tps65086** %6, align 8
  %118 = getelementptr inbounds %struct.tps65086, %struct.tps65086* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.tps65086*, %struct.tps65086** %6, align 8
  %121 = getelementptr inbounds %struct.tps65086, %struct.tps65086* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @regmap_del_irq_chip(i32 %119, i32 %122)
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %3, align 4
  br label %126

125:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %116, %95, %57, %40, %15
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.tps65086* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tps65086*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i8 signext, i32) #1

declare dso_local i32 @regmap_add_irq_chip(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @mfd_add_devices(i32*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regmap_irq_get_domain(i32) #1

declare dso_local i32 @regmap_del_irq_chip(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
