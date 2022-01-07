; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-power.c_twl4030_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-power.c_twl4030_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STARTON_VBUS = common dso_local global i32 0, align 4
@STARTON_CHG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"TWL4030 Unable to configure start-up\0A\00", align 1
@TWL_MODULE_PM_MASTER = common dso_local global i32 0, align 4
@PWR_DEVOFF = common dso_local global i32 0, align 4
@TWL4030_PM_MASTER_P1_SW_EVENTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"TWL4030 Unable to power off\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @twl4030_power_off() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @STARTON_VBUS, align 4
  %3 = load i32, i32* @STARTON_CHG, align 4
  %4 = or i32 %2, %3
  %5 = call i32 @twl4030_starton_mask_and_set(i32 %4, i32 0)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %0
  %11 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %12 = load i32, i32* @PWR_DEVOFF, align 4
  %13 = load i32, i32* @TWL4030_PM_MASTER_P1_SW_EVENTS, align 4
  %14 = call i32 @twl_i2c_write_u8(i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %10
  ret void
}

declare dso_local i32 @twl4030_starton_mask_and_set(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @twl_i2c_write_u8(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
