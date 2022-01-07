; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_cxgb4_best_aligned_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_cxgb4_best_aligned_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NMTUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb4_best_aligned_mtu(i16* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3, i32* %4) #0 {
  %6 = alloca i16*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i32*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i16, align 2
  store i16* %0, i16** %6, align 8
  store i16 %1, i16* %7, align 2
  store i16 %2, i16* %8, align 2
  store i16 %3, i16* %9, align 2
  store i32* %4, i32** %10, align 8
  %16 = load i16, i16* %7, align 2
  %17 = zext i16 %16 to i32
  %18 = load i16, i16* %8, align 2
  %19 = zext i16 %18 to i32
  %20 = add nsw i32 %17, %19
  %21 = trunc i32 %20 to i16
  store i16 %21, i16* %11, align 2
  %22 = load i16, i16* %9, align 2
  %23 = zext i16 %22 to i32
  %24 = sub nsw i32 %23, 1
  %25 = trunc i32 %24 to i16
  store i16 %25, i16* %12, align 2
  store i32 0, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  br label %26

26:                                               ; preds = %67, %5
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @NMTUS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %70

30:                                               ; preds = %26
  %31 = load i16*, i16** %6, align 8
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i16, i16* %31, i64 %33
  %35 = load i16, i16* %34, align 2
  %36 = zext i16 %35 to i32
  %37 = load i16, i16* %7, align 2
  %38 = zext i16 %37 to i32
  %39 = sub nsw i32 %36, %38
  %40 = trunc i32 %39 to i16
  store i16 %40, i16* %15, align 2
  %41 = load i16, i16* %15, align 2
  %42 = zext i16 %41 to i32
  %43 = load i16, i16* %12, align 2
  %44 = zext i16 %43 to i32
  %45 = and i32 %42, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %30
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %14, align 4
  br label %49

49:                                               ; preds = %47, %30
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, 1
  %52 = load i32, i32* @NMTUS, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load i16*, i16** %6, align 8
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i16, i16* %55, i64 %58
  %60 = load i16, i16* %59, align 2
  %61 = zext i16 %60 to i32
  %62 = load i16, i16* %11, align 2
  %63 = zext i16 %62 to i32
  %64 = icmp sgt i32 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %70

66:                                               ; preds = %54, %49
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %26

70:                                               ; preds = %65, %26
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @NMTUS, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %74, %70
  %78 = load i32, i32* %14, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %14, align 4
  %83 = sub nsw i32 %81, %82
  %84 = icmp sle i32 %83, 1
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* %14, align 4
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %85, %80, %77
  %88 = load i32*, i32** %10, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* %13, align 4
  %92 = load i32*, i32** %10, align 8
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i16*, i16** %6, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i16, i16* %94, i64 %96
  %98 = load i16, i16* %97, align 2
  %99 = zext i16 %98 to i32
  ret i32 %99
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
