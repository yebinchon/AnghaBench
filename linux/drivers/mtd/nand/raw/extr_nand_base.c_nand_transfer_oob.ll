; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_transfer_oob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_transfer_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i64 }
%struct.mtd_oob_ops = type { i32, i64 }
%struct.mtd_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.nand_chip*, i32*, %struct.mtd_oob_ops*, i64)* @nand_transfer_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @nand_transfer_oob(%struct.nand_chip* %0, i32* %1, %struct.mtd_oob_ops* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mtd_oob_ops*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.mtd_oob_ops* %2, %struct.mtd_oob_ops** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %13 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %12)
  store %struct.mtd_info* %13, %struct.mtd_info** %10, align 8
  %14 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %8, align 8
  %15 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %47 [
    i32 129, label %17
    i32 128, label %17
    i32 130, label %31
  ]

17:                                               ; preds = %4, %4
  %18 = load i32*, i32** %7, align 8
  %19 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %20 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %8, align 8
  %23 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @memcpy(i32* %18, i64 %25, i64 %26)
  %28 = load i32*, i32** %7, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32* %30, i32** %5, align 8
  br label %50

31:                                               ; preds = %4
  %32 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %35 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %8, align 8
  %38 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @mtd_ooblayout_get_databytes(%struct.mtd_info* %32, i32* %33, i64 %36, i64 %39, i64 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = load i32*, i32** %7, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32* %46, i32** %5, align 8
  br label %50

47:                                               ; preds = %4
  %48 = call i32 (...) @BUG()
  br label %49

49:                                               ; preds = %47
  store i32* null, i32** %5, align 8
  br label %50

50:                                               ; preds = %49, %31, %17
  %51 = load i32*, i32** %5, align 8
  ret i32* %51
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @memcpy(i32*, i64, i64) #1

declare dso_local i32 @mtd_ooblayout_get_databytes(%struct.mtd_info*, i32*, i64, i64, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
