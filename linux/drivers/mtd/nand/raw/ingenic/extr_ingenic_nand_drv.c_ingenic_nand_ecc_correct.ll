; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_ingenic_nand_drv.c_ingenic_nand_ecc_correct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_ingenic_nand_drv.c_ingenic_nand_ecc_correct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.ingenic_nand = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.ingenic_nfc = type { i32 }
%struct.ingenic_ecc_params = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32*, i32*)* @ingenic_nand_ecc_correct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingenic_nand_ecc_correct(%struct.nand_chip* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ingenic_nand*, align 8
  %10 = alloca %struct.ingenic_nfc*, align 8
  %11 = alloca %struct.ingenic_ecc_params, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %13 = call i32 @nand_to_mtd(%struct.nand_chip* %12)
  %14 = call %struct.ingenic_nand* @to_ingenic_nand(i32 %13)
  store %struct.ingenic_nand* %14, %struct.ingenic_nand** %9, align 8
  %15 = load %struct.ingenic_nand*, %struct.ingenic_nand** %9, align 8
  %16 = getelementptr inbounds %struct.ingenic_nand, %struct.ingenic_nand* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.ingenic_nfc* @to_ingenic_nfc(i32 %18)
  store %struct.ingenic_nfc* %19, %struct.ingenic_nfc** %10, align 8
  %20 = load %struct.ingenic_nand*, %struct.ingenic_nand** %9, align 8
  %21 = getelementptr inbounds %struct.ingenic_nand, %struct.ingenic_nand* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.ingenic_ecc_params, %struct.ingenic_ecc_params* %11, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = load %struct.ingenic_nand*, %struct.ingenic_nand** %9, align 8
  %27 = getelementptr inbounds %struct.ingenic_nand, %struct.ingenic_nand* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.ingenic_ecc_params, %struct.ingenic_ecc_params* %11, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.ingenic_nand*, %struct.ingenic_nand** %9, align 8
  %33 = getelementptr inbounds %struct.ingenic_nand, %struct.ingenic_nand* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.ingenic_ecc_params, %struct.ingenic_ecc_params* %11, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %10, align 8
  %39 = getelementptr inbounds %struct.ingenic_nfc, %struct.ingenic_nfc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @ingenic_ecc_correct(i32 %40, %struct.ingenic_ecc_params* %11, i32* %41, i32* %42)
  ret i32 %43
}

declare dso_local %struct.ingenic_nand* @to_ingenic_nand(i32) #1

declare dso_local i32 @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.ingenic_nfc* @to_ingenic_nfc(i32) #1

declare dso_local i32 @ingenic_ecc_correct(i32, %struct.ingenic_ecc_params*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
