; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_dma_op_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_dma_op_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_nfc = type { i64, i32 }
%struct.scatterlist = type { i32 }

@NFC_REG_CTL = common dso_local global i64 0, align 8
@NFC_RAM_METHOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sunxi_nfc*, i32, %struct.scatterlist*)* @sunxi_nfc_dma_op_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_nfc_dma_op_cleanup(%struct.sunxi_nfc* %0, i32 %1, %struct.scatterlist* %2) #0 {
  %4 = alloca %struct.sunxi_nfc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scatterlist*, align 8
  store %struct.sunxi_nfc* %0, %struct.sunxi_nfc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.scatterlist* %2, %struct.scatterlist** %6, align 8
  %7 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %4, align 8
  %8 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @dma_unmap_sg(i32 %9, %struct.scatterlist* %10, i32 1, i32 %11)
  %13 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %4, align 8
  %14 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NFC_REG_CTL, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  %19 = load i32, i32* @NFC_RAM_METHOD, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %4, align 8
  %23 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NFC_REG_CTL, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %21, i64 %26)
  ret void
}

declare dso_local i32 @dma_unmap_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
