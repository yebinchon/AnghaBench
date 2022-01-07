; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_round_closest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_round_closest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @max2175_round_closest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @max2175_round_closest(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i64, i64* %4, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8, %2
  %12 = load i64, i64* %4, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %14, %8
  %18 = load i64, i64* %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sdiv i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %18, %21
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @div_s64(i64 %22, i32 %23)
  store i64 %24, i64* %3, align 8
  br label %33

25:                                               ; preds = %14, %11
  %26 = load i64, i64* %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sdiv i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = sub nsw i64 %26, %29
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @div_s64(i64 %30, i32 %31)
  store i64 %32, i64* %3, align 8
  br label %33

33:                                               ; preds = %25, %17
  %34 = load i64, i64* %3, align 8
  ret i64 %34
}

declare dso_local i64 @div_s64(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
