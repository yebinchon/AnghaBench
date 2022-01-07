; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_onenand_bbt.c_check_short_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_onenand_bbt.c_check_short_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_bbt_descr = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i32, %struct.nand_bbt_descr*)* @check_short_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_short_pattern(i64* %0, i32 %1, i32 %2, %struct.nand_bbt_descr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nand_bbt_descr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  store i64* %0, i64** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.nand_bbt_descr* %3, %struct.nand_bbt_descr** %9, align 8
  %12 = load i64*, i64** %6, align 8
  store i64* %12, i64** %11, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %35, %4
  %14 = load i32, i32* %10, align 4
  %15 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %9, align 8
  %16 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %13
  %20 = load i64*, i64** %11, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %9, align 8
  %26 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %24, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  store i32 -1, i32* %5, align 4
  br label %39

34:                                               ; preds = %19
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %13

38:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
