; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nfc_copy_to_sram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nfc_copy_to_sram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32*, i32 }
%struct.mtd_info = type { i64, i64 }
%struct.atmel_hsmc_nand_controller = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32*, i32)* @atmel_nfc_copy_to_sram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_nfc_copy_to_sram(%struct.nand_chip* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca %struct.atmel_hsmc_nand_controller*, align 8
  %9 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %11 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %10)
  store %struct.mtd_info* %11, %struct.mtd_info** %7, align 8
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %9, align 4
  %14 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %15 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.atmel_hsmc_nand_controller* @to_hsmc_nand_controller(i32 %16)
  store %struct.atmel_hsmc_nand_controller* %17, %struct.atmel_hsmc_nand_controller** %8, align 8
  %18 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %8, align 8
  %19 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %3
  %24 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %8, align 8
  %25 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %24, i32 0, i32 1
  %26 = load i32*, i32** %5, align 8
  %27 = bitcast i32* %26 to i8*
  %28 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %8, align 8
  %29 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %33 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @DMA_TO_DEVICE, align 4
  %36 = call i32 @atmel_nand_dma_transfer(%struct.TYPE_4__* %25, i8* %27, i32 %31, i64 %34, i32 %35)
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %23, %3
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %8, align 8
  %42 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %47 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @memcpy_toio(i64 %44, i32* %45, i64 %48)
  br label %50

50:                                               ; preds = %40, %37
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %50
  %54 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %8, align 8
  %55 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %59 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %63 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %66 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @memcpy_toio(i64 %61, i32* %64, i64 %67)
  br label %69

69:                                               ; preds = %53, %50
  ret void
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.atmel_hsmc_nand_controller* @to_hsmc_nand_controller(i32) #1

declare dso_local i32 @atmel_nand_dma_transfer(%struct.TYPE_4__*, i8*, i32, i64, i32) #1

declare dso_local i32 @memcpy_toio(i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
