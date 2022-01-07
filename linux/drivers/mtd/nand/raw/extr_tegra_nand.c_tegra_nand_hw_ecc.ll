; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tegra_nand.c_tegra_nand_hw_ecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tegra_nand.c_tegra_nand_hw_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_nand_controller = type { i64 }
%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.tegra_nand_chip = type { i32, i32, i32 }

@NAND_ECC_BCH = common dso_local global i64 0, align 8
@BCH_CONFIG = common dso_local global i64 0, align 8
@CONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_nand_controller*, %struct.nand_chip*, i32)* @tegra_nand_hw_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_nand_hw_ecc(%struct.tegra_nand_controller* %0, %struct.nand_chip* %1, i32 %2) #0 {
  %4 = alloca %struct.tegra_nand_controller*, align 8
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tegra_nand_chip*, align 8
  store %struct.tegra_nand_controller* %0, %struct.tegra_nand_controller** %4, align 8
  store %struct.nand_chip* %1, %struct.nand_chip** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %9 = call %struct.tegra_nand_chip* @to_tegra_chip(%struct.nand_chip* %8)
  store %struct.tegra_nand_chip* %9, %struct.tegra_nand_chip** %7, align 8
  %10 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %11 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NAND_ECC_BCH, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load %struct.tegra_nand_chip*, %struct.tegra_nand_chip** %7, align 8
  %21 = getelementptr inbounds %struct.tegra_nand_chip, %struct.tegra_nand_chip* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %4, align 8
  %24 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BCH_CONFIG, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel_relaxed(i32 %22, i64 %27)
  br label %36

29:                                               ; preds = %16, %3
  %30 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %4, align 8
  %31 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @BCH_CONFIG, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel_relaxed(i32 0, i64 %34)
  br label %36

36:                                               ; preds = %29, %19
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load %struct.tegra_nand_chip*, %struct.tegra_nand_chip** %7, align 8
  %41 = getelementptr inbounds %struct.tegra_nand_chip, %struct.tegra_nand_chip* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %4, align 8
  %44 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CONFIG, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel_relaxed(i32 %42, i64 %47)
  br label %59

49:                                               ; preds = %36
  %50 = load %struct.tegra_nand_chip*, %struct.tegra_nand_chip** %7, align 8
  %51 = getelementptr inbounds %struct.tegra_nand_chip, %struct.tegra_nand_chip* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %4, align 8
  %54 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @CONFIG, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel_relaxed(i32 %52, i64 %57)
  br label %59

59:                                               ; preds = %49, %39
  ret void
}

declare dso_local %struct.tegra_nand_chip* @to_tegra_chip(%struct.nand_chip*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
