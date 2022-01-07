; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_slc.c_lpc32xx_nand_write_page_raw_syndrome.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_slc.c_lpc32xx_nand_write_page_raw_syndrome.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.nand_chip.0*, i32, i32)* }
%struct.nand_chip.0 = type opaque
%struct.TYPE_3__ = type { i32, i32 }
%struct.mtd_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @lpc32xx_nand_write_page_raw_syndrome to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_nand_write_page_raw_syndrome(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtd_info*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %11 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %10)
  store %struct.mtd_info* %11, %struct.mtd_info** %9, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %16 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %20 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %18, %22
  %24 = call i32 @nand_prog_page_begin_op(%struct.nand_chip* %12, i32 %13, i32 0, i32* %14, i32 %23)
  %25 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %26 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32 (%struct.nand_chip.0*, i32, i32)*, i32 (%struct.nand_chip.0*, i32, i32)** %27, align 8
  %29 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %30 = bitcast %struct.nand_chip* %29 to %struct.nand_chip.0*
  %31 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %32 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %35 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 %28(%struct.nand_chip.0* %30, i32 %33, i32 %36)
  %38 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %39 = call i32 @nand_prog_page_end_op(%struct.nand_chip* %38)
  ret i32 %39
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nand_prog_page_begin_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @nand_prog_page_end_op(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
