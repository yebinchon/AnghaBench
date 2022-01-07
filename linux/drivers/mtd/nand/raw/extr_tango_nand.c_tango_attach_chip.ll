; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tango_nand.c_tango_attach_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tango_nand.c_tango_attach_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.nand_ecc_ctrl }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@NAND_ECC_HW = common dso_local global i32 0, align 4
@NAND_ECC_BCH = common dso_local global i32 0, align 4
@FIELD_ORDER = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@tango_read_page_raw = common dso_local global i32 0, align 4
@tango_write_page_raw = common dso_local global i32 0, align 4
@tango_read_page = common dso_local global i32 0, align 4
@tango_write_page = common dso_local global i32 0, align 4
@tango_read_oob = common dso_local global i32 0, align 4
@tango_write_oob = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @tango_attach_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tango_attach_chip(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  %3 = alloca %struct.nand_ecc_ctrl*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %4 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %5 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %4, i32 0, i32 0
  store %struct.nand_ecc_ctrl* %5, %struct.nand_ecc_ctrl** %3, align 8
  %6 = load i32, i32* @NAND_ECC_HW, align 4
  %7 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %3, align 8
  %8 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %7, i32 0, i32 9
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @NAND_ECC_BCH, align 4
  %10 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %3, align 8
  %11 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %10, i32 0, i32 8
  store i32 %9, i32* %11, align 4
  %12 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %3, align 8
  %13 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @FIELD_ORDER, align 4
  %16 = mul nsw i32 %14, %15
  %17 = load i32, i32* @BITS_PER_BYTE, align 4
  %18 = call i32 @DIV_ROUND_UP(i32 %16, i32 %17)
  %19 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %3, align 8
  %20 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @tango_read_page_raw, align 4
  %22 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %3, align 8
  %23 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @tango_write_page_raw, align 4
  %25 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %3, align 8
  %26 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @tango_read_page, align 4
  %28 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %3, align 8
  %29 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @tango_write_page, align 4
  %31 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %3, align 8
  %32 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @tango_read_oob, align 4
  %34 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %3, align 8
  %35 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @tango_write_oob, align 4
  %37 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %3, align 8
  %38 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  ret i32 0
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
