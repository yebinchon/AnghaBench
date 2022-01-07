; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tegra_nand.c_tegra_nand_select_strength.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tegra_nand.c_tegra_nand_select_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BITS_PER_STEP_RS = common dso_local global i32 0, align 4
@NAND_IS_BOOT_MEDIUM = common dso_local global i32 0, align 4
@rs_strength_bootable = common dso_local global i32* null, align 8
@rs_strength = common dso_local global i32* null, align 8
@BITS_PER_STEP_BCH = common dso_local global i32 0, align 4
@bch_strength_bootable = common dso_local global i32* null, align 8
@bch_strength = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32)* @tegra_nand_select_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_nand_select_strength(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %10 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %47 [
    i32 128, label %13
    i32 129, label %30
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @BITS_PER_STEP_RS, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %16 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NAND_IS_BOOT_MEDIUM, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load i32*, i32** @rs_strength_bootable, align 8
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** @rs_strength_bootable, align 8
  %24 = call i32 @ARRAY_SIZE(i32* %23)
  store i32 %24, i32* %7, align 4
  br label %29

25:                                               ; preds = %13
  %26 = load i32*, i32** @rs_strength, align 8
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** @rs_strength, align 8
  %28 = call i32 @ARRAY_SIZE(i32* %27)
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %25, %21
  br label %50

30:                                               ; preds = %2
  %31 = load i32, i32* @BITS_PER_STEP_BCH, align 4
  store i32 %31, i32* %8, align 4
  %32 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %33 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @NAND_IS_BOOT_MEDIUM, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32*, i32** @bch_strength_bootable, align 8
  store i32* %39, i32** %6, align 8
  %40 = load i32*, i32** @bch_strength_bootable, align 8
  %41 = call i32 @ARRAY_SIZE(i32* %40)
  store i32 %41, i32* %7, align 4
  br label %46

42:                                               ; preds = %30
  %43 = load i32*, i32** @bch_strength, align 8
  store i32* %43, i32** %6, align 8
  %44 = load i32*, i32** @bch_strength, align 8
  %45 = call i32 @ARRAY_SIZE(i32* %44)
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %42, %38
  br label %50

47:                                               ; preds = %2
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %57

50:                                               ; preds = %46, %29
  %51 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @tegra_nand_get_strength(%struct.nand_chip* %51, i32* %52, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %50, %47
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @tegra_nand_get_strength(%struct.nand_chip*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
