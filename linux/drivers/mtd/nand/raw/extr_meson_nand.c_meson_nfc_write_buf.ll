; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_meson_nand.c_meson_nfc_write_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_meson_nand.c_meson_nfc_write_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.meson_nfc = type { i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@NFC_CMD_M2N = common dso_local global i32 0, align 4
@NFC_REG_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32)* @meson_nfc_write_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_nfc_write_buf(%struct.nand_chip* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.meson_nfc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %12 = call %struct.meson_nfc* @nand_get_controller_data(%struct.nand_chip* %11)
  store %struct.meson_nfc* %12, %struct.meson_nfc** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @DMA_TO_DEVICE, align 4
  %17 = call i32 @meson_nfc_dma_buffer_setup(%struct.nand_chip* %13, i32* %14, i32 %15, i32* null, i32 0, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %4, align 4
  br label %44

22:                                               ; preds = %3
  %23 = load i32, i32* @NFC_CMD_M2N, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @GENMASK(i32 5, i32 0)
  %26 = and i32 %24, %25
  %27 = or i32 %23, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.meson_nfc*, %struct.meson_nfc** %8, align 8
  %30 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NFC_REG_CMD, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %28, i64 %33)
  %35 = load %struct.meson_nfc*, %struct.meson_nfc** %8, align 8
  %36 = call i32 @meson_nfc_drain_cmd(%struct.meson_nfc* %35)
  %37 = load %struct.meson_nfc*, %struct.meson_nfc** %8, align 8
  %38 = call i32 @meson_nfc_wait_cmd_finish(%struct.meson_nfc* %37, i32 1000)
  %39 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @DMA_TO_DEVICE, align 4
  %42 = call i32 @meson_nfc_dma_buffer_release(%struct.nand_chip* %39, i32 %40, i32 0, i32 %41)
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %22, %20
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.meson_nfc* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @meson_nfc_dma_buffer_setup(%struct.nand_chip*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @meson_nfc_drain_cmd(%struct.meson_nfc*) #1

declare dso_local i32 @meson_nfc_wait_cmd_finish(%struct.meson_nfc*, i32) #1

declare dso_local i32 @meson_nfc_dma_buffer_release(%struct.nand_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
