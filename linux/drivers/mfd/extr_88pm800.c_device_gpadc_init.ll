; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm800.c_device_gpadc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm800.c_device_gpadc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm80x_chip = type { i32, %struct.pm80x_subchip* }
%struct.pm80x_subchip = type { %struct.regmap* }
%struct.regmap = type { i32 }
%struct.pm80x_platform_data = type { i64 }

@.str = private unnamed_addr constant [41 x i8] c"Warning: gpadc regmap is not available!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PM800_GPADC_MISC_CONFIG2 = common dso_local global i32 0, align 4
@PM800_GPADC_MISC_GPFSM_EN = common dso_local global i32 0, align 4
@PM800_GPADC_MEAS_EN1 = common dso_local global i32 0, align 4
@PM800_MEAS_EN1_VBAT = common dso_local global i32 0, align 4
@PM800_GPADC_MEAS_EN2 = common dso_local global i32 0, align 4
@PM800_MEAS_EN2_RFTMP = common dso_local global i32 0, align 4
@PM800_MEAS_GP0_EN = common dso_local global i32 0, align 4
@PM800_GPADC_GP_BIAS_EN0 = common dso_local global i32 0, align 4
@PM800_GPADC_GP_BIAS_EN1 = common dso_local global i32 0, align 4
@PM800_GPADC_GP_BIAS_EN2 = common dso_local global i32 0, align 4
@PM800_GPADC_GP_BIAS_EN3 = common dso_local global i32 0, align 4
@PM800_GP_BIAS_ENA1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"pm800 device_gpadc_init: Done\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"pm800 device_gpadc_init: Failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm80x_chip*, %struct.pm80x_platform_data*)* @device_gpadc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_gpadc_init(%struct.pm80x_chip* %0, %struct.pm80x_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pm80x_chip*, align 8
  %5 = alloca %struct.pm80x_platform_data*, align 8
  %6 = alloca %struct.pm80x_subchip*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pm80x_chip* %0, %struct.pm80x_chip** %4, align 8
  store %struct.pm80x_platform_data* %1, %struct.pm80x_platform_data** %5, align 8
  %11 = load %struct.pm80x_chip*, %struct.pm80x_chip** %4, align 8
  %12 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %11, i32 0, i32 1
  %13 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %12, align 8
  store %struct.pm80x_subchip* %13, %struct.pm80x_subchip** %6, align 8
  %14 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %6, align 8
  %15 = getelementptr inbounds %struct.pm80x_subchip, %struct.pm80x_subchip* %14, i32 0, i32 0
  %16 = load %struct.regmap*, %struct.regmap** %15, align 8
  store %struct.regmap* %16, %struct.regmap** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.regmap*, %struct.regmap** %7, align 8
  %18 = icmp ne %struct.regmap* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load %struct.pm80x_chip*, %struct.pm80x_chip** %4, align 8
  %21 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dev_warn(i32 %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %106

26:                                               ; preds = %2
  %27 = load %struct.regmap*, %struct.regmap** %7, align 8
  %28 = load i32, i32* @PM800_GPADC_MISC_CONFIG2, align 4
  %29 = load i32, i32* @PM800_GPADC_MISC_GPFSM_EN, align 4
  %30 = load i32, i32* @PM800_GPADC_MISC_GPFSM_EN, align 4
  %31 = call i32 @regmap_update_bits(%struct.regmap* %27, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %100

35:                                               ; preds = %26
  %36 = load %struct.regmap*, %struct.regmap** %7, align 8
  %37 = load i32, i32* @PM800_GPADC_MEAS_EN1, align 4
  %38 = load i32, i32* @PM800_MEAS_EN1_VBAT, align 4
  %39 = load i32, i32* @PM800_MEAS_EN1_VBAT, align 4
  %40 = call i32 @regmap_update_bits(%struct.regmap* %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %100

44:                                               ; preds = %35
  %45 = load %struct.regmap*, %struct.regmap** %7, align 8
  %46 = load i32, i32* @PM800_GPADC_MEAS_EN2, align 4
  %47 = load i32, i32* @PM800_MEAS_EN2_RFTMP, align 4
  %48 = load i32, i32* @PM800_MEAS_GP0_EN, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @PM800_MEAS_EN2_RFTMP, align 4
  %51 = load i32, i32* @PM800_MEAS_GP0_EN, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @regmap_update_bits(%struct.regmap* %45, i32 %46, i32 %49, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  br label %100

57:                                               ; preds = %44
  %58 = load i32, i32* @PM800_GPADC_GP_BIAS_EN0, align 4
  %59 = load i32, i32* @PM800_GPADC_GP_BIAS_EN1, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @PM800_GPADC_GP_BIAS_EN2, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @PM800_GPADC_GP_BIAS_EN3, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* %9, align 4
  %65 = load %struct.pm80x_platform_data*, %struct.pm80x_platform_data** %5, align 8
  %66 = icmp ne %struct.pm80x_platform_data* %65, null
  br i1 %66, label %67, label %80

67:                                               ; preds = %57
  %68 = load %struct.pm80x_platform_data*, %struct.pm80x_platform_data** %5, align 8
  %69 = getelementptr inbounds %struct.pm80x_platform_data, %struct.pm80x_platform_data* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load i32, i32* @PM800_GPADC_GP_BIAS_EN0, align 4
  %74 = load i32, i32* @PM800_GPADC_GP_BIAS_EN1, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @PM800_GPADC_GP_BIAS_EN2, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @PM800_GPADC_GP_BIAS_EN3, align 4
  %79 = or i32 %77, %78
  store i32 %79, i32* %8, align 4
  br label %86

80:                                               ; preds = %67, %57
  %81 = load i32, i32* @PM800_GPADC_GP_BIAS_EN0, align 4
  %82 = load i32, i32* @PM800_GPADC_GP_BIAS_EN2, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @PM800_GPADC_GP_BIAS_EN3, align 4
  %85 = or i32 %83, %84
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %80, %72
  %87 = load %struct.regmap*, %struct.regmap** %7, align 8
  %88 = load i32, i32* @PM800_GP_BIAS_ENA1, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @regmap_update_bits(%struct.regmap* %87, i32 %88, i32 %89, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %100

95:                                               ; preds = %86
  %96 = load %struct.pm80x_chip*, %struct.pm80x_chip** %4, align 8
  %97 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @dev_info(i32 %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %106

100:                                              ; preds = %94, %56, %43, %34
  %101 = load %struct.pm80x_chip*, %struct.pm80x_chip** %4, align 8
  %102 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @dev_info(i32 %103, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %100, %95, %19
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
