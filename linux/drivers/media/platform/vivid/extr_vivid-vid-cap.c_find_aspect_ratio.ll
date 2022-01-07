; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_find_aspect_ratio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_find_aspect_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32*)* @find_aspect_ratio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_aspect_ratio(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = srem i32 %9, 3
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* %6, align 4
  %14 = mul nsw i32 %13, 4
  %15 = sdiv i32 %14, 3
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32*, i32** %7, align 8
  store i32 4, i32* %19, align 4
  %20 = load i32*, i32** %8, align 8
  store i32 3, i32* %20, align 4
  br label %80

21:                                               ; preds = %12, %4
  %22 = load i32, i32* %6, align 4
  %23 = srem i32 %22, 9
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = mul nsw i32 %26, 16
  %28 = sdiv i32 %27, 9
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32*, i32** %7, align 8
  store i32 16, i32* %32, align 4
  %33 = load i32*, i32** %8, align 8
  store i32 9, i32* %33, align 4
  br label %79

34:                                               ; preds = %25, %21
  %35 = load i32, i32* %6, align 4
  %36 = srem i32 %35, 10
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = mul nsw i32 %39, 16
  %41 = sdiv i32 %40, 10
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32*, i32** %7, align 8
  store i32 16, i32* %45, align 4
  %46 = load i32*, i32** %8, align 8
  store i32 10, i32* %46, align 4
  br label %78

47:                                               ; preds = %38, %34
  %48 = load i32, i32* %6, align 4
  %49 = srem i32 %48, 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = mul nsw i32 %52, 5
  %54 = sdiv i32 %53, 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32*, i32** %7, align 8
  store i32 5, i32* %58, align 4
  %59 = load i32*, i32** %8, align 8
  store i32 4, i32* %59, align 4
  br label %77

60:                                               ; preds = %51, %47
  %61 = load i32, i32* %6, align 4
  %62 = srem i32 %61, 9
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %6, align 4
  %66 = mul nsw i32 %65, 15
  %67 = sdiv i32 %66, 9
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32*, i32** %7, align 8
  store i32 15, i32* %71, align 4
  %72 = load i32*, i32** %8, align 8
  store i32 9, i32* %72, align 4
  br label %76

73:                                               ; preds = %64, %60
  %74 = load i32*, i32** %7, align 8
  store i32 16, i32* %74, align 4
  %75 = load i32*, i32** %8, align 8
  store i32 9, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %70
  br label %77

77:                                               ; preds = %76, %57
  br label %78

78:                                               ; preds = %77, %44
  br label %79

79:                                               ; preds = %78, %31
  br label %80

80:                                               ; preds = %79, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
