; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxic_nand.c_mxic_nfc_cs_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxic_nand.c_mxic_nfc_cs_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxic_nand_ctlr = type { i64 }

@HC_CFG_MAN_CS_ASSERT = common dso_local global i32 0, align 4
@HC_CFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxic_nand_ctlr*)* @mxic_nfc_cs_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxic_nfc_cs_disable(%struct.mxic_nand_ctlr* %0) #0 {
  %2 = alloca %struct.mxic_nand_ctlr*, align 8
  store %struct.mxic_nand_ctlr* %0, %struct.mxic_nand_ctlr** %2, align 8
  %3 = load i32, i32* @HC_CFG_MAN_CS_ASSERT, align 4
  %4 = xor i32 %3, -1
  %5 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %2, align 8
  %6 = getelementptr inbounds %struct.mxic_nand_ctlr, %struct.mxic_nand_ctlr* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @HC_CFG, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readl(i64 %9)
  %11 = and i32 %4, %10
  %12 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %2, align 8
  %13 = getelementptr inbounds %struct.mxic_nand_ctlr, %struct.mxic_nand_ctlr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @HC_CFG, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i32 %11, i64 %16)
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
