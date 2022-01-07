; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ar9003_get_pll_sqsum_dvc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ar9003_get_pll_sqsum_dvc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }

@PLL3 = common dso_local global i32 0, align 4
@PLL3_DO_MEAS_MASK = common dso_local global i32 0, align 4
@PLL4 = common dso_local global i32 0, align 4
@PLL4_MEAS_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"PLL4 measurement not done\0A\00", align 1
@SQSUM_DVC_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9003_get_pll_sqsum_dvc(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %5 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %6 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %5)
  store %struct.ath_common* %6, %struct.ath_common** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = load i32, i32* @PLL3, align 4
  %9 = load i32, i32* @PLL3_DO_MEAS_MASK, align 4
  %10 = call i32 @REG_CLR_BIT(%struct.ath_hw* %7, i32 %8, i32 %9)
  %11 = call i32 @udelay(i32 100)
  %12 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %13 = load i32, i32* @PLL3, align 4
  %14 = load i32, i32* @PLL3_DO_MEAS_MASK, align 4
  %15 = call i32 @REG_SET_BIT(%struct.ath_hw* %12, i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %33, %1
  %17 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %18 = load i32, i32* @PLL4, align 4
  %19 = call i32 @REG_READ(%struct.ath_hw* %17, i32 %18)
  %20 = load i32, i32* @PLL4_MEAS_DONE, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %16
  %24 = call i32 @udelay(i32 100)
  %25 = load i32, i32* %4, align 4
  %26 = icmp sge i32 %25, 100
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON_ONCE(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %32 = call i32 @ath_err(%struct.ath_common* %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %36

33:                                               ; preds = %23
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %16

36:                                               ; preds = %30, %16
  %37 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %38 = load i32, i32* @PLL3, align 4
  %39 = call i32 @REG_READ(%struct.ath_hw* %37, i32 %38)
  %40 = load i32, i32* @SQSUM_DVC_MASK, align 4
  %41 = and i32 %39, %40
  %42 = ashr i32 %41, 3
  ret i32 %42
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
