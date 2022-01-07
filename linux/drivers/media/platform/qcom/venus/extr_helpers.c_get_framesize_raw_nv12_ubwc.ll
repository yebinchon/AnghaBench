; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_get_framesize_raw_nv12_ubwc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_get_framesize_raw_nv12_ubwc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SZ_16K = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @get_framesize_raw_nv12_ubwc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_framesize_raw_nv12_ubwc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* @SZ_16K, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @DIV_ROUND_UP(i32 %15, i32 32)
  %17 = call i32 @ALIGN(i32 %16, i32 64)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @DIV_ROUND_UP(i32 %19, i32 8)
  %21 = call i32 @ALIGN(i32 %20, i32 16)
  %22 = mul nsw i32 %18, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @SZ_4K, align 4
  %25 = call i32 @ALIGN(i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @ALIGN(i32 %26, i32 128)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @ALIGN(i32 %29, i32 32)
  %31 = mul nsw i32 %28, %30
  %32 = load i32, i32* @SZ_4K, align 4
  %33 = call i32 @ALIGN(i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %3, align 4
  %35 = sdiv i32 %34, 2
  %36 = call i32 @DIV_ROUND_UP(i32 %35, i32 16)
  %37 = call i32 @ALIGN(i32 %36, i32 64)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %4, align 4
  %40 = sdiv i32 %39, 2
  %41 = call i32 @DIV_ROUND_UP(i32 %40, i32 8)
  %42 = call i32 @ALIGN(i32 %41, i32 16)
  %43 = mul nsw i32 %38, %42
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @SZ_4K, align 4
  %46 = call i32 @ALIGN(i32 %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @ALIGN(i32 %47, i32 128)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %4, align 4
  %51 = sdiv i32 %50, 2
  %52 = call i32 @ALIGN(i32 %51, i32 32)
  %53 = mul nsw i32 %49, %52
  %54 = load i32, i32* @SZ_4K, align 4
  %55 = call i32 @ALIGN(i32 %53, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %7, align 4
  %65 = mul nsw i32 %64, 48
  %66 = call i32 @max(i32 %63, i32 %65)
  %67 = add nsw i32 %62, %66
  %68 = load i32, i32* @SZ_4K, align 4
  %69 = call i32 @ALIGN(i32 %67, i32 %68)
  ret i32 %69
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
