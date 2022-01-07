; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_jz4740_ecc.c_jz4740_ecc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_jz4740_ecc.c_jz4740_ecc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ingenic_ecc = type { i64 }

@JZ_REG_NAND_IRQ_STAT = common dso_local global i64 0, align 8
@JZ_REG_NAND_ECC_CTRL = common dso_local global i64 0, align 8
@JZ_NAND_ECC_CTRL_RESET = common dso_local global i32 0, align 4
@JZ_NAND_ECC_CTRL_ENABLE = common dso_local global i32 0, align 4
@JZ_NAND_ECC_CTRL_RS = common dso_local global i32 0, align 4
@JZ_NAND_ECC_CTRL_ENCODING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ingenic_ecc*, i32)* @jz4740_ecc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jz4740_ecc_reset(%struct.ingenic_ecc* %0, i32 %1) #0 {
  %3 = alloca %struct.ingenic_ecc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ingenic_ecc* %0, %struct.ingenic_ecc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %3, align 8
  %7 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @JZ_REG_NAND_IRQ_STAT, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writel(i32 0, i64 %10)
  %12 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %3, align 8
  %13 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @JZ_REG_NAND_ECC_CTRL, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @JZ_NAND_ECC_CTRL_RESET, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @JZ_NAND_ECC_CTRL_ENABLE, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @JZ_NAND_ECC_CTRL_RS, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i32, i32* @JZ_NAND_ECC_CTRL_ENCODING, align 4
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %38

33:                                               ; preds = %2
  %34 = load i32, i32* @JZ_NAND_ECC_CTRL_ENCODING, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %33, %29
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %3, align 8
  %41 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @JZ_REG_NAND_ECC_CTRL, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
