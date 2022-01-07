; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65217.c_tps65217_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65217.c_tps65217_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.i2c_client = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.tps65217 = type { %struct.TYPE_10__*, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"ti,pmic-shutdown-controller\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tps65217_regmap_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@tps65217s = common dso_local global %struct.TYPE_9__* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"mfd_add_devices failed: %d\0A\00", align 1
@TPS65217_REG_CHIPID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to read revision register: %d\0A\00", align 1
@TPS65217_REG_STATUS = common dso_local global i32 0, align 4
@TPS65217_STATUS_OFF = common dso_local global i32 0, align 4
@TPS65217_PROTECT_NONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"unable to set the status OFF\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"TPS65217 ID %#x version 1.%d\0A\00", align 1
@TPS65217_CHIPID_CHIP_MASK = common dso_local global i32 0, align 4
@TPS65217_CHIPID_REV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @tps65217_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65217_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.tps65217*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @of_property_read_bool(i32 %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.tps65217* @devm_kzalloc(%struct.TYPE_10__* %15, i32 16, i32 %16)
  store %struct.tps65217* %17, %struct.tps65217** %4, align 8
  %18 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %19 = icmp ne %struct.tps65217* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %141

23:                                               ; preds = %1
  %24 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %25 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %26 = call i32 @i2c_set_clientdata(%struct.i2c_client* %24, %struct.tps65217* %25)
  %27 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 1
  %29 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %30 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %29, i32 0, i32 0
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %30, align 8
  %31 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %32 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %31, i32* @tps65217_regmap_config)
  %33 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %34 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %36 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %23
  %41 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %42 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %46 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @dev_err(%struct.TYPE_10__* %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %2, align 4
  br label %141

51:                                               ; preds = %23
  %52 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %58 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @tps65217_irq_init(%struct.tps65217* %57, i32 %60)
  br label %78

62:                                               ; preds = %51
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %74, %62
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tps65217s, align 8
  %66 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %65)
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tps65217s, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %63

77:                                               ; preds = %63
  br label %78

78:                                               ; preds = %77, %56
  %79 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %80 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %79, i32 0, i32 0
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tps65217s, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tps65217s, align 8
  %84 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %83)
  %85 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %86 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @devm_mfd_add_devices(%struct.TYPE_10__* %81, i32 -1, %struct.TYPE_9__* %82, i32 %84, i32* null, i32 0, i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %78
  %92 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %93 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %92, i32 0, i32 0
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @dev_err(%struct.TYPE_10__* %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %2, align 4
  br label %141

98:                                               ; preds = %78
  %99 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %100 = load i32, i32* @TPS65217_REG_CHIPID, align 4
  %101 = call i32 @tps65217_reg_read(%struct.tps65217* %99, i32 %100, i32* %5)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %98
  %105 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %106 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %105, i32 0, i32 0
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @dev_err(%struct.TYPE_10__* %107, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %2, align 4
  br label %141

111:                                              ; preds = %98
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %111
  %115 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %116 = load i32, i32* @TPS65217_REG_STATUS, align 4
  %117 = load i32, i32* @TPS65217_STATUS_OFF, align 4
  %118 = load i32, i32* @TPS65217_STATUS_OFF, align 4
  %119 = load i32, i32* @TPS65217_PROTECT_NONE, align 4
  %120 = call i32 @tps65217_set_bits(%struct.tps65217* %115, i32 %116, i32 %117, i32 %118, i32 %119)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %114
  %124 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %125 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %124, i32 0, i32 0
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = call i32 @dev_warn(%struct.TYPE_10__* %126, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %128

128:                                              ; preds = %123, %114
  br label %129

129:                                              ; preds = %128, %111
  %130 = load %struct.tps65217*, %struct.tps65217** %4, align 8
  %131 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %130, i32 0, i32 0
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* @TPS65217_CHIPID_CHIP_MASK, align 4
  %135 = and i32 %133, %134
  %136 = lshr i32 %135, 4
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @TPS65217_CHIPID_REV_MASK, align 4
  %139 = and i32 %137, %138
  %140 = call i32 @dev_info(%struct.TYPE_10__* %132, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %136, i32 %139)
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %129, %104, %91, %40, %20
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

declare dso_local %struct.tps65217* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tps65217*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @tps65217_irq_init(%struct.tps65217*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_9__*) #1

declare dso_local i32 @devm_mfd_add_devices(%struct.TYPE_10__*, i32, %struct.TYPE_9__*, i32, i32*, i32, i32) #1

declare dso_local i32 @tps65217_reg_read(%struct.tps65217*, i32, i32*) #1

declare dso_local i32 @tps65217_set_bits(%struct.tps65217*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @dev_info(%struct.TYPE_10__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
