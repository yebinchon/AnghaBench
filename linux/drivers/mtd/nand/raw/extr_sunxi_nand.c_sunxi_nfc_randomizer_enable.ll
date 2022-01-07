; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_randomizer_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_randomizer_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32 }
%struct.sunxi_nfc = type { i64 }

@NAND_NEED_SCRAMBLING = common dso_local global i32 0, align 4
@NFC_REG_ECC_CTL = common dso_local global i64 0, align 8
@NFC_RANDOM_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*)* @sunxi_nfc_randomizer_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_nfc_randomizer_enable(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  %3 = alloca %struct.sunxi_nfc*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %4 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %5 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.sunxi_nfc* @to_sunxi_nfc(i32 %6)
  store %struct.sunxi_nfc* %7, %struct.sunxi_nfc** %3, align 8
  %8 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %9 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @NAND_NEED_SCRAMBLING, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %30

15:                                               ; preds = %1
  %16 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %3, align 8
  %17 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NFC_REG_ECC_CTL, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  %22 = load i32, i32* @NFC_RANDOM_EN, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %3, align 8
  %25 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NFC_REG_ECC_CTL, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 %23, i64 %28)
  br label %30

30:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.sunxi_nfc* @to_sunxi_nfc(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
