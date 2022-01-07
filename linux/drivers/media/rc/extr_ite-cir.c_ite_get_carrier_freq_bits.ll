; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ite-cir.c_ite_get_carrier_freq_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ite-cir.c_ite_get_carrier_freq_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ITE_CFQ_400 = common dso_local global i32 0, align 4
@ITE_CFQ_450 = common dso_local global i32 0, align 4
@ITE_CFQ_480 = common dso_local global i32 0, align 4
@ITE_CFQ_500 = common dso_local global i32 0, align 4
@ITE_LCF_MIN_CARRIER_FREQ = common dso_local global i32 0, align 4
@ITE_LCF_MAX_CARRIER_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ite_get_carrier_freq_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ite_get_carrier_freq_bits(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @ite_is_high_carrier_freq(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp ult i32 %8, 425000
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = load i32, i32* @ITE_CFQ_400, align 4
  store i32 %11, i32* %2, align 4
  br label %42

12:                                               ; preds = %7
  %13 = load i32, i32* %3, align 4
  %14 = icmp ult i32 %13, 465000
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* @ITE_CFQ_450, align 4
  store i32 %16, i32* %2, align 4
  br label %42

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = icmp ult i32 %18, 490000
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @ITE_CFQ_480, align 4
  store i32 %21, i32* %2, align 4
  br label %42

22:                                               ; preds = %17
  %23 = load i32, i32* @ITE_CFQ_500, align 4
  store i32 %23, i32* %2, align 4
  br label %42

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @ITE_LCF_MIN_CARRIER_FREQ, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @ITE_LCF_MIN_CARRIER_FREQ, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @ITE_LCF_MAX_CARRIER_FREQ, align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @ITE_LCF_MAX_CARRIER_FREQ, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @ITE_LCF_MIN_CARRIER_FREQ, align 4
  %39 = sub i32 %37, %38
  %40 = call i32 @DIV_ROUND_CLOSEST(i32 %39, i32 1000)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %36, %22, %20, %15, %10
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @ite_is_high_carrier_freq(i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
