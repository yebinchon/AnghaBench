; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_sm_ftl.c_sm_correct_sector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_sm_ftl.c_sm_correct_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_oob = type { i32, i32 }

@SM_SMALL_PAGE = common dso_local global i32 0, align 4
@CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.sm_oob*)* @sm_correct_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm_correct_sector(i32* %0, %struct.sm_oob* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sm_oob*, align 8
  %6 = alloca [3 x i32], align 4
  store i32* %0, i32** %4, align 8
  store %struct.sm_oob* %1, %struct.sm_oob** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* @SM_SMALL_PAGE, align 4
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %10 = load i32, i32* @CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC, align 4
  %11 = call i32 @IS_ENABLED(i32 %10)
  %12 = call i32 @__nand_calculate_ecc(i32* %7, i32 %8, i32* %9, i32 %11)
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %15 = load %struct.sm_oob*, %struct.sm_oob** %5, align 8
  %16 = getelementptr inbounds %struct.sm_oob, %struct.sm_oob* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SM_SMALL_PAGE, align 4
  %19 = load i32, i32* @CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC, align 4
  %20 = call i32 @IS_ENABLED(i32 %19)
  %21 = call i64 @__nand_correct_data(i32* %13, i32* %14, i32 %17, i32 %18, i32 %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %51

26:                                               ; preds = %2
  %27 = load i32, i32* @SM_SMALL_PAGE, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32* %30, i32** %4, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @SM_SMALL_PAGE, align 4
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %34 = load i32, i32* @CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC, align 4
  %35 = call i32 @IS_ENABLED(i32 %34)
  %36 = call i32 @__nand_calculate_ecc(i32* %31, i32 %32, i32* %33, i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %39 = load %struct.sm_oob*, %struct.sm_oob** %5, align 8
  %40 = getelementptr inbounds %struct.sm_oob, %struct.sm_oob* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SM_SMALL_PAGE, align 4
  %43 = load i32, i32* @CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC, align 4
  %44 = call i32 @IS_ENABLED(i32 %43)
  %45 = call i64 @__nand_correct_data(i32* %37, i32* %38, i32 %41, i32 %42, i32 %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %26
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %51

50:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %47, %23
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @__nand_calculate_ecc(i32*, i32, i32*, i32) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i64 @__nand_correct_data(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
