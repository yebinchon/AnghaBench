; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-power.c_twl4030_starton_mask_and_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-power.c_twl4030_starton_mask_and_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TWL4030_PM_MASTER_CFG_P1_TRANSITION = common dso_local global i32 0, align 4
@TWL4030_PM_MASTER_CFG_P2_TRANSITION = common dso_local global i32 0, align 4
@TWL4030_PM_MASTER_CFG_P3_TRANSITION = common dso_local global i32 0, align 4
@TWL_MODULE_PM_MASTER = common dso_local global i32 0, align 4
@TWL4030_PM_MASTER_KEY_CFG1 = common dso_local global i32 0, align 4
@TWL4030_PM_MASTER_PROTECT_KEY = common dso_local global i32 0, align 4
@TWL4030_PM_MASTER_KEY_CFG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"TWL4030 Register access failed: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @twl4030_starton_mask_and_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_starton_mask_and_set(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [3 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %10 = load i32, i32* @TWL4030_PM_MASTER_CFG_P1_TRANSITION, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %9, i64 1
  %12 = load i32, i32* @TWL4030_PM_MASTER_CFG_P2_TRANSITION, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %11, i64 1
  %14 = load i32, i32* @TWL4030_PM_MASTER_CFG_P3_TRANSITION, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %16 = load i32, i32* @TWL4030_PM_MASTER_KEY_CFG1, align 4
  %17 = load i32, i32* @TWL4030_PM_MASTER_PROTECT_KEY, align 4
  %18 = call i32 @twl_i2c_write_u8(i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %75

22:                                               ; preds = %2
  %23 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %24 = load i32, i32* @TWL4030_PM_MASTER_KEY_CFG2, align 4
  %25 = load i32, i32* @TWL4030_PM_MASTER_PROTECT_KEY, align 4
  %26 = call i32 @twl_i2c_write_u8(i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %75

30:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %65, %30
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ult i64 %33, 12
  br i1 %34, label %35, label %68

35:                                               ; preds = %31
  %36 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @twl_i2c_read_u8(i32 %36, i32* %6, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %68

45:                                               ; preds = %35
  %46 = load i32, i32* %3, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %4, align 4
  %52 = and i32 %50, %51
  %53 = or i32 %49, %52
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @twl_i2c_write_u8(i32 %54, i32 %55, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %45
  br label %68

64:                                               ; preds = %45
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %31

68:                                               ; preds = %63, %44, %31
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %71, %68
  br label %75

75:                                               ; preds = %74, %29, %21
  %76 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %77 = load i32, i32* @TWL4030_PM_MASTER_PROTECT_KEY, align 4
  %78 = call i32 @twl_i2c_write_u8(i32 %76, i32 0, i32 %77)
  ret i32 %78
}

declare dso_local i32 @twl_i2c_write_u8(i32, i32, i32) #1

declare dso_local i32 @twl_i2c_read_u8(i32, i32*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
