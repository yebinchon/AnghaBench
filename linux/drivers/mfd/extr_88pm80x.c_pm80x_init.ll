; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm80x.c_pm80x_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm80x.c_pm80x_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.pm80x_chip = type { %struct.i2c_client*, %struct.i2c_client*, i32*, i32, %struct.regmap*, i32 }
%struct.i2c_client = type { i32, i32 }
%struct.regmap = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pm80x_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@PM80X_CHIP_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to read CHIP ID: %d\0A\00", align 1
@chip_mapping = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"Failed to detect Marvell 88PM800:ChipID[0x%x]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@g_pm80x_chip = common dso_local global %struct.pm80x_chip* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm80x_init(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.pm80x_chip*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.pm80x_chip* @devm_kzalloc(i32* %10, i32 48, i32 %11)
  store %struct.pm80x_chip* %12, %struct.pm80x_chip** %4, align 8
  %13 = load %struct.pm80x_chip*, %struct.pm80x_chip** %4, align 8
  %14 = icmp ne %struct.pm80x_chip* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %134

18:                                               ; preds = %1
  %19 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %20 = call %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client* %19, i32* @pm80x_regmap_config)
  store %struct.regmap* %20, %struct.regmap** %5, align 8
  %21 = load %struct.regmap*, %struct.regmap** %5, align 8
  %22 = call i64 @IS_ERR(%struct.regmap* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load %struct.regmap*, %struct.regmap** %5, align 8
  %26 = call i32 @PTR_ERR(%struct.regmap* %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %2, align 4
  br label %134

32:                                               ; preds = %18
  %33 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %34 = load %struct.pm80x_chip*, %struct.pm80x_chip** %4, align 8
  %35 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %34, i32 0, i32 0
  store %struct.i2c_client* %33, %struct.i2c_client** %35, align 8
  %36 = load %struct.regmap*, %struct.regmap** %5, align 8
  %37 = load %struct.pm80x_chip*, %struct.pm80x_chip** %4, align 8
  %38 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %37, i32 0, i32 4
  store %struct.regmap* %36, %struct.regmap** %38, align 8
  %39 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.pm80x_chip*, %struct.pm80x_chip** %4, align 8
  %43 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 0
  %46 = load %struct.pm80x_chip*, %struct.pm80x_chip** %4, align 8
  %47 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %46, i32 0, i32 2
  store i32* %45, i32** %47, align 8
  %48 = load %struct.pm80x_chip*, %struct.pm80x_chip** %4, align 8
  %49 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.pm80x_chip*, %struct.pm80x_chip** %4, align 8
  %52 = call i32 @dev_set_drvdata(i32* %50, %struct.pm80x_chip* %51)
  %53 = load %struct.pm80x_chip*, %struct.pm80x_chip** %4, align 8
  %54 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %53, i32 0, i32 0
  %55 = load %struct.i2c_client*, %struct.i2c_client** %54, align 8
  %56 = load %struct.pm80x_chip*, %struct.pm80x_chip** %4, align 8
  %57 = call i32 @i2c_set_clientdata(%struct.i2c_client* %55, %struct.pm80x_chip* %56)
  %58 = load %struct.pm80x_chip*, %struct.pm80x_chip** %4, align 8
  %59 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %58, i32 0, i32 4
  %60 = load %struct.regmap*, %struct.regmap** %59, align 8
  %61 = load i32, i32* @PM80X_CHIP_ID, align 4
  %62 = call i32 @regmap_read(%struct.regmap* %60, i32 %61, i32* %6)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %32
  %66 = load %struct.pm80x_chip*, %struct.pm80x_chip** %4, align 8
  %67 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %2, align 4
  br label %134

72:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %98, %72
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** @chip_mapping, align 8
  %76 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %75)
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %101

78:                                               ; preds = %73
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** @chip_mapping, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i64 @PM80X_CHIP_ID_NUM(i32 %85)
  %87 = icmp eq i64 %84, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %78
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** @chip_mapping, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.pm80x_chip*, %struct.pm80x_chip** %4, align 8
  %96 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 8
  br label %101

97:                                               ; preds = %78
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %73

101:                                              ; preds = %88, %73
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** @chip_mapping, align 8
  %104 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %103)
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load %struct.pm80x_chip*, %struct.pm80x_chip** %4, align 8
  %108 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @dev_err(i32* %109, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %2, align 4
  br label %134

114:                                              ; preds = %101
  %115 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %116 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %115, i32 0, i32 0
  %117 = call i32 @device_init_wakeup(i32* %116, i32 1)
  %118 = load %struct.pm80x_chip*, %struct.pm80x_chip** @g_pm80x_chip, align 8
  %119 = icmp ne %struct.pm80x_chip* %118, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %114
  %121 = load %struct.pm80x_chip*, %struct.pm80x_chip** %4, align 8
  store %struct.pm80x_chip* %121, %struct.pm80x_chip** @g_pm80x_chip, align 8
  br label %133

122:                                              ; preds = %114
  %123 = load %struct.pm80x_chip*, %struct.pm80x_chip** @g_pm80x_chip, align 8
  %124 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %123, i32 0, i32 0
  %125 = load %struct.i2c_client*, %struct.i2c_client** %124, align 8
  %126 = load %struct.pm80x_chip*, %struct.pm80x_chip** %4, align 8
  %127 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %126, i32 0, i32 1
  store %struct.i2c_client* %125, %struct.i2c_client** %127, align 8
  %128 = load %struct.pm80x_chip*, %struct.pm80x_chip** %4, align 8
  %129 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %128, i32 0, i32 0
  %130 = load %struct.i2c_client*, %struct.i2c_client** %129, align 8
  %131 = load %struct.pm80x_chip*, %struct.pm80x_chip** @g_pm80x_chip, align 8
  %132 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %131, i32 0, i32 1
  store %struct.i2c_client* %130, %struct.i2c_client** %132, align 8
  br label %133

133:                                              ; preds = %122, %120
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %133, %106, %65, %24, %15
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local %struct.pm80x_chip* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.pm80x_chip*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.pm80x_chip*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @PM80X_CHIP_ID_NUM(i32) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
