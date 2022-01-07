; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-dsp.c_int_cos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-dsp.c_int_cos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_PI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @int_cos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int_cos(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @INT_PI, align 4
  %12 = sdiv i32 %10, %11
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = srem i32 %13, 2
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @INT_PI, align 4
  %19 = sub nsw i32 %17, %18
  %20 = call i32 @int_cos(i32 %19)
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %82

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @INT_PI, align 4
  %25 = srem i32 %23, %24
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @INT_PI, align 4
  %28 = sdiv i32 %27, 2
  %29 = icmp sgt i32 %26, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %22
  %31 = load i32, i32* @INT_PI, align 4
  %32 = sdiv i32 %31, 2
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @INT_PI, align 4
  %35 = sdiv i32 %34, 2
  %36 = srem i32 %33, %35
  %37 = sub nsw i32 %32, %36
  %38 = call i32 @int_cos(i32 %37)
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %82

40:                                               ; preds = %22
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sdiv i32 %43, 32768
  %45 = sdiv i32 %44, 2
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %3, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sdiv i32 %48, 32768
  %50 = load i32, i32* %3, align 4
  %51 = mul nsw i32 %49, %50
  %52 = sdiv i32 %51, 32768
  %53 = sdiv i32 %52, 3
  %54 = sdiv i32 %53, 4
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %3, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sdiv i32 %57, 32768
  %59 = load i32, i32* %3, align 4
  %60 = mul nsw i32 %58, %59
  %61 = sdiv i32 %60, 32768
  %62 = sdiv i32 %61, 5
  %63 = sdiv i32 %62, 6
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %3, align 4
  %66 = mul nsw i32 %64, %65
  %67 = sdiv i32 %66, 32768
  %68 = load i32, i32* %3, align 4
  %69 = mul nsw i32 %67, %68
  %70 = sdiv i32 %69, 32768
  %71 = sdiv i32 %70, 7
  %72 = sdiv i32 %71, 8
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %4, align 4
  %74 = sub nsw i32 32768, %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %74, %75
  %77 = load i32, i32* %6, align 4
  %78 = sub nsw i32 %76, %77
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %78, %79
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %40, %30, %16
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
