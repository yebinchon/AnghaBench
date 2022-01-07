; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-power.c_twl4030_config_warmreset_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-power.c_twl4030_config_warmreset_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TWL_MODULE_PM_MASTER = common dso_local global i32 0, align 4
@R_SEQ_ADD_WARM = common dso_local global i32 0, align 4
@R_P1_SW_EVENTS = common dso_local global i32 0, align 4
@PWR_ENABLE_WARMRESET = common dso_local global i32 0, align 4
@R_P2_SW_EVENTS = common dso_local global i32 0, align 4
@R_P3_SW_EVENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"TWL4030 warmreset seq config error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @twl4030_config_warmreset_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_config_warmreset_sequence(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @R_SEQ_ADD_WARM, align 4
  %8 = call i32 @twl_i2c_write_u8(i32 %5, i32 %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %63

12:                                               ; preds = %1
  %13 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %14 = load i32, i32* @R_P1_SW_EVENTS, align 4
  %15 = call i32 @twl_i2c_read_u8(i32 %13, i32* %4, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %63

19:                                               ; preds = %12
  %20 = load i32, i32* @PWR_ENABLE_WARMRESET, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @R_P1_SW_EVENTS, align 4
  %26 = call i32 @twl_i2c_write_u8(i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %63

30:                                               ; preds = %19
  %31 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %32 = load i32, i32* @R_P2_SW_EVENTS, align 4
  %33 = call i32 @twl_i2c_read_u8(i32 %31, i32* %4, i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %63

37:                                               ; preds = %30
  %38 = load i32, i32* @PWR_ENABLE_WARMRESET, align 4
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @R_P2_SW_EVENTS, align 4
  %44 = call i32 @twl_i2c_write_u8(i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %63

48:                                               ; preds = %37
  %49 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %50 = load i32, i32* @R_P3_SW_EVENTS, align 4
  %51 = call i32 @twl_i2c_read_u8(i32 %49, i32* %4, i32 %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %63

55:                                               ; preds = %48
  %56 = load i32, i32* @PWR_ENABLE_WARMRESET, align 4
  %57 = load i32, i32* %4, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @R_P3_SW_EVENTS, align 4
  %62 = call i32 @twl_i2c_write_u8(i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %55, %54, %47, %36, %29, %18, %11
  %64 = load i32, i32* %3, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %63
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @twl_i2c_write_u8(i32, i32, i32) #1

declare dso_local i32 @twl_i2c_read_u8(i32, i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
