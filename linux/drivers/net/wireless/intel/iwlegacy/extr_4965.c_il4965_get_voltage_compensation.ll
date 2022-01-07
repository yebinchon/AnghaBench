; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965.c_il4965_get_voltage_compensation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965.c_il4965_get_voltage_compensation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TX_POWER_IL_ILLEGAL_VOLTAGE = common dso_local global i64 0, align 8
@TX_POWER_IL_VOLTAGE_CODES_PER_03V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @il4965_get_voltage_compensation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @il4965_get_voltage_compensation(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %7 = load i64, i64* @TX_POWER_IL_ILLEGAL_VOLTAGE, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* @TX_POWER_IL_ILLEGAL_VOLTAGE, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %2
  store i64 0, i64* %3, align 8
  br label %36

15:                                               ; preds = %10
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %4, align 8
  %18 = sub nsw i64 %16, %17
  %19 = load i32, i32* @TX_POWER_IL_VOLTAGE_CODES_PER_03V, align 4
  %20 = call i32 @il4965_math_div_round(i64 %18, i32 %19, i64* %6)
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load i64, i64* %6, align 8
  %26 = mul nsw i64 %25, 2
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %24, %15
  %28 = load i64, i64* %6, align 8
  %29 = icmp slt i64 %28, -2
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %6, align 8
  %32 = icmp sgt i64 %31, 2
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %27
  store i64 0, i64* %6, align 8
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i64, i64* %6, align 8
  store i64 %35, i64* %3, align 8
  br label %36

36:                                               ; preds = %34, %14
  %37 = load i64, i64* %3, align 8
  ret i64 %37
}

declare dso_local i32 @il4965_math_div_round(i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
