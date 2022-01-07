; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsmc_nand.c_fsmc_read_hwecc_ecc4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsmc_nand.c_fsmc_read_hwecc_ecc4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.fsmc_nand_data = type { i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@FSMC_BUSY_WAIT_TIMEOUT = common dso_local global i64 0, align 8
@STS = common dso_local global i64 0, align 8
@FSMC_CODE_RDY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"calculate ecc timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@ECC1 = common dso_local global i64 0, align 8
@ECC2 = common dso_local global i64 0, align 8
@ECC3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32*)* @fsmc_read_hwecc_ecc4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsmc_read_hwecc_ecc4(%struct.nand_chip* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.fsmc_nand_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %12 = call %struct.fsmc_nand_data* @nand_to_fsmc(%struct.nand_chip* %11)
  store %struct.fsmc_nand_data* %12, %struct.fsmc_nand_data** %8, align 8
  %13 = load i64, i64* @jiffies, align 8
  %14 = load i64, i64* @FSMC_BUSY_WAIT_TIMEOUT, align 8
  %15 = add i64 %13, %14
  store i64 %15, i64* %10, align 8
  br label %16

16:                                               ; preds = %29, %3
  %17 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %8, align 8
  %18 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @STS, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl_relaxed(i64 %21)
  %23 = load i32, i32* @FSMC_CODE_RDY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %35

27:                                               ; preds = %16
  %28 = call i32 (...) @cond_resched()
  br label %29

29:                                               ; preds = %27
  %30 = load i64, i64* @jiffies, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i64 @time_after_eq(i64 %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %16, label %35

35:                                               ; preds = %29, %26
  %36 = load i64, i64* @jiffies, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i64 @time_after_eq(i64 %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %8, align 8
  %42 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ETIMEDOUT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %121

47:                                               ; preds = %35
  %48 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %8, align 8
  %49 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ECC1, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @readl_relaxed(i64 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %9, align 4
  %58 = ashr i32 %57, 8
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %9, align 4
  %62 = ashr i32 %61, 16
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %9, align 4
  %66 = ashr i32 %65, 24
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  store i32 %66, i32* %68, align 4
  %69 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %8, align 8
  %70 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @ECC2, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @readl_relaxed(i64 %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %9, align 4
  %79 = ashr i32 %78, 8
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 5
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %9, align 4
  %83 = ashr i32 %82, 16
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 6
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %9, align 4
  %87 = ashr i32 %86, 24
  %88 = load i32*, i32** %7, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 7
  store i32 %87, i32* %89, align 4
  %90 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %8, align 8
  %91 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @ECC3, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @readl_relaxed(i64 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 8
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %9, align 4
  %100 = ashr i32 %99, 8
  %101 = load i32*, i32** %7, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 9
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %9, align 4
  %104 = ashr i32 %103, 16
  %105 = load i32*, i32** %7, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 10
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %9, align 4
  %108 = ashr i32 %107, 24
  %109 = load i32*, i32** %7, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 11
  store i32 %108, i32* %110, align 4
  %111 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %8, align 8
  %112 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @STS, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @readl_relaxed(i64 %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = ashr i32 %117, 16
  %119 = load i32*, i32** %7, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 12
  store i32 %118, i32* %120, align 4
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %47, %40
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local %struct.fsmc_nand_data* @nand_to_fsmc(%struct.nand_chip*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
