; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_hwmon.c_hl_is_visible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_hwmon.c_hl_is_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @hl_is_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hl_is_visible(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %31 [
    i32 133, label %11
    i32 140, label %15
    i32 148, label %19
    i32 144, label %23
    i32 136, label %27
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %14 [
    i32 130, label %13
    i32 129, label %13
    i32 128, label %13
    i32 132, label %13
    i32 131, label %13
  ]

13:                                               ; preds = %11, %11, %11, %11, %11
  store i32 292, i32* %5, align 4
  br label %33

14:                                               ; preds = %11
  br label %32

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %18 [
    i32 139, label %17
    i32 137, label %17
    i32 138, label %17
  ]

17:                                               ; preds = %15, %15, %15
  store i32 292, i32* %5, align 4
  br label %33

18:                                               ; preds = %15
  br label %32

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %22 [
    i32 147, label %21
    i32 145, label %21
    i32 146, label %21
  ]

21:                                               ; preds = %19, %19, %19
  store i32 292, i32* %5, align 4
  br label %33

22:                                               ; preds = %19
  br label %32

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %26 [
    i32 143, label %25
    i32 141, label %25
    i32 142, label %25
  ]

25:                                               ; preds = %23, %23, %23
  store i32 292, i32* %5, align 4
  br label %33

26:                                               ; preds = %23
  br label %32

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %30 [
    i32 134, label %29
    i32 135, label %29
  ]

29:                                               ; preds = %27, %27
  store i32 420, i32* %5, align 4
  br label %33

30:                                               ; preds = %27
  br label %32

31:                                               ; preds = %4
  br label %32

32:                                               ; preds = %31, %30, %26, %22, %18, %14
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %29, %25, %21, %17, %13
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
