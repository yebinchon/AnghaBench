; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_sbni.c_sbni_card_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_sbni.c_sbni_card_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CSR0 = common dso_local global i64 0, align 8
@EN_INT = common dso_local global i8 0, align 1
@BU_EMP = common dso_local global i8 0, align 1
@VALID_DECODER = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @sbni_card_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbni_card_probe(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @CSR0, align 8
  %7 = add i64 %5, %6
  %8 = call zeroext i8 @inb(i64 %7)
  store i8 %8, i8* %4, align 1
  %9 = load i8, i8* %4, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp ne i32 %10, 255
  br i1 %11, label %12, label %47

12:                                               ; preds = %1
  %13 = load i8, i8* %4, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %12
  %17 = load i8, i8* @EN_INT, align 1
  %18 = zext i8 %17 to i32
  %19 = xor i32 %18, -1
  %20 = load i8, i8* %4, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, %19
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %4, align 1
  %24 = load i8, i8* %4, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* @BU_EMP, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %16
  %31 = load i8, i8* @EN_INT, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* %4, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %34, %32
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %4, align 1
  br label %37

37:                                               ; preds = %30, %16
  %38 = load i32, i32* @VALID_DECODER, align 4
  %39 = load i8, i8* %4, align 1
  %40 = zext i8 %39 to i32
  %41 = ashr i32 %40, 4
  %42 = shl i32 1, %41
  %43 = and i32 %38, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %50

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %12, %1
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %47, %45
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local zeroext i8 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
