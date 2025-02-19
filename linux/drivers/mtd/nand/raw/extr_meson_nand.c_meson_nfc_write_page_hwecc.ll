; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_meson_nand.c_meson_nfc_write_page_hwecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_meson_nand.c_meson_nfc_write_page_hwecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.mtd_info = type { i32 }
%struct.meson_nfc_nand_chip = type { i32, i32 }

@PER_INFO_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @meson_nfc_write_page_hwecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_nfc_write_page_hwecc(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca %struct.meson_nfc_nand_chip*, align 8
  %11 = alloca i32*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %13 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %12)
  store %struct.mtd_info* %13, %struct.mtd_info** %9, align 8
  %14 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %15 = call %struct.meson_nfc_nand_chip* @to_meson_nand(%struct.nand_chip* %14)
  store %struct.meson_nfc_nand_chip* %15, %struct.meson_nfc_nand_chip** %10, align 8
  %16 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %17 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %11, align 8
  %19 = load %struct.meson_nfc_nand_chip*, %struct.meson_nfc_nand_chip** %10, align 8
  %20 = getelementptr inbounds %struct.meson_nfc_nand_chip, %struct.meson_nfc_nand_chip* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %24 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @memcpy(i32 %21, i32* %22, i32 %25)
  %27 = load %struct.meson_nfc_nand_chip*, %struct.meson_nfc_nand_chip** %10, align 8
  %28 = getelementptr inbounds %struct.meson_nfc_nand_chip, %struct.meson_nfc_nand_chip* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %31 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @PER_INFO_BYTE, align 4
  %35 = mul nsw i32 %33, %34
  %36 = call i32 @memset(i32 %29, i32 0, i32 %35)
  %37 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @meson_nfc_set_user_byte(%struct.nand_chip* %37, i32* %38)
  %40 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @meson_nfc_write_page_sub(%struct.nand_chip* %40, i32 %41, i32 0)
  ret i32 %42
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.meson_nfc_nand_chip* @to_meson_nand(%struct.nand_chip*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @meson_nfc_set_user_byte(%struct.nand_chip*, i32*) #1

declare dso_local i32 @meson_nfc_write_page_sub(%struct.nand_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
