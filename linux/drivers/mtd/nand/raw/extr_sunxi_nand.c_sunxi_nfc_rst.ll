; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_rst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_rst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_nfc = type { i32, i64 }

@NFC_REG_ECC_CTL = common dso_local global i64 0, align 8
@NFC_RESET = common dso_local global i32 0, align 4
@NFC_REG_CTL = common dso_local global i64 0, align 8
@NFC_DEFAULT_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"wait for NAND controller reset timedout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sunxi_nfc*)* @sunxi_nfc_rst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_nfc_rst(%struct.sunxi_nfc* %0) #0 {
  %2 = alloca %struct.sunxi_nfc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sunxi_nfc* %0, %struct.sunxi_nfc** %2, align 8
  %5 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %2, align 8
  %6 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NFC_REG_ECC_CTL, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @writel(i32 0, i64 %9)
  %11 = load i32, i32* @NFC_RESET, align 4
  %12 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %2, align 8
  %13 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NFC_REG_CTL, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i32 %11, i64 %16)
  %18 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %2, align 8
  %19 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NFC_REG_CTL, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @NFC_RESET, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* @NFC_DEFAULT_TIMEOUT_MS, align 4
  %31 = mul nsw i32 %30, 1000
  %32 = call i32 @readl_poll_timeout(i64 %22, i32 %23, i32 %29, i32 1, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %1
  %36 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %2, align 8
  %37 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %35, %1
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
