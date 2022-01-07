; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max14577.c_maxim_charger_calc_reg_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max14577.c_maxim_charger_calc_reg_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.maxim_charger_current = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CHGCTRL4_MBCICHWRCL_SHIFT = common dso_local global i32 0, align 4
@CHGCTRL4_MBCICHWRCH_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @maxim_charger_calc_reg_current(%struct.maxim_charger_current* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.maxim_charger_current*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.maxim_charger_current* %0, %struct.maxim_charger_current** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 15, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ugt i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %65

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.maxim_charger_current*, %struct.maxim_charger_current** %6, align 8
  %20 = getelementptr inbounds %struct.maxim_charger_current, %struct.maxim_charger_current* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ugt i32 %18, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.maxim_charger_current*, %struct.maxim_charger_current** %6, align 8
  %26 = getelementptr inbounds %struct.maxim_charger_current, %struct.maxim_charger_current* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23, %17
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %65

32:                                               ; preds = %23
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.maxim_charger_current*, %struct.maxim_charger_current** %6, align 8
  %35 = getelementptr inbounds %struct.maxim_charger_current, %struct.maxim_charger_current* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32*, i32** %9, align 8
  store i32 0, i32* %39, align 4
  store i32 0, i32* %5, align 4
  br label %65

40:                                               ; preds = %32
  %41 = load %struct.maxim_charger_current*, %struct.maxim_charger_current** %6, align 8
  %42 = getelementptr inbounds %struct.maxim_charger_current, %struct.maxim_charger_current* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @min(i32 %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.maxim_charger_current*, %struct.maxim_charger_current** %6, align 8
  %47 = getelementptr inbounds %struct.maxim_charger_current, %struct.maxim_charger_current* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = sub i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.maxim_charger_current*, %struct.maxim_charger_current** %6, align 8
  %53 = getelementptr inbounds %struct.maxim_charger_current, %struct.maxim_charger_current* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = udiv i32 %51, %54
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* @CHGCTRL4_MBCICHWRCL_SHIFT, align 4
  %57 = shl i32 1, %56
  %58 = load i32*, i32** %9, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @CHGCTRL4_MBCICHWRCH_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %61
  store i32 %64, i32* %62, align 4
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %40, %38, %29, %14
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
