; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_calc_crc32c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_calc_crc32c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRC32_POLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64, i64, i64)* @qed_calc_crc32c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qed_calc_crc32c(i64* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %15 = load i64, i64* %8, align 8
  store i64 %15, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %16 = load i64*, i64** %6, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load i64, i64* %7, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load i64, i64* %7, align 8
  %23 = srem i64 %22, 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %18, %4
  %26 = load i64, i64* %12, align 8
  store i64 %26, i64* %5, align 8
  br label %67

27:                                               ; preds = %21
  store i64 0, i64* %10, align 8
  br label %28

28:                                               ; preds = %62, %27
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %65

32:                                               ; preds = %28
  %33 = load i64*, i64** %6, align 8
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %14, align 8
  store i64 0, i64* %11, align 8
  br label %37

37:                                               ; preds = %58, %32
  %38 = load i64, i64* %11, align 8
  %39 = icmp slt i64 %38, 8
  br i1 %39, label %40, label %61

40:                                               ; preds = %37
  %41 = load i64, i64* %12, align 8
  %42 = ashr i64 %41, 31
  store i64 %42, i64* %13, align 8
  %43 = load i64, i64* %12, align 8
  %44 = shl i64 %43, 1
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* %14, align 8
  %47 = load i64, i64* %11, align 8
  %48 = ashr i64 %46, %47
  %49 = and i64 1, %48
  %50 = icmp ne i64 %45, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %40
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* @CRC32_POLY, align 8
  %54 = xor i64 %52, %53
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = or i64 %55, 1
  store i64 %56, i64* %12, align 8
  br label %57

57:                                               ; preds = %51, %40
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %11, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %11, align 8
  br label %37

61:                                               ; preds = %37
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %10, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %10, align 8
  br label %28

65:                                               ; preds = %28
  %66 = load i64, i64* %12, align 8
  store i64 %66, i64* %5, align 8
  br label %67

67:                                               ; preds = %65, %25
  %68 = load i64, i64* %5, align 8
  ret i64 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
