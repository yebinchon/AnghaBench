; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tmio_nand.c_tmio_nand_calculate_ecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tmio_nand.c_tmio_nand_calculate_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.tmio_nand = type { i64 }

@FCR_MODE_HWECC_RESULT = common dso_local global i32 0, align 4
@FCR_MODE = common dso_local global i64 0, align 8
@FCR_DATA = common dso_local global i64 0, align 8
@FCR_MODE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32*)* @tmio_nand_calculate_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmio_nand_calculate_ecc(%struct.nand_chip* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.tmio_nand*, align 8
  %8 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %10 = call i32 @nand_to_mtd(%struct.nand_chip* %9)
  %11 = call %struct.tmio_nand* @mtd_to_tmio(i32 %10)
  store %struct.tmio_nand* %11, %struct.tmio_nand** %7, align 8
  %12 = load i32, i32* @FCR_MODE_HWECC_RESULT, align 4
  %13 = load %struct.tmio_nand*, %struct.tmio_nand** %7, align 8
  %14 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @FCR_MODE, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @tmio_iowrite8(i32 %12, i64 %17)
  %19 = load %struct.tmio_nand*, %struct.tmio_nand** %7, align 8
  %20 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FCR_DATA, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @tmio_ioread16(i64 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = lshr i32 %28, 8
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.tmio_nand*, %struct.tmio_nand** %7, align 8
  %33 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @FCR_DATA, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @tmio_ioread16(i64 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %8, align 4
  %42 = lshr i32 %41, 8
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.tmio_nand*, %struct.tmio_nand** %7, align 8
  %46 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @FCR_DATA, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @tmio_ioread16(i64 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %8, align 4
  %55 = lshr i32 %54, 8
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 5
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @FCR_MODE_DATA, align 4
  %59 = load %struct.tmio_nand*, %struct.tmio_nand** %7, align 8
  %60 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @FCR_MODE, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @tmio_iowrite8(i32 %58, i64 %63)
  ret i32 0
}

declare dso_local %struct.tmio_nand* @mtd_to_tmio(i32) #1

declare dso_local i32 @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @tmio_iowrite8(i32, i64) #1

declare dso_local i32 @tmio_ioread16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
