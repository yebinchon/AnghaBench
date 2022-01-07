; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_da9063-core.c_da9063_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_da9063-core.c_da9063_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9063 = type { i32, i32, i32, i64, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"Cannot clear fault log\0A\00", align 1
@DA9063_REG_CHIP_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Cannot read chip model id.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@PMIC_CHIP_ID_DA9063 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Invalid chip model id: 0x%02x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DA9063_REG_CHIP_VARIANT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Cannot read chip variant id.\0A\00", align 1
@DA9063_CHIP_VARIANT_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"Device detected (chip-ID: 0x%02X, var-ID: 0x%02X)\0A\00", align 1
@PMIC_DA9063_BB = common dso_local global i32 0, align 4
@PMIC_DA9063_AD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Cannot support variant code: 0x%02X\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Cannot initialize interrupts.\0A\00", align 1
@PLATFORM_DEVID_NONE = common dso_local global i32 0, align 4
@da9063_common_devs = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"Failed to add child devices\0A\00", align 1
@PMIC_TYPE_DA9063 = common dso_local global i64 0, align 8
@da9063_devs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @da9063_device_init(%struct.da9063* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.da9063*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.da9063* %0, %struct.da9063** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.da9063*, %struct.da9063** %4, align 8
  %11 = call i32 @da9063_clear_fault_log(%struct.da9063* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.da9063*, %struct.da9063** %4, align 8
  %16 = getelementptr inbounds %struct.da9063, %struct.da9063* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i32, i8*, ...) @dev_err(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.da9063*, %struct.da9063** %4, align 8
  %21 = getelementptr inbounds %struct.da9063, %struct.da9063* %20, i32 0, i32 7
  store i64 0, i64* %21, align 8
  %22 = load %struct.da9063*, %struct.da9063** %4, align 8
  %23 = getelementptr inbounds %struct.da9063, %struct.da9063* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.da9063*, %struct.da9063** %4, align 8
  %26 = getelementptr inbounds %struct.da9063, %struct.da9063* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.da9063*, %struct.da9063** %4, align 8
  %28 = getelementptr inbounds %struct.da9063, %struct.da9063* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @DA9063_REG_CHIP_ID, align 4
  %31 = call i32 @regmap_read(i32 %29, i32 %30, i32* %6)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %19
  %35 = load %struct.da9063*, %struct.da9063** %4, align 8
  %36 = getelementptr inbounds %struct.da9063, %struct.da9063* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i32, i8*, ...) @dev_err(i32 %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %162

41:                                               ; preds = %19
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @PMIC_CHIP_ID_DA9063, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load %struct.da9063*, %struct.da9063** %4, align 8
  %47 = getelementptr inbounds %struct.da9063, %struct.da9063* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 (i32, i8*, ...) @dev_err(i32 %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %162

53:                                               ; preds = %41
  %54 = load %struct.da9063*, %struct.da9063** %4, align 8
  %55 = getelementptr inbounds %struct.da9063, %struct.da9063* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @DA9063_REG_CHIP_VARIANT, align 4
  %58 = call i32 @regmap_read(i32 %56, i32 %57, i32* %7)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %53
  %62 = load %struct.da9063*, %struct.da9063** %4, align 8
  %63 = getelementptr inbounds %struct.da9063, %struct.da9063* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i32, i8*, ...) @dev_err(i32 %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %162

68:                                               ; preds = %53
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @DA9063_CHIP_VARIANT_SHIFT, align 4
  %71 = ashr i32 %69, %70
  store i32 %71, i32* %8, align 4
  %72 = load %struct.da9063*, %struct.da9063** %4, align 8
  %73 = getelementptr inbounds %struct.da9063, %struct.da9063* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @dev_info(i32 %74, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @PMIC_DA9063_BB, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %68
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @PMIC_DA9063_AD, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = load %struct.da9063*, %struct.da9063** %4, align 8
  %87 = getelementptr inbounds %struct.da9063, %struct.da9063* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 (i32, i8*, ...) @dev_err(i32 %88, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @ENODEV, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %162

93:                                               ; preds = %81, %68
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.da9063*, %struct.da9063** %4, align 8
  %96 = getelementptr inbounds %struct.da9063, %struct.da9063* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.da9063*, %struct.da9063** %4, align 8
  %98 = call i32 @da9063_irq_init(%struct.da9063* %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %93
  %102 = load %struct.da9063*, %struct.da9063** %4, align 8
  %103 = getelementptr inbounds %struct.da9063, %struct.da9063* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i32, i8*, ...) @dev_err(i32 %104, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %3, align 4
  br label %162

107:                                              ; preds = %93
  %108 = load %struct.da9063*, %struct.da9063** %4, align 8
  %109 = getelementptr inbounds %struct.da9063, %struct.da9063* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @regmap_irq_chip_get_base(i32 %110)
  %112 = load %struct.da9063*, %struct.da9063** %4, align 8
  %113 = getelementptr inbounds %struct.da9063, %struct.da9063* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.da9063*, %struct.da9063** %4, align 8
  %115 = getelementptr inbounds %struct.da9063, %struct.da9063* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @PLATFORM_DEVID_NONE, align 4
  %118 = load i32, i32* @da9063_common_devs, align 4
  %119 = load i32, i32* @da9063_common_devs, align 4
  %120 = call i32 @ARRAY_SIZE(i32 %119)
  %121 = load %struct.da9063*, %struct.da9063** %4, align 8
  %122 = getelementptr inbounds %struct.da9063, %struct.da9063* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @devm_mfd_add_devices(i32 %116, i32 %117, i32 %118, i32 %120, i32* null, i32 %123, i32* null)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %107
  %128 = load %struct.da9063*, %struct.da9063** %4, align 8
  %129 = getelementptr inbounds %struct.da9063, %struct.da9063* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = call i32 (i32, i8*, ...) @dev_err(i32 %130, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %132 = load i32, i32* %9, align 4
  store i32 %132, i32* %3, align 4
  br label %162

133:                                              ; preds = %107
  %134 = load %struct.da9063*, %struct.da9063** %4, align 8
  %135 = getelementptr inbounds %struct.da9063, %struct.da9063* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @PMIC_TYPE_DA9063, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %160

139:                                              ; preds = %133
  %140 = load %struct.da9063*, %struct.da9063** %4, align 8
  %141 = getelementptr inbounds %struct.da9063, %struct.da9063* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @PLATFORM_DEVID_NONE, align 4
  %144 = load i32, i32* @da9063_devs, align 4
  %145 = load i32, i32* @da9063_devs, align 4
  %146 = call i32 @ARRAY_SIZE(i32 %145)
  %147 = load %struct.da9063*, %struct.da9063** %4, align 8
  %148 = getelementptr inbounds %struct.da9063, %struct.da9063* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @devm_mfd_add_devices(i32 %142, i32 %143, i32 %144, i32 %146, i32* null, i32 %149, i32* null)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %139
  %154 = load %struct.da9063*, %struct.da9063** %4, align 8
  %155 = getelementptr inbounds %struct.da9063, %struct.da9063* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = call i32 (i32, i8*, ...) @dev_err(i32 %156, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %158 = load i32, i32* %9, align 4
  store i32 %158, i32* %3, align 4
  br label %162

159:                                              ; preds = %139
  br label %160

160:                                              ; preds = %159, %133
  %161 = load i32, i32* %9, align 4
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %160, %153, %127, %101, %85, %61, %45, %34
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32 @da9063_clear_fault_log(%struct.da9063*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @da9063_irq_init(%struct.da9063*) #1

declare dso_local i32 @regmap_irq_chip_get_base(i32) #1

declare dso_local i32 @devm_mfd_add_devices(i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
