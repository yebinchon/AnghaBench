; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_tcan4x5x.c_tcan4x5x_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_tcan4x5x.c_tcan4x5x_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_can_classdev = type { %struct.tcan4x5x_priv* }
%struct.tcan4x5x_priv = type { i32 }

@TCAN4X5X_INT_EN = common dso_local global i32 0, align 4
@TCAN4X5X_ENABLE_TCAN_INT = common dso_local global i32 0, align 4
@TCAN4X5X_CONFIG = common dso_local global i32 0, align 4
@TCAN4X5X_MODE_SEL_MASK = common dso_local global i32 0, align 4
@TCAN4X5X_MODE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m_can_classdev*)* @tcan4x5x_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcan4x5x_init(%struct.m_can_classdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.m_can_classdev*, align 8
  %4 = alloca %struct.tcan4x5x_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.m_can_classdev* %0, %struct.m_can_classdev** %3, align 8
  %6 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %7 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %6, i32 0, i32 0
  %8 = load %struct.tcan4x5x_priv*, %struct.tcan4x5x_priv** %7, align 8
  store %struct.tcan4x5x_priv* %8, %struct.tcan4x5x_priv** %4, align 8
  %9 = load %struct.tcan4x5x_priv*, %struct.tcan4x5x_priv** %4, align 8
  %10 = call i32 @tcan4x5x_check_wake(%struct.tcan4x5x_priv* %9)
  %11 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %12 = call i32 @tcan4x5x_clear_interrupts(%struct.m_can_classdev* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %42

17:                                               ; preds = %1
  %18 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %19 = load i32, i32* @TCAN4X5X_INT_EN, align 4
  %20 = load i32, i32* @TCAN4X5X_ENABLE_TCAN_INT, align 4
  %21 = call i32 @tcan4x5x_write_tcan_reg(%struct.m_can_classdev* %18, i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %42

26:                                               ; preds = %17
  %27 = load %struct.tcan4x5x_priv*, %struct.tcan4x5x_priv** %4, align 8
  %28 = getelementptr inbounds %struct.tcan4x5x_priv, %struct.tcan4x5x_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @TCAN4X5X_CONFIG, align 4
  %31 = load i32, i32* @TCAN4X5X_MODE_SEL_MASK, align 4
  %32 = load i32, i32* @TCAN4X5X_MODE_NORMAL, align 4
  %33 = call i32 @regmap_update_bits(i32 %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %42

38:                                               ; preds = %26
  %39 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %40 = call i32 @m_can_init_ram(%struct.m_can_classdev* %39)
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %36, %24, %15
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @tcan4x5x_check_wake(%struct.tcan4x5x_priv*) #1

declare dso_local i32 @tcan4x5x_clear_interrupts(%struct.m_can_classdev*) #1

declare dso_local i32 @tcan4x5x_write_tcan_reg(%struct.m_can_classdev*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @m_can_init_ram(%struct.m_can_classdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
