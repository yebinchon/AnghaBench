; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_onfi.c_onfi_crc16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_onfi.c_onfi_crc16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @onfi_crc16(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  br label %8

8:                                                ; preds = %34, %3
  %9 = load i64, i64* %6, align 8
  %10 = add i64 %9, -1
  store i64 %10, i64* %6, align 8
  %11 = icmp ne i64 %9, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %8
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %14, i32** %5, align 8
  %15 = load i32, i32* %13, align 4
  %16 = shl i32 %15, 8
  %17 = load i32, i32* %4, align 4
  %18 = xor i32 %17, %16
  store i32 %18, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %31, %12
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 8
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = shl i32 %23, 1
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 32768
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 32773, i32 0
  %30 = xor i32 %24, %29
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %19

34:                                               ; preds = %19
  br label %8

35:                                               ; preds = %8
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
