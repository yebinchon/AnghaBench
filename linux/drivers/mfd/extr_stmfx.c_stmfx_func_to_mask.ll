; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_stmfx.c_stmfx_func_to_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_stmfx.c_stmfx_func_to_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STMFX_FUNC_GPIO = common dso_local global i32 0, align 4
@STMFX_REG_SYS_CTRL_GPIO_EN = common dso_local global i32 0, align 4
@STMFX_FUNC_ALTGPIO_LOW = common dso_local global i32 0, align 4
@STMFX_FUNC_ALTGPIO_HIGH = common dso_local global i32 0, align 4
@STMFX_REG_SYS_CTRL_ALTGPIO_EN = common dso_local global i32 0, align 4
@STMFX_FUNC_TS = common dso_local global i32 0, align 4
@STMFX_REG_SYS_CTRL_TS_EN = common dso_local global i32 0, align 4
@STMFX_FUNC_IDD = common dso_local global i32 0, align 4
@STMFX_REG_SYS_CTRL_IDD_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @stmfx_func_to_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmfx_func_to_mask(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @STMFX_FUNC_GPIO, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @STMFX_REG_SYS_CTRL_GPIO_EN, align 4
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @STMFX_FUNC_ALTGPIO_LOW, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @STMFX_FUNC_ALTGPIO_HIGH, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17, %12
  %23 = load i32, i32* @STMFX_REG_SYS_CTRL_ALTGPIO_EN, align 4
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @STMFX_FUNC_TS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @STMFX_REG_SYS_CTRL_TS_EN, align 4
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %26
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @STMFX_FUNC_IDD, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @STMFX_REG_SYS_CTRL_IDD_EN, align 4
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %35
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
