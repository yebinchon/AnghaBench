; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_alloc.c_find_aligned_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_alloc.c_find_aligned_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i32, i32, i32, i32, i32)* @find_aligned_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_aligned_range(i64* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64* %0, i64** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  br label %16

16:                                               ; preds = %77, %6
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %12, align 4
  %19 = call i32 @ALIGN(i32 %17, i32 %18)
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %39, %16
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64*, i64** %8, align 8
  %28 = call i64 @test_bit(i64 %26, i64* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %13, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %30, %24
  %36 = phi i1 [ true, %24 ], [ %34, %30 ]
  br label %37

37:                                               ; preds = %35, %20
  %38 = phi i1 [ false, %20 ], [ %36, %35 ]
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %20

43:                                               ; preds = %37
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i64 -1, i64* %7, align 8
  br label %88

48:                                               ; preds = %43
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %14, align 8
  %53 = load i64, i64* %14, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp ugt i64 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store i64 -1, i64* %7, align 8
  br label %88

58:                                               ; preds = %48
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %15, align 8
  br label %62

62:                                               ; preds = %82, %58
  %63 = load i64, i64* %15, align 8
  %64 = load i64, i64* %14, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %85

66:                                               ; preds = %62
  %67 = load i64, i64* %15, align 8
  %68 = load i64*, i64** %8, align 8
  %69 = call i64 @test_bit(i64 %67, i64* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %66
  %72 = load i64, i64* %15, align 8
  %73 = trunc i64 %72 to i32
  %74 = load i32, i32* %13, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %71, %66
  %78 = load i64, i64* %15, align 8
  %79 = add i64 %78, 1
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %9, align 4
  br label %16

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %15, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %15, align 8
  br label %62

85:                                               ; preds = %62
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %7, align 8
  br label %88

88:                                               ; preds = %85, %57, %47
  %89 = load i64, i64* %7, align 8
  ret i64 %89
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i64 @test_bit(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
