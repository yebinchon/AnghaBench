; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_ingenic_nand_drv.c_ingenic_nand_ecc_calculate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_ingenic_nand_drv.c_ingenic_nand_ecc_calculate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.ingenic_nand = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.ingenic_nfc = type { i32 }
%struct.ingenic_ecc_params = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32*)* @ingenic_nand_ecc_calculate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingenic_nand_ecc_calculate(%struct.nand_chip* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ingenic_nand*, align 8
  %9 = alloca %struct.ingenic_nfc*, align 8
  %10 = alloca %struct.ingenic_ecc_params, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %12 = call i32 @nand_to_mtd(%struct.nand_chip* %11)
  %13 = call %struct.ingenic_nand* @to_ingenic_nand(i32 %12)
  store %struct.ingenic_nand* %13, %struct.ingenic_nand** %8, align 8
  %14 = load %struct.ingenic_nand*, %struct.ingenic_nand** %8, align 8
  %15 = getelementptr inbounds %struct.ingenic_nand, %struct.ingenic_nand* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.ingenic_nfc* @to_ingenic_nfc(i32 %17)
  store %struct.ingenic_nfc* %18, %struct.ingenic_nfc** %9, align 8
  %19 = load %struct.ingenic_nand*, %struct.ingenic_nand** %8, align 8
  %20 = getelementptr inbounds %struct.ingenic_nand, %struct.ingenic_nand* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %49

24:                                               ; preds = %3
  %25 = load %struct.ingenic_nand*, %struct.ingenic_nand** %8, align 8
  %26 = getelementptr inbounds %struct.ingenic_nand, %struct.ingenic_nand* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.ingenic_ecc_params, %struct.ingenic_ecc_params* %10, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = load %struct.ingenic_nand*, %struct.ingenic_nand** %8, align 8
  %32 = getelementptr inbounds %struct.ingenic_nand, %struct.ingenic_nand* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.ingenic_ecc_params, %struct.ingenic_ecc_params* %10, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load %struct.ingenic_nand*, %struct.ingenic_nand** %8, align 8
  %38 = getelementptr inbounds %struct.ingenic_nand, %struct.ingenic_nand* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.ingenic_ecc_params, %struct.ingenic_ecc_params* %10, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %9, align 8
  %44 = getelementptr inbounds %struct.ingenic_nfc, %struct.ingenic_nfc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @ingenic_ecc_calculate(i32 %45, %struct.ingenic_ecc_params* %10, i32* %46, i32* %47)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %24, %23
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.ingenic_nand* @to_ingenic_nand(i32) #1

declare dso_local i32 @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.ingenic_nfc* @to_ingenic_nfc(i32) #1

declare dso_local i32 @ingenic_ecc_calculate(i32, %struct.ingenic_ecc_params*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
