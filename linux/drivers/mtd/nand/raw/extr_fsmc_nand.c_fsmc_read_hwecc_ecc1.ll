; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsmc_nand.c_fsmc_read_hwecc_ecc1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsmc_nand.c_fsmc_read_hwecc_ecc1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.fsmc_nand_data = type { i64 }

@ECC1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32*)* @fsmc_read_hwecc_ecc1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsmc_read_hwecc_ecc1(%struct.nand_chip* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.fsmc_nand_data*, align 8
  %8 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %10 = call %struct.fsmc_nand_data* @nand_to_fsmc(%struct.nand_chip* %9)
  store %struct.fsmc_nand_data* %10, %struct.fsmc_nand_data** %7, align 8
  %11 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %7, align 8
  %12 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ECC1, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl_relaxed(i64 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %8, align 4
  %21 = ashr i32 %20, 8
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = ashr i32 %24, 16
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  store i32 %25, i32* %27, align 4
  ret i32 0
}

declare dso_local %struct.fsmc_nand_data* @nand_to_fsmc(%struct.nand_chip*) #1

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
