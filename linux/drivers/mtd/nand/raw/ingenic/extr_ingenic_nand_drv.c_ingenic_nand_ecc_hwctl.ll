; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_ingenic_nand_drv.c_ingenic_nand_ecc_hwctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_ingenic_nand_drv.c_ingenic_nand_ecc_hwctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.ingenic_nand = type { i32 }

@NAND_ECC_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32)* @ingenic_nand_ecc_hwctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ingenic_nand_ecc_hwctl(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ingenic_nand*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %7 = call i32 @nand_to_mtd(%struct.nand_chip* %6)
  %8 = call %struct.ingenic_nand* @to_ingenic_nand(i32 %7)
  store %struct.ingenic_nand* %8, %struct.ingenic_nand** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @NAND_ECC_READ, align 4
  %11 = icmp eq i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load %struct.ingenic_nand*, %struct.ingenic_nand** %5, align 8
  %14 = getelementptr inbounds %struct.ingenic_nand, %struct.ingenic_nand* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  ret void
}

declare dso_local %struct.ingenic_nand* @to_ingenic_nand(i32) #1

declare dso_local i32 @nand_to_mtd(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
