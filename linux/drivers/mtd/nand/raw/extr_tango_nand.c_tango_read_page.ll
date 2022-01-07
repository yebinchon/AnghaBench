; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tango_nand.c_tango_read_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tango_nand.c_tango_read_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nand_chip.0*, i32)*, i32 (%struct.nand_chip.1*, i32)* }
%struct.nand_chip.0 = type opaque
%struct.nand_chip.1 = type opaque
%struct.mtd_info = type { i32 }
%struct.tango_nfc = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@NFC_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @tango_read_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tango_read_page(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca %struct.tango_nfc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %16 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %15)
  store %struct.mtd_info* %16, %struct.mtd_info** %10, align 8
  %17 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %18 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.tango_nfc* @to_tango_nfc(i32 %19)
  store %struct.tango_nfc* %20, %struct.tango_nfc** %11, align 8
  %21 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %22 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %4
  %27 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %28 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32 (%struct.nand_chip.1*, i32)*, i32 (%struct.nand_chip.1*, i32)** %29, align 8
  %31 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %32 = bitcast %struct.nand_chip* %31 to %struct.nand_chip.1*
  %33 = load i32, i32* %9, align 4
  %34 = call i32 %30(%struct.nand_chip.1* %32, i32 %33)
  br label %35

35:                                               ; preds = %26, %4
  %36 = load %struct.tango_nfc*, %struct.tango_nfc** %11, align 8
  %37 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %38 = load i32, i32* @NFC_READ, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @do_dma(%struct.tango_nfc* %36, i32 %37, i32 %38, i32* %39, i32 %40, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %5, align 4
  br label %66

47:                                               ; preds = %35
  %48 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %49 = call i32 @decode_error_report(%struct.nand_chip* %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %54 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32 (%struct.nand_chip.0*, i32)*, i32 (%struct.nand_chip.0*, i32)** %55, align 8
  %57 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %58 = bitcast %struct.nand_chip* %57 to %struct.nand_chip.0*
  %59 = load i32, i32* %9, align 4
  %60 = call i32 %56(%struct.nand_chip.0* %58, i32 %59)
  %61 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @check_erased_page(%struct.nand_chip* %61, i32* %62)
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %52, %47
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %64, %45
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.tango_nfc* @to_tango_nfc(i32) #1

declare dso_local i32 @do_dma(%struct.tango_nfc*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @decode_error_report(%struct.nand_chip*) #1

declare dso_local i32 @check_erased_page(%struct.nand_chip*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
