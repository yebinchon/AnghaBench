; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_ingenic_nand_drv.c_ingenic_nand_select_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_ingenic_nand_drv.c_ingenic_nand_select_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.ingenic_nand = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ingenic_nfc = type { i64, i32, %struct.ingenic_nand_cs* }
%struct.ingenic_nand_cs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32)* @ingenic_nand_select_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ingenic_nand_select_chip(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ingenic_nand*, align 8
  %6 = alloca %struct.ingenic_nfc*, align 8
  %7 = alloca %struct.ingenic_nand_cs*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %9 = call i32 @nand_to_mtd(%struct.nand_chip* %8)
  %10 = call %struct.ingenic_nand* @to_ingenic_nand(i32 %9)
  store %struct.ingenic_nand* %10, %struct.ingenic_nand** %5, align 8
  %11 = load %struct.ingenic_nand*, %struct.ingenic_nand** %5, align 8
  %12 = getelementptr inbounds %struct.ingenic_nand, %struct.ingenic_nand* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ingenic_nfc* @to_ingenic_nfc(i32 %14)
  store %struct.ingenic_nfc* %15, %struct.ingenic_nfc** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %38

18:                                               ; preds = %2
  %19 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %6, align 8
  %20 = getelementptr inbounds %struct.ingenic_nfc, %struct.ingenic_nfc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp uge i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %6, align 8
  %25 = getelementptr inbounds %struct.ingenic_nfc, %struct.ingenic_nfc* %24, i32 0, i32 2
  %26 = load %struct.ingenic_nand_cs*, %struct.ingenic_nand_cs** %25, align 8
  %27 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %6, align 8
  %28 = getelementptr inbounds %struct.ingenic_nfc, %struct.ingenic_nfc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.ingenic_nand_cs, %struct.ingenic_nand_cs* %26, i64 %29
  store %struct.ingenic_nand_cs* %30, %struct.ingenic_nand_cs** %7, align 8
  %31 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %6, align 8
  %32 = getelementptr inbounds %struct.ingenic_nfc, %struct.ingenic_nfc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ingenic_nand_cs*, %struct.ingenic_nand_cs** %7, align 8
  %35 = getelementptr inbounds %struct.ingenic_nand_cs, %struct.ingenic_nand_cs* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @jz4780_nemc_assert(i32 %33, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %23, %18, %2
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = load %struct.ingenic_nfc*, %struct.ingenic_nfc** %6, align 8
  %42 = getelementptr inbounds %struct.ingenic_nfc, %struct.ingenic_nfc* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  ret void
}

declare dso_local %struct.ingenic_nand* @to_ingenic_nand(i32) #1

declare dso_local i32 @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.ingenic_nfc* @to_ingenic_nfc(i32) #1

declare dso_local i32 @jz4780_nemc_assert(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
