; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_slram.c_handle_unit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_slram.c_handle_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8*)* @handle_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @handle_unit(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 77
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 109
  br i1 %14, label %15, label %19

15:                                               ; preds = %10, %2
  %16 = load i64, i64* %4, align 8
  %17 = mul i64 %16, 1024
  %18 = mul i64 %17, 1024
  store i64 %18, i64* %3, align 8
  br label %35

19:                                               ; preds = %10
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 75
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 107
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %19
  %30 = load i64, i64* %4, align 8
  %31 = mul i64 %30, 1024
  store i64 %31, i64* %3, align 8
  br label %35

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %4, align 8
  store i64 %34, i64* %3, align 8
  br label %35

35:                                               ; preds = %33, %29, %15
  %36 = load i64, i64* %3, align 8
  ret i64 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
