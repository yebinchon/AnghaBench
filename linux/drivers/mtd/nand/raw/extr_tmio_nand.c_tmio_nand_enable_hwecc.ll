; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tmio_nand.c_tmio_nand_enable_hwecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tmio_nand.c_tmio_nand_enable_hwecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.tmio_nand = type { i64 }

@FCR_MODE_HWECC_RESET = common dso_local global i32 0, align 4
@FCR_MODE = common dso_local global i64 0, align 8
@FCR_DATA = common dso_local global i64 0, align 8
@FCR_MODE_HWECC_CALC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32)* @tmio_nand_enable_hwecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmio_nand_enable_hwecc(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tmio_nand*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %7 = call i32 @nand_to_mtd(%struct.nand_chip* %6)
  %8 = call %struct.tmio_nand* @mtd_to_tmio(i32 %7)
  store %struct.tmio_nand* %8, %struct.tmio_nand** %5, align 8
  %9 = load i32, i32* @FCR_MODE_HWECC_RESET, align 4
  %10 = load %struct.tmio_nand*, %struct.tmio_nand** %5, align 8
  %11 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @FCR_MODE, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @tmio_iowrite8(i32 %9, i64 %14)
  %16 = load %struct.tmio_nand*, %struct.tmio_nand** %5, align 8
  %17 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FCR_DATA, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @tmio_ioread8(i64 %20)
  %22 = load i32, i32* @FCR_MODE_HWECC_CALC, align 4
  %23 = load %struct.tmio_nand*, %struct.tmio_nand** %5, align 8
  %24 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @FCR_MODE, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @tmio_iowrite8(i32 %22, i64 %27)
  ret void
}

declare dso_local %struct.tmio_nand* @mtd_to_tmio(i32) #1

declare dso_local i32 @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @tmio_iowrite8(i32, i64) #1

declare dso_local i32 @tmio_ioread8(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
