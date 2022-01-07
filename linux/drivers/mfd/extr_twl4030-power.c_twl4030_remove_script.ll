; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-power.c_twl4030_remove_script.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-power.c_twl4030_remove_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TWL_MODULE_PM_MASTER = common dso_local global i32 0, align 4
@TWL4030_PM_MASTER_KEY_CFG1 = common dso_local global i32 0, align 4
@TWL4030_PM_MASTER_PROTECT_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"twl4030: unable to unlock PROTECT_KEY\0A\00", align 1
@TWL4030_PM_MASTER_KEY_CFG2 = common dso_local global i32 0, align 4
@TWL4030_WRST_SCRIPT = common dso_local global i32 0, align 4
@END_OF_SCRIPT = common dso_local global i32 0, align 4
@R_SEQ_ADD_WARM = common dso_local global i32 0, align 4
@TWL4030_WAKEUP12_SCRIPT = common dso_local global i32 0, align 4
@R_SEQ_ADD_S2A12 = common dso_local global i32 0, align 4
@TWL4030_WAKEUP3_SCRIPT = common dso_local global i32 0, align 4
@R_SEQ_ADD_S2A3 = common dso_local global i32 0, align 4
@TWL4030_SLEEP_SCRIPT = common dso_local global i32 0, align 4
@R_SEQ_ADD_A2S = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"TWL4030 Unable to relock registers\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @twl4030_remove_script(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %6 = load i32, i32* @TWL4030_PM_MASTER_KEY_CFG1, align 4
  %7 = load i32, i32* @TWL4030_PM_MASTER_PROTECT_KEY, align 4
  %8 = call i32 @twl_i2c_write_u8(i32 %5, i32 %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %94

14:                                               ; preds = %1
  %15 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %16 = load i32, i32* @TWL4030_PM_MASTER_KEY_CFG2, align 4
  %17 = load i32, i32* @TWL4030_PM_MASTER_PROTECT_KEY, align 4
  %18 = call i32 @twl_i2c_write_u8(i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %94

24:                                               ; preds = %14
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @TWL4030_WRST_SCRIPT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %31 = load i32, i32* @END_OF_SCRIPT, align 4
  %32 = load i32, i32* @R_SEQ_ADD_WARM, align 4
  %33 = call i32 @twl_i2c_write_u8(i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %94

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %24
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @TWL4030_WAKEUP12_SCRIPT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %46 = load i32, i32* @END_OF_SCRIPT, align 4
  %47 = load i32, i32* @R_SEQ_ADD_S2A12, align 4
  %48 = call i32 @twl_i2c_write_u8(i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %94

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %39
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @TWL4030_WAKEUP3_SCRIPT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %61 = load i32, i32* @END_OF_SCRIPT, align 4
  %62 = load i32, i32* @R_SEQ_ADD_S2A3, align 4
  %63 = call i32 @twl_i2c_write_u8(i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %94

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %54
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @TWL4030_SLEEP_SCRIPT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %76 = load i32, i32* @END_OF_SCRIPT, align 4
  %77 = load i32, i32* @R_SEQ_ADD_A2S, align 4
  %78 = call i32 @twl_i2c_write_u8(i32 %75, i32 %76, i32 %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %94

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83, %69
  %85 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %86 = load i32, i32* @TWL4030_PM_MASTER_PROTECT_KEY, align 4
  %87 = call i32 @twl_i2c_write_u8(i32 %85, i32 0, i32 %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %84
  %93 = load i32, i32* %4, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %81, %66, %51, %36, %21, %11
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @twl_i2c_write_u8(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
