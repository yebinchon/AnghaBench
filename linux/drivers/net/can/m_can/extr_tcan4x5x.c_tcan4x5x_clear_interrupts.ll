; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_tcan4x5x.c_tcan4x5x_clear_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_tcan4x5x.c_tcan4x5x_clear_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_can_classdev = type { i32 }

@TCAN4X5X_STATUS = common dso_local global i32 0, align 4
@TCAN4X5X_CLEAR_ALL_INT = common dso_local global i32 0, align 4
@TCAN4X5X_MCAN_INT_REG = common dso_local global i32 0, align 4
@TCAN4X5X_ENABLE_MCAN_INT = common dso_local global i32 0, align 4
@TCAN4X5X_INT_FLAGS = common dso_local global i32 0, align 4
@TCAN4X5X_ERROR_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m_can_classdev*)* @tcan4x5x_clear_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcan4x5x_clear_interrupts(%struct.m_can_classdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.m_can_classdev*, align 8
  %4 = alloca i32, align 4
  store %struct.m_can_classdev* %0, %struct.m_can_classdev** %3, align 8
  %5 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %6 = load i32, i32* @TCAN4X5X_STATUS, align 4
  %7 = load i32, i32* @TCAN4X5X_CLEAR_ALL_INT, align 4
  %8 = call i32 @tcan4x5x_write_tcan_reg(%struct.m_can_classdev* %5, i32 %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %42

13:                                               ; preds = %1
  %14 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %15 = load i32, i32* @TCAN4X5X_MCAN_INT_REG, align 4
  %16 = load i32, i32* @TCAN4X5X_ENABLE_MCAN_INT, align 4
  %17 = call i32 @tcan4x5x_write_tcan_reg(%struct.m_can_classdev* %14, i32 %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %42

22:                                               ; preds = %13
  %23 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %24 = load i32, i32* @TCAN4X5X_INT_FLAGS, align 4
  %25 = load i32, i32* @TCAN4X5X_CLEAR_ALL_INT, align 4
  %26 = call i32 @tcan4x5x_write_tcan_reg(%struct.m_can_classdev* %23, i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %42

31:                                               ; preds = %22
  %32 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %33 = load i32, i32* @TCAN4X5X_ERROR_STATUS, align 4
  %34 = load i32, i32* @TCAN4X5X_CLEAR_ALL_INT, align 4
  %35 = call i32 @tcan4x5x_write_tcan_reg(%struct.m_can_classdev* %32, i32 %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %38, %29, %20, %11
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @tcan4x5x_write_tcan_reg(%struct.m_can_classdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
