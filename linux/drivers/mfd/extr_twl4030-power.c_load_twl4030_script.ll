; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-power.c_load_twl4030_script.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-power.c_load_twl4030_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_power_data = type { i32 }
%struct.twl4030_script = type { i64, i32, i32 }

@load_twl4030_script.order = internal global i32 0, align 4
@END_OF_SCRIPT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"TWL4030 scripts too big error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TWL4030_WRST_SCRIPT = common dso_local global i32 0, align 4
@TWL4030_WAKEUP12_SCRIPT = common dso_local global i32 0, align 4
@TWL_MODULE_PM_MASTER = common dso_local global i32 0, align 4
@R_SEQ_ADD_A2S = common dso_local global i32 0, align 4
@TWL4030_WAKEUP3_SCRIPT = common dso_local global i32 0, align 4
@TWL4030_SLEEP_SCRIPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [97 x i8] c"TWL4030: Bad order of scripts (sleep script before wakeup) Leads to boot failure on some boards\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl4030_power_data*, %struct.twl4030_script*, i64)* @load_twl4030_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_twl4030_script(%struct.twl4030_power_data* %0, %struct.twl4030_script* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.twl4030_power_data*, align 8
  %6 = alloca %struct.twl4030_script*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.twl4030_power_data* %0, %struct.twl4030_power_data** %5, align 8
  store %struct.twl4030_script* %1, %struct.twl4030_script** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load %struct.twl4030_script*, %struct.twl4030_script** %6, align 8
  %11 = getelementptr inbounds %struct.twl4030_script, %struct.twl4030_script* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %9, %12
  %14 = load i64, i64* @END_OF_SCRIPT, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %101

20:                                               ; preds = %3
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.twl4030_script*, %struct.twl4030_script** %6, align 8
  %23 = getelementptr inbounds %struct.twl4030_script, %struct.twl4030_script* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.twl4030_script*, %struct.twl4030_script** %6, align 8
  %26 = getelementptr inbounds %struct.twl4030_script, %struct.twl4030_script* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @twl4030_write_script(i64 %21, i32 %24, i64 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %99

32:                                               ; preds = %20
  %33 = load %struct.twl4030_script*, %struct.twl4030_script** %6, align 8
  %34 = getelementptr inbounds %struct.twl4030_script, %struct.twl4030_script* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @TWL4030_WRST_SCRIPT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @twl4030_config_warmreset_sequence(i64 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %99

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %32
  %47 = load %struct.twl4030_script*, %struct.twl4030_script** %6, align 8
  %48 = getelementptr inbounds %struct.twl4030_script, %struct.twl4030_script* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @TWL4030_WAKEUP12_SCRIPT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %46
  %54 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %55 = load i64, i64* @END_OF_SCRIPT, align 8
  %56 = load i32, i32* @R_SEQ_ADD_A2S, align 4
  %57 = call i32 @twl_i2c_write_u8(i32 %54, i64 %55, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %99

61:                                               ; preds = %53
  %62 = load %struct.twl4030_power_data*, %struct.twl4030_power_data** %5, align 8
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @twl4030_config_wakeup12_sequence(%struct.twl4030_power_data* %62, i64 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %99

68:                                               ; preds = %61
  store i32 1, i32* @load_twl4030_script.order, align 4
  br label %69

69:                                               ; preds = %68, %46
  %70 = load %struct.twl4030_script*, %struct.twl4030_script** %6, align 8
  %71 = getelementptr inbounds %struct.twl4030_script, %struct.twl4030_script* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @TWL4030_WAKEUP3_SCRIPT, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %69
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @twl4030_config_wakeup3_sequence(i64 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %99

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82, %69
  %84 = load %struct.twl4030_script*, %struct.twl4030_script** %6, align 8
  %85 = getelementptr inbounds %struct.twl4030_script, %struct.twl4030_script* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @TWL4030_SLEEP_SCRIPT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %83
  %91 = load i32, i32* @load_twl4030_script.order, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = call i32 @pr_warn(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.1, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %90
  %96 = load i64, i64* %7, align 8
  %97 = call i32 @twl4030_config_sleep_sequence(i64 %96)
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %95, %83
  br label %99

99:                                               ; preds = %98, %81, %67, %60, %44, %31
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %99, %16
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @twl4030_write_script(i64, i32, i64) #1

declare dso_local i32 @twl4030_config_warmreset_sequence(i64) #1

declare dso_local i32 @twl_i2c_write_u8(i32, i64, i32) #1

declare dso_local i32 @twl4030_config_wakeup12_sequence(%struct.twl4030_power_data*, i64) #1

declare dso_local i32 @twl4030_config_wakeup3_sequence(i64) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @twl4030_config_sleep_sequence(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
