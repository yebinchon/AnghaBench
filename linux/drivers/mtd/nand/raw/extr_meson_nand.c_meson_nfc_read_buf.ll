; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_meson_nand.c_meson_nfc_read_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_meson_nand.c_meson_nfc_read_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.meson_nfc = type { i64 }

@PER_INFO_BYTE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@NFC_CMD_N2M = common dso_local global i32 0, align 4
@NFC_REG_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32)* @meson_nfc_read_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_nfc_read_buf(%struct.nand_chip* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.meson_nfc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %13 = call %struct.meson_nfc* @nand_get_controller_data(%struct.nand_chip* %12)
  store %struct.meson_nfc* %13, %struct.meson_nfc** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @PER_INFO_BYTE, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32* @kzalloc(i32 %14, i32 %15)
  store i32* %16, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %59

22:                                               ; preds = %3
  %23 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* @PER_INFO_BYTE, align 4
  %28 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %29 = call i32 @meson_nfc_dma_buffer_setup(%struct.nand_chip* %23, i32* %24, i32 %25, i32* %26, i32 %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %55

33:                                               ; preds = %22
  %34 = load i32, i32* @NFC_CMD_N2M, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @GENMASK(i32 5, i32 0)
  %37 = and i32 %35, %36
  %38 = or i32 %34, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.meson_nfc*, %struct.meson_nfc** %8, align 8
  %41 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NFC_REG_CMD, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
  %46 = load %struct.meson_nfc*, %struct.meson_nfc** %8, align 8
  %47 = call i32 @meson_nfc_drain_cmd(%struct.meson_nfc* %46)
  %48 = load %struct.meson_nfc*, %struct.meson_nfc** %8, align 8
  %49 = call i32 @meson_nfc_wait_cmd_finish(%struct.meson_nfc* %48, i32 1000)
  %50 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @PER_INFO_BYTE, align 4
  %53 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %54 = call i32 @meson_nfc_dma_buffer_release(%struct.nand_chip* %50, i32 %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %33, %32
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @kfree(i32* %56)
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %55, %19
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.meson_nfc* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @meson_nfc_dma_buffer_setup(%struct.nand_chip*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @meson_nfc_drain_cmd(%struct.meson_nfc*) #1

declare dso_local i32 @meson_nfc_wait_cmd_finish(%struct.meson_nfc*, i32) #1

declare dso_local i32 @meson_nfc_dma_buffer_release(%struct.nand_chip*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
