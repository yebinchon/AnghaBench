; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_write_page_bch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_write_page_bch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.nand_chip.0*, i32*, i32)* }
%struct.nand_chip.0 = type opaque
%struct.TYPE_3__ = type { i32, i32 (%struct.nand_chip.1*, i32)*, i32* }
%struct.nand_chip.1 = type opaque
%struct.mtd_info = type { i32, i32 }

@NAND_ECC_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @omap_write_page_bch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_write_page_bch(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %14 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %13)
  store %struct.mtd_info* %14, %struct.mtd_info** %10, align 8
  %15 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %16 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %12, align 8
  %19 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @nand_prog_page_begin_op(%struct.nand_chip* %19, i32 %20, i32 0, i32* null, i32 0)
  %22 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %23 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32 (%struct.nand_chip.1*, i32)*, i32 (%struct.nand_chip.1*, i32)** %24, align 8
  %26 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %27 = bitcast %struct.nand_chip* %26 to %struct.nand_chip.1*
  %28 = load i32, i32* @NAND_ECC_WRITE, align 4
  %29 = call i32 %25(%struct.nand_chip.1* %27, i32 %28)
  %30 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %31 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (%struct.nand_chip.0*, i32*, i32)*, i32 (%struct.nand_chip.0*, i32*, i32)** %32, align 8
  %34 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %35 = bitcast %struct.nand_chip* %34 to %struct.nand_chip.0*
  %36 = load i32*, i32** %7, align 8
  %37 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %38 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 %33(%struct.nand_chip.0* %35, i32* %36, i32 %39)
  %41 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = call i32 @omap_calculate_ecc_bch_multi(%struct.mtd_info* %41, i32* %42, i32* %44)
  %46 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %49 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %52 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @mtd_ooblayout_set_eccbytes(%struct.mtd_info* %46, i32* %47, i32* %50, i32 0, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %4
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %5, align 4
  br label %76

60:                                               ; preds = %4
  %61 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %62 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32 (%struct.nand_chip.0*, i32*, i32)*, i32 (%struct.nand_chip.0*, i32*, i32)** %63, align 8
  %65 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %66 = bitcast %struct.nand_chip* %65 to %struct.nand_chip.0*
  %67 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %68 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %71 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 %64(%struct.nand_chip.0* %66, i32* %69, i32 %72)
  %74 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %75 = call i32 @nand_prog_page_end_op(%struct.nand_chip* %74)
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %60, %58
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nand_prog_page_begin_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @omap_calculate_ecc_bch_multi(%struct.mtd_info*, i32*, i32*) #1

declare dso_local i32 @mtd_ooblayout_set_eccbytes(%struct.mtd_info*, i32*, i32*, i32, i32) #1

declare dso_local i32 @nand_prog_page_end_op(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
