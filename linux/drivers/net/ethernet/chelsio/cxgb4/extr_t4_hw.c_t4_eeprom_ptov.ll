; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_eeprom_ptov.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_eeprom_ptov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EEPROMSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_eeprom_ptov(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = mul i32 %9, %8
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ult i32 %11, 1024
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = add i32 %14, 31744
  store i32 %15, i32* %4, align 4
  br label %39

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add i32 1024, %18
  %20 = icmp ult i32 %17, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = sub i32 31744, %22
  %24 = load i32, i32* %5, align 4
  %25 = add i32 %23, %24
  %26 = sub i32 %25, 1024
  store i32 %26, i32* %4, align 4
  br label %39

27:                                               ; preds = %16
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @EEPROMSIZE, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = sub i32 %32, 1024
  %34 = load i32, i32* %6, align 4
  %35 = sub i32 %33, %34
  store i32 %35, i32* %4, align 4
  br label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %36, %31, %21, %13
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
