; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_select_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_select_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.mtd_info = type { i32 }
%struct.sunxi_nand_chip = type { i32, i64, i32, i32, %struct.sunxi_nand_chip_sel*, %struct.TYPE_2__ }
%struct.sunxi_nand_chip_sel = type { i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sunxi_nfc = type { i64, i64, i32 }

@NFC_REG_CTL = common dso_local global i64 0, align 8
@NFC_PAGE_SHIFT_MSK = common dso_local global i32 0, align 4
@NFC_CE_SEL_MSK = common dso_local global i32 0, align 4
@NFC_RB_SEL_MSK = common dso_local global i32 0, align 4
@NFC_EN = common dso_local global i32 0, align 4
@NFC_REG_SPARE_AREA = common dso_local global i64 0, align 8
@NFC_REG_TIMING_CTL = common dso_local global i64 0, align 8
@NFC_REG_TIMING_CFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32)* @sunxi_nfc_select_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_nfc_select_chip(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.sunxi_nand_chip*, align 8
  %7 = alloca %struct.sunxi_nfc*, align 8
  %8 = alloca %struct.sunxi_nand_chip_sel*, align 8
  %9 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %11 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %10)
  store %struct.mtd_info* %11, %struct.mtd_info** %5, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %13 = call %struct.sunxi_nand_chip* @to_sunxi_nand(%struct.nand_chip* %12)
  store %struct.sunxi_nand_chip* %13, %struct.sunxi_nand_chip** %6, align 8
  %14 = load %struct.sunxi_nand_chip*, %struct.sunxi_nand_chip** %6, align 8
  %15 = getelementptr inbounds %struct.sunxi_nand_chip, %struct.sunxi_nand_chip* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.sunxi_nfc* @to_sunxi_nfc(i32 %17)
  store %struct.sunxi_nfc* %18, %struct.sunxi_nfc** %7, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp ugt i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.sunxi_nand_chip*, %struct.sunxi_nand_chip** %6, align 8
  %24 = getelementptr inbounds %struct.sunxi_nand_chip, %struct.sunxi_nand_chip* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp uge i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %130

28:                                               ; preds = %21, %2
  %29 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %7, align 8
  %30 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NFC_REG_CTL, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readl(i64 %33)
  %35 = load i32, i32* @NFC_PAGE_SHIFT_MSK, align 4
  %36 = load i32, i32* @NFC_CE_SEL_MSK, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @NFC_RB_SEL_MSK, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @NFC_EN, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = and i32 %34, %42
  store i32 %43, i32* %9, align 4
  %44 = load %struct.sunxi_nand_chip*, %struct.sunxi_nand_chip** %6, align 8
  %45 = getelementptr inbounds %struct.sunxi_nand_chip, %struct.sunxi_nand_chip* %44, i32 0, i32 4
  %46 = load %struct.sunxi_nand_chip_sel*, %struct.sunxi_nand_chip_sel** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.sunxi_nand_chip_sel, %struct.sunxi_nand_chip_sel* %46, i64 %48
  store %struct.sunxi_nand_chip_sel* %49, %struct.sunxi_nand_chip_sel** %8, align 8
  %50 = load %struct.sunxi_nand_chip_sel*, %struct.sunxi_nand_chip_sel** %8, align 8
  %51 = getelementptr inbounds %struct.sunxi_nand_chip_sel, %struct.sunxi_nand_chip_sel* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @NFC_CE_SEL(i32 %52)
  %54 = load i32, i32* @NFC_EN, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %57 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @NFC_PAGE_SHIFT(i32 %58)
  %60 = or i32 %55, %59
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %9, align 4
  %63 = load %struct.sunxi_nand_chip_sel*, %struct.sunxi_nand_chip_sel** %8, align 8
  %64 = getelementptr inbounds %struct.sunxi_nand_chip_sel, %struct.sunxi_nand_chip_sel* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sge i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %28
  %68 = load %struct.sunxi_nand_chip_sel*, %struct.sunxi_nand_chip_sel** %8, align 8
  %69 = getelementptr inbounds %struct.sunxi_nand_chip_sel, %struct.sunxi_nand_chip_sel* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @NFC_RB_SEL(i64 %70)
  %72 = load i32, i32* %9, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %67, %28
  %75 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %76 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %7, align 8
  %79 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @NFC_REG_SPARE_AREA, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel(i32 %77, i64 %82)
  %84 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %7, align 8
  %85 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.sunxi_nand_chip*, %struct.sunxi_nand_chip** %6, align 8
  %88 = getelementptr inbounds %struct.sunxi_nand_chip, %struct.sunxi_nand_chip* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %86, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %74
  %92 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %7, align 8
  %93 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.sunxi_nand_chip*, %struct.sunxi_nand_chip** %6, align 8
  %96 = getelementptr inbounds %struct.sunxi_nand_chip, %struct.sunxi_nand_chip* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @clk_set_rate(i32 %94, i64 %97)
  %99 = load %struct.sunxi_nand_chip*, %struct.sunxi_nand_chip** %6, align 8
  %100 = getelementptr inbounds %struct.sunxi_nand_chip, %struct.sunxi_nand_chip* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %7, align 8
  %103 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %91, %74
  %105 = load %struct.sunxi_nand_chip*, %struct.sunxi_nand_chip** %6, align 8
  %106 = getelementptr inbounds %struct.sunxi_nand_chip, %struct.sunxi_nand_chip* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %7, align 8
  %109 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @NFC_REG_TIMING_CTL, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @writel(i32 %107, i64 %112)
  %114 = load %struct.sunxi_nand_chip*, %struct.sunxi_nand_chip** %6, align 8
  %115 = getelementptr inbounds %struct.sunxi_nand_chip, %struct.sunxi_nand_chip* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %7, align 8
  %118 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @NFC_REG_TIMING_CFG, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @writel(i32 %116, i64 %121)
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %7, align 8
  %125 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @NFC_REG_CTL, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @writel(i32 %123, i64 %128)
  br label %130

130:                                              ; preds = %104, %27
  ret void
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.sunxi_nand_chip* @to_sunxi_nand(%struct.nand_chip*) #1

declare dso_local %struct.sunxi_nfc* @to_sunxi_nfc(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @NFC_CE_SEL(i32) #1

declare dso_local i32 @NFC_PAGE_SHIFT(i32) #1

declare dso_local i32 @NFC_RB_SEL(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
