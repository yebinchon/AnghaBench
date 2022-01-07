; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxic_nand.c_mxic_nfc_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxic_nand.c_mxic_nfc_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxic_nand_ctlr = type { i64 }

@HC_CFG_TYPE_RAW_NAND = common dso_local global i32 0, align 4
@HC_CFG_MAN_CS_EN = common dso_local global i32 0, align 4
@HC_CFG = common dso_local global i64 0, align 8
@INT_STS_ALL = common dso_local global i32 0, align 4
@INT_STS_EN = common dso_local global i64 0, align 8
@INT_RDY_PIN = common dso_local global i32 0, align 4
@INT_SIG_EN = common dso_local global i64 0, align 8
@LRD_CFG = common dso_local global i64 0, align 8
@LRD_CTRL = common dso_local global i64 0, align 8
@HC_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxic_nand_ctlr*)* @mxic_nfc_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxic_nfc_hw_init(%struct.mxic_nand_ctlr* %0) #0 {
  %2 = alloca %struct.mxic_nand_ctlr*, align 8
  store %struct.mxic_nand_ctlr* %0, %struct.mxic_nand_ctlr** %2, align 8
  %3 = call i32 @HC_CFG_NIO(i32 8)
  %4 = load i32, i32* @HC_CFG_TYPE_RAW_NAND, align 4
  %5 = call i32 @HC_CFG_TYPE(i32 1, i32 %4)
  %6 = or i32 %3, %5
  %7 = call i32 @HC_CFG_SLV_ACT(i32 0)
  %8 = or i32 %6, %7
  %9 = load i32, i32* @HC_CFG_MAN_CS_EN, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @HC_CFG_IDLE_SIO_LVL(i32 1)
  %12 = or i32 %10, %11
  %13 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %2, align 8
  %14 = getelementptr inbounds %struct.mxic_nand_ctlr, %struct.mxic_nand_ctlr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @HC_CFG, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 %12, i64 %17)
  %19 = load i32, i32* @INT_STS_ALL, align 4
  %20 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %2, align 8
  %21 = getelementptr inbounds %struct.mxic_nand_ctlr, %struct.mxic_nand_ctlr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @INT_STS_EN, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  %26 = load i32, i32* @INT_RDY_PIN, align 4
  %27 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %2, align 8
  %28 = getelementptr inbounds %struct.mxic_nand_ctlr, %struct.mxic_nand_ctlr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @INT_SIG_EN, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  %33 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %2, align 8
  %34 = getelementptr inbounds %struct.mxic_nand_ctlr, %struct.mxic_nand_ctlr* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @ONFI_DIN_CNT(i32 0)
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 0, i64 %37)
  %39 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %2, align 8
  %40 = getelementptr inbounds %struct.mxic_nand_ctlr, %struct.mxic_nand_ctlr* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @LRD_CFG, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 0, i64 %43)
  %45 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %2, align 8
  %46 = getelementptr inbounds %struct.mxic_nand_ctlr, %struct.mxic_nand_ctlr* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @LRD_CTRL, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 0, i64 %49)
  %51 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %2, align 8
  %52 = getelementptr inbounds %struct.mxic_nand_ctlr, %struct.mxic_nand_ctlr* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @HC_EN, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 0, i64 %55)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @HC_CFG_NIO(i32) #1

declare dso_local i32 @HC_CFG_TYPE(i32, i32) #1

declare dso_local i32 @HC_CFG_SLV_ACT(i32) #1

declare dso_local i32 @HC_CFG_IDLE_SIO_LVL(i32) #1

declare dso_local i64 @ONFI_DIN_CNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
