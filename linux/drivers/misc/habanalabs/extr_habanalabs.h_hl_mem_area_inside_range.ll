; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_habanalabs.h_hl_mem_area_inside_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_habanalabs.h_hl_mem_area_inside_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64)* @hl_mem_area_inside_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hl_mem_area_inside_range(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = add nsw i64 %11, %12
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %4
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp sle i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %27

26:                                               ; preds = %21, %17, %4
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
