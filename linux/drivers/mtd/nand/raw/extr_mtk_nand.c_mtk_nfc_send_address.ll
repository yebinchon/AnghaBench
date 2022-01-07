; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_send_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_send_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_nfc = type { i64, %struct.device* }
%struct.device = type { i32 }

@NFI_COLADDR = common dso_local global i32 0, align 4
@NFI_ROWADDR = common dso_local global i32 0, align 4
@NFI_ADDRNOB = common dso_local global i32 0, align 4
@NFI_STA = common dso_local global i64 0, align 8
@STA_ADDR = common dso_local global i32 0, align 4
@MTK_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"nfi core timed out entering address mode\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_nfc*, i32)* @mtk_nfc_send_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_nfc_send_address(%struct.mtk_nfc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_nfc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mtk_nfc* %0, %struct.mtk_nfc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.mtk_nfc*, %struct.mtk_nfc** %4, align 8
  %10 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %9, i32 0, i32 1
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.mtk_nfc*, %struct.mtk_nfc** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @NFI_COLADDR, align 4
  %15 = call i32 @nfi_writel(%struct.mtk_nfc* %12, i32 %13, i32 %14)
  %16 = load %struct.mtk_nfc*, %struct.mtk_nfc** %4, align 8
  %17 = load i32, i32* @NFI_ROWADDR, align 4
  %18 = call i32 @nfi_writel(%struct.mtk_nfc* %16, i32 0, i32 %17)
  %19 = load %struct.mtk_nfc*, %struct.mtk_nfc** %4, align 8
  %20 = load i32, i32* @NFI_ADDRNOB, align 4
  %21 = call i32 @nfi_writew(%struct.mtk_nfc* %19, i32 1, i32 %20)
  %22 = load %struct.mtk_nfc*, %struct.mtk_nfc** %4, align 8
  %23 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NFI_STA, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @STA_ADDR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* @MTK_TIMEOUT, align 4
  %35 = call i32 @readl_poll_timeout_atomic(i64 %26, i32 %27, i32 %33, i32 10, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %2
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = call i32 @dev_warn(%struct.device* %39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %44

43:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %38
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @nfi_writel(%struct.mtk_nfc*, i32, i32) #1

declare dso_local i32 @nfi_writew(%struct.mtk_nfc*, i32, i32) #1

declare dso_local i32 @readl_poll_timeout_atomic(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
