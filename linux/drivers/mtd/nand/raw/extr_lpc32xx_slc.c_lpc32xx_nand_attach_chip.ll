; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_slc.c_lpc32xx_nand_attach_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_slc.c_lpc32xx_nand_attach_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i32 }
%struct.mtd_info = type { i32 }
%struct.lpc32xx_nand_host = type { i64, i32* }

@LPC32XX_DMA_DATA_SIZE = common dso_local global i64 0, align 8
@lpc32xx_ooblayout_ops = common dso_local global i32 0, align 4
@LPC32XX_SLC_DEV_ECC_BYTES = common dso_local global i32 0, align 4
@NAND_BBT_USE_FLASH = common dso_local global i32 0, align 4
@bbt_smallpage_main_descr = common dso_local global i32 0, align 4
@bbt_smallpage_mirror_descr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @lpc32xx_nand_attach_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_nand_attach_chip(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.lpc32xx_nand_host*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %5 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %6 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %5)
  store %struct.mtd_info* %6, %struct.mtd_info** %3, align 8
  %7 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %8 = call %struct.lpc32xx_nand_host* @nand_get_controller_data(%struct.nand_chip* %7)
  store %struct.lpc32xx_nand_host* %8, %struct.lpc32xx_nand_host** %4, align 8
  %9 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %10 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @LPC32XX_DMA_DATA_SIZE, align 8
  %13 = add nsw i64 %11, %12
  %14 = inttoptr i64 %13 to i32*
  %15 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %16 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %15, i32 0, i32 1
  store i32* %14, i32** %16, align 8
  %17 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %18 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sle i32 %19, 512
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %23 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %22, i32* @lpc32xx_ooblayout_ops)
  br label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %26 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 256, i32* %27, align 8
  %28 = load i32, i32* @LPC32XX_SLC_DEV_ECC_BYTES, align 4
  %29 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %30 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 8
  %32 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %33 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %36 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %39 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @NAND_BBT_USE_FLASH, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %24
  %45 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %46 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sle i32 %47, 512
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %51 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %50, i32 0, i32 2
  store i32* @bbt_smallpage_main_descr, i32** %51, align 8
  %52 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %53 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %52, i32 0, i32 1
  store i32* @bbt_smallpage_mirror_descr, i32** %53, align 8
  br label %54

54:                                               ; preds = %49, %44, %24
  ret i32 0
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.lpc32xx_nand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @mtd_set_ooblayout(%struct.mtd_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
