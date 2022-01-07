; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_max2165.c_fixpt_div32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_max2165.c_fixpt_div32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*)* @fixpt_div32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fixpt_div32(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 0, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %54

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sdiv i32 %20, %21
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %7, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sub nsw i32 %23, %26
  store i32 %27, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %28

28:                                               ; preds = %46, %19
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 %29, 31
  br i1 %30, label %31, label %49

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = shl i32 %32, 1
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i32, i32* %12, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %10, align 4
  %42 = sub nsw i32 %41, %40
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %37, %31
  %44 = load i32, i32* %12, align 4
  %45 = shl i32 %44, 1
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %13, align 4
  br label %28

49:                                               ; preds = %28
  %50 = load i32, i32* %11, align 4
  %51 = load i32*, i32** %8, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %49, %16
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
