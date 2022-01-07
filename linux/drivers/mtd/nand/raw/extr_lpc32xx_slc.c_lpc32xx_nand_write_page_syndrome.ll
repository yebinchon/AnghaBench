; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_slc.c_lpc32xx_nand_write_page_syndrome.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_slc.c_lpc32xx_nand_write_page_syndrome.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.nand_chip.0*, i32*, i32)* }
%struct.nand_chip.0 = type opaque
%struct.TYPE_3__ = type { i32 }
%struct.mtd_info = type { i32 }
%struct.lpc32xx_nand_host = type { i64 }
%struct.mtd_oob_region = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @lpc32xx_nand_write_page_syndrome to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_nand_write_page_syndrome(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca %struct.lpc32xx_nand_host*, align 8
  %12 = alloca %struct.mtd_oob_region, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %16 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %15)
  store %struct.mtd_info* %16, %struct.mtd_info** %10, align 8
  %17 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %18 = call %struct.lpc32xx_nand_host* @nand_get_controller_data(%struct.nand_chip* %17)
  store %struct.lpc32xx_nand_host* %18, %struct.lpc32xx_nand_host** %11, align 8
  %19 = bitcast %struct.mtd_oob_region* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 4, i1 false)
  %20 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @nand_prog_page_begin_op(%struct.nand_chip* %20, i32 %21, i32 0, i32* null, i32 0)
  %23 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %26 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @lpc32xx_xfer(%struct.mtd_info* %23, i32* %24, i32 %28, i32 0)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %5, align 4
  br label %74

34:                                               ; preds = %4
  %35 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %36 = call i32 @mtd_ooblayout_ecc(%struct.mtd_info* %35, i32 0, %struct.mtd_oob_region* %12)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %5, align 4
  br label %74

41:                                               ; preds = %34
  %42 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %43 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %12, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  store i32* %48, i32** %13, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %51 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i32*
  %54 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %55 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @lpc32xx_slc_ecc_copy(i32* %49, i32* %53, i32 %57)
  %59 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %60 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32 (%struct.nand_chip.0*, i32*, i32)*, i32 (%struct.nand_chip.0*, i32*, i32)** %61, align 8
  %63 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %64 = bitcast %struct.nand_chip* %63 to %struct.nand_chip.0*
  %65 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %66 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %69 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 %62(%struct.nand_chip.0* %64, i32* %67, i32 %70)
  %72 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %73 = call i32 @nand_prog_page_end_op(%struct.nand_chip* %72)
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %41, %39, %32
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.lpc32xx_nand_host* @nand_get_controller_data(%struct.nand_chip*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @nand_prog_page_begin_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @lpc32xx_xfer(%struct.mtd_info*, i32*, i32, i32) #1

declare dso_local i32 @mtd_ooblayout_ecc(%struct.mtd_info*, i32, %struct.mtd_oob_region*) #1

declare dso_local i32 @lpc32xx_slc_ecc_copy(i32*, i32*, i32) #1

declare dso_local i32 @nand_prog_page_end_op(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
