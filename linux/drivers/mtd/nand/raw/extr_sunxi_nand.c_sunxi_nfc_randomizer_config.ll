; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_randomizer_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_randomizer_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32 }
%struct.sunxi_nfc = type { i64 }

@NFC_REG_ECC_CTL = common dso_local global i64 0, align 8
@NAND_NEED_SCRAMBLING = common dso_local global i32 0, align 4
@NFC_RANDOM_SEED_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32, i32)* @sunxi_nfc_randomizer_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_nfc_randomizer_config(%struct.nand_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sunxi_nfc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %11 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.sunxi_nfc* @to_sunxi_nfc(i32 %12)
  store %struct.sunxi_nfc* %13, %struct.sunxi_nfc** %7, align 8
  %14 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %7, align 8
  %15 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NFC_REG_ECC_CTL, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @NAND_NEED_SCRAMBLING, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  br label %57

27:                                               ; preds = %3
  %28 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %7, align 8
  %29 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NFC_REG_ECC_CTL, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @readl(i64 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @sunxi_nfc_randomizer_state(%struct.nand_chip* %34, i32 %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %7, align 8
  %39 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @NFC_REG_ECC_CTL, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readl(i64 %42)
  %44 = load i32, i32* @NFC_RANDOM_SEED_MSK, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @NFC_RANDOM_SEED(i32 %48)
  %50 = or i32 %47, %49
  %51 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %7, align 8
  %52 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @NFC_REG_ECC_CTL, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %50, i64 %55)
  br label %57

57:                                               ; preds = %27, %26
  ret void
}

declare dso_local %struct.sunxi_nfc* @to_sunxi_nfc(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @sunxi_nfc_randomizer_state(%struct.nand_chip*, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @NFC_RANDOM_SEED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
