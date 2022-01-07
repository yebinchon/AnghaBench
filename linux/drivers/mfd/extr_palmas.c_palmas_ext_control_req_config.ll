; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_palmas.c_palmas_ext_control_req_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_palmas.c_palmas_ext_control_req_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.palmas = type { i32, %struct.palmas_pmic_driver_data* }
%struct.palmas_pmic_driver_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@PALMAS_EXT_REQ = common dso_local global i32 0, align 4
@PALMAS_EXTERNAL_REQSTR_ID_MAX = common dso_local global i32 0, align 4
@PALMAS_EXT_CONTROL_NSLEEP = common dso_local global i32 0, align 4
@PALMAS_NSLEEP_RES_ASSIGN = common dso_local global i32 0, align 4
@PALMAS_EXT_CONTROL_ENABLE1 = common dso_local global i32 0, align 4
@PALMAS_ENABLE1_RES_ASSIGN = common dso_local global i32 0, align 4
@PALMAS_EXT_CONTROL_ENABLE2 = common dso_local global i32 0, align 4
@PALMAS_ENABLE2_RES_ASSIGN = common dso_local global i32 0, align 4
@PALMAS_RESOURCE_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Resource reg 0x%02x update failed %d\0A\00", align 1
@PALMAS_PMU_CONTROL_BASE = common dso_local global i32 0, align 4
@PALMAS_POWER_CTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"POWER_CTRL register update failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @palmas_ext_control_req_config(%struct.palmas* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.palmas*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.palmas_pmic_driver_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.palmas* %0, %struct.palmas** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.palmas*, %struct.palmas** %6, align 8
  %16 = getelementptr inbounds %struct.palmas, %struct.palmas* %15, i32 0, i32 1
  %17 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %16, align 8
  store %struct.palmas_pmic_driver_data* %17, %struct.palmas_pmic_driver_data** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @PALMAS_EXT_REQ, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %119

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @PALMAS_EXTERNAL_REQSTR_ID_MAX, align 4
  %26 = icmp uge i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %119

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @PALMAS_EXT_CONTROL_NSLEEP, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @PALMAS_NSLEEP_RES_ASSIGN, align 4
  store i32 %34, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %51

35:                                               ; preds = %28
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @PALMAS_EXT_CONTROL_ENABLE1, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @PALMAS_ENABLE1_RES_ASSIGN, align 4
  store i32 %41, i32* %12, align 4
  store i32 1, i32* %11, align 4
  br label %50

42:                                               ; preds = %35
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @PALMAS_EXT_CONTROL_ENABLE2, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @PALMAS_ENABLE2_RES_ASSIGN, align 4
  store i32 %48, i32* %12, align 4
  store i32 2, i32* %11, align 4
  br label %49

49:                                               ; preds = %47, %42
  br label %50

50:                                               ; preds = %49, %40
  br label %51

51:                                               ; preds = %50, %33
  %52 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %10, align 8
  %53 = getelementptr inbounds %struct.palmas_pmic_driver_data, %struct.palmas_pmic_driver_data* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %13, align 4
  %60 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %10, align 8
  %61 = getelementptr inbounds %struct.palmas_pmic_driver_data, %struct.palmas_pmic_driver_data* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %51
  %75 = load %struct.palmas*, %struct.palmas** %6, align 8
  %76 = load i32, i32* @PALMAS_RESOURCE_BASE, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @BIT(i32 %78)
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @BIT(i32 %80)
  %82 = call i32 @palmas_update_bits(%struct.palmas* %75, i32 %76, i32 %77, i32 %79, i32 %81)
  store i32 %82, i32* %14, align 4
  br label %90

83:                                               ; preds = %51
  %84 = load %struct.palmas*, %struct.palmas** %6, align 8
  %85 = load i32, i32* @PALMAS_RESOURCE_BASE, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @BIT(i32 %87)
  %89 = call i32 @palmas_update_bits(%struct.palmas* %84, i32 %85, i32 %86, i32 %88, i32 0)
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %83, %74
  %91 = load i32, i32* %14, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load %struct.palmas*, %struct.palmas** %6, align 8
  %95 = getelementptr inbounds %struct.palmas, %struct.palmas* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %14, align 4
  %99 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %96, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %98)
  %100 = load i32, i32* %14, align 4
  store i32 %100, i32* %5, align 4
  br label %119

101:                                              ; preds = %90
  %102 = load %struct.palmas*, %struct.palmas** %6, align 8
  %103 = load i32, i32* @PALMAS_PMU_CONTROL_BASE, align 4
  %104 = load i32, i32* @PALMAS_POWER_CTRL, align 4
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @BIT(i32 %105)
  %107 = call i32 @palmas_update_bits(%struct.palmas* %102, i32 %103, i32 %104, i32 %106, i32 0)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %101
  %111 = load %struct.palmas*, %struct.palmas** %6, align 8
  %112 = getelementptr inbounds %struct.palmas, %struct.palmas* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %14, align 4
  %115 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %113, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %14, align 4
  store i32 %116, i32* %5, align 4
  br label %119

117:                                              ; preds = %101
  %118 = load i32, i32* %14, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %117, %110, %93, %27, %22
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @palmas_update_bits(%struct.palmas*, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
