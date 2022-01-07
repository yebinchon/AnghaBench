; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_hw_ecc_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_hw_ecc_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.denali_controller = type { i32, i64 }
%struct.mtd_ecc_stats = type { i32 }
%struct.TYPE_4__ = type { %struct.mtd_ecc_stats }

@ECC_COR_INFO__UNCOR_ERR = common dso_local global i32 0, align 4
@ECC_COR_INFO__MAX_ERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i64*)* @denali_hw_ecc_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @denali_hw_ecc_fixup(%struct.nand_chip* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.denali_controller*, align 8
  %7 = alloca %struct.mtd_ecc_stats*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i64* %1, i64** %5, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %12 = call %struct.denali_controller* @to_denali_controller(%struct.nand_chip* %11)
  store %struct.denali_controller* %12, %struct.denali_controller** %6, align 8
  %13 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %14 = call %struct.TYPE_4__* @nand_to_mtd(%struct.nand_chip* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.mtd_ecc_stats* %15, %struct.mtd_ecc_stats** %7, align 8
  %16 = load %struct.denali_controller*, %struct.denali_controller** %6, align 8
  %17 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.denali_controller*, %struct.denali_controller** %6, align 8
  %20 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @ECC_COR_INFO(i32 %22)
  %24 = add nsw i64 %21, %23
  %25 = call i32 @ioread32(i64 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @ECC_COR_INFO__SHIFT(i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = ashr i32 %28, %27
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @ECC_COR_INFO__UNCOR_ERR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %2
  %35 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %36 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %38, 1
  %40 = call i64 @GENMASK(i64 %39, i32 0)
  %41 = load i64*, i64** %5, align 8
  store i64 %40, i64* %41, align 8
  store i32 0, i32* %3, align 4
  br label %52

42:                                               ; preds = %2
  %43 = load i32, i32* @ECC_COR_INFO__MAX_ERRORS, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @FIELD_GET(i32 %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.mtd_ecc_stats*, %struct.mtd_ecc_stats** %7, align 8
  %48 = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %42, %34
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.denali_controller* @to_denali_controller(%struct.nand_chip*) #1

declare dso_local %struct.TYPE_4__* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i64 @ECC_COR_INFO(i32) #1

declare dso_local i32 @ECC_COR_INFO__SHIFT(i32) #1

declare dso_local i64 @GENMASK(i64, i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
