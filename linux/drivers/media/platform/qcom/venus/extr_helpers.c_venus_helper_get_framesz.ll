; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_get_framesz.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_get_framesz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SZ_4K = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @venus_helper_get_framesz(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %13 [
    i32 136, label %12
    i32 140, label %12
    i32 138, label %12
    i32 139, label %12
    i32 141, label %12
    i32 135, label %12
    i32 134, label %12
    i32 133, label %12
    i32 128, label %12
    i32 132, label %12
    i32 131, label %12
    i32 130, label %12
    i32 129, label %12
    i32 137, label %12
  ]

12:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  store i32 1, i32* %10, align 4
  br label %14

13:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %13, %12
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @ALIGN(i32 %18, i32 32)
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @ALIGN(i32 %20, i32 32)
  %22 = mul nsw i32 %19, %21
  %23 = mul nsw i32 %22, 3
  %24 = sdiv i32 %23, 2
  %25 = sdiv i32 %24, 2
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @SZ_4K, align 4
  %28 = call i32 @ALIGN(i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %40

29:                                               ; preds = %14
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @to_hfi_raw_fmt(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %40

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @venus_helper_get_framesz_raw(i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %35, %34, %17
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @to_hfi_raw_fmt(i32) #1

declare dso_local i32 @venus_helper_get_framesz_raw(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
