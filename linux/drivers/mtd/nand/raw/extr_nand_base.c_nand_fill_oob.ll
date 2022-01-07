; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_fill_oob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_fill_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i64 }
%struct.mtd_oob_ops = type { i32, i64 }
%struct.mtd_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.nand_chip*, i32*, i64, %struct.mtd_oob_ops*)* @nand_fill_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @nand_fill_oob(%struct.nand_chip* %0, i32* %1, i64 %2, %struct.mtd_oob_ops* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mtd_oob_ops*, align 8
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.mtd_oob_ops* %3, %struct.mtd_oob_ops** %9, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %13 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %12)
  store %struct.mtd_info* %13, %struct.mtd_info** %10, align 8
  %14 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %15 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %18 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @memset(i64 %16, i32 255, i32 %19)
  %21 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %9, align 8
  %22 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %54 [
    i32 129, label %24
    i32 128, label %24
    i32 130, label %38
  ]

24:                                               ; preds = %4, %4
  %25 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %26 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %9, align 8
  %29 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = load i32*, i32** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @memcpy(i64 %31, i32* %32, i64 %33)
  %35 = load i32*, i32** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32* %37, i32** %5, align 8
  br label %57

38:                                               ; preds = %4
  %39 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %42 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %9, align 8
  %45 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @mtd_ooblayout_set_databytes(%struct.mtd_info* %39, i32* %40, i64 %43, i64 %46, i64 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @BUG_ON(i32 %49)
  %51 = load i32*, i32** %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32* %53, i32** %5, align 8
  br label %57

54:                                               ; preds = %4
  %55 = call i32 (...) @BUG()
  br label %56

56:                                               ; preds = %54
  store i32* null, i32** %5, align 8
  br label %57

57:                                               ; preds = %56, %38, %24
  %58 = load i32*, i32** %5, align 8
  ret i32* %58
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @memcpy(i64, i32*, i64) #1

declare dso_local i32 @mtd_ooblayout_set_databytes(%struct.mtd_info*, i32*, i64, i64, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
