; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grumain.c_reserve_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grumain.c_reserve_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i32, i32, i8*)* @reserve_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @reserve_resources(i64* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i64 0, i64* %9, align 8
  br label %11

11:                                               ; preds = %37, %4
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %11
  %16 = load i64*, i64** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @find_first_bit(i64* %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = call i32 (...) @BUG()
  br label %24

24:                                               ; preds = %22, %15
  %25 = load i32, i32* %10, align 4
  %26 = load i64*, i64** %5, align 8
  %27 = call i32 @__clear_bit(i32 %25, i64* %26)
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @__set_bit(i32 %28, i64* %9)
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load i32, i32* %10, align 4
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %8, align 8
  store i8 %34, i8* %35, align 1
  br label %37

37:                                               ; preds = %32, %24
  br label %11

38:                                               ; preds = %11
  %39 = load i64, i64* %9, align 8
  ret i64 %39
}

declare dso_local i32 @find_first_bit(i64*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @__clear_bit(i32, i64*) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
