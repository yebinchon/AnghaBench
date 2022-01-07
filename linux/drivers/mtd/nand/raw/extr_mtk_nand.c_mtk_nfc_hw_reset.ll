; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_nfc = type { i64, %struct.device* }
%struct.device = type { i32 }

@CON_FIFO_FLUSH = common dso_local global i32 0, align 4
@CON_NFI_RST = common dso_local global i32 0, align 4
@NFI_CON = common dso_local global i32 0, align 4
@NFI_MASTER_STA = common dso_local global i64 0, align 8
@MASTER_STA_MASK = common dso_local global i32 0, align 4
@MTK_RESET_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"master active in reset [0x%x] = 0x%x\0A\00", align 1
@STAR_DE = common dso_local global i32 0, align 4
@NFI_STRDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_nfc*)* @mtk_nfc_hw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_nfc_hw_reset(%struct.mtk_nfc* %0) #0 {
  %2 = alloca %struct.mtk_nfc*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtk_nfc* %0, %struct.mtk_nfc** %2, align 8
  %6 = load %struct.mtk_nfc*, %struct.mtk_nfc** %2, align 8
  %7 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %6, i32 0, i32 1
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %3, align 8
  %9 = load %struct.mtk_nfc*, %struct.mtk_nfc** %2, align 8
  %10 = load i32, i32* @CON_FIFO_FLUSH, align 4
  %11 = load i32, i32* @CON_NFI_RST, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @NFI_CON, align 4
  %14 = call i32 @nfi_writel(%struct.mtk_nfc* %9, i32 %12, i32 %13)
  %15 = load %struct.mtk_nfc*, %struct.mtk_nfc** %2, align 8
  %16 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NFI_MASTER_STA, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MASTER_STA_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* @MTK_RESET_TIMEOUT, align 4
  %28 = call i32 @readl_poll_timeout(i64 %19, i32 %20, i32 %26, i32 50, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = load i64, i64* @NFI_MASTER_STA, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @dev_warn(%struct.device* %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %1
  %37 = load %struct.mtk_nfc*, %struct.mtk_nfc** %2, align 8
  %38 = load i32, i32* @CON_FIFO_FLUSH, align 4
  %39 = load i32, i32* @CON_NFI_RST, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @NFI_CON, align 4
  %42 = call i32 @nfi_writel(%struct.mtk_nfc* %37, i32 %40, i32 %41)
  %43 = load %struct.mtk_nfc*, %struct.mtk_nfc** %2, align 8
  %44 = load i32, i32* @STAR_DE, align 4
  %45 = load i32, i32* @NFI_STRDATA, align 4
  %46 = call i32 @nfi_writew(%struct.mtk_nfc* %43, i32 %44, i32 %45)
  ret void
}

declare dso_local i32 @nfi_writel(%struct.mtk_nfc*, i32, i32) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i64, i32) #1

declare dso_local i32 @nfi_writew(%struct.mtk_nfc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
