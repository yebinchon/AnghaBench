; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_hsmc_nand_dev_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_hsmc_nand_dev_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.atmel_nand = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.atmel_hsmc_nand_controller = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ATMEL_HSMC_NFC_SR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @atmel_hsmc_nand_dev_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_hsmc_nand_dev_ready(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  %3 = alloca %struct.atmel_nand*, align 8
  %4 = alloca %struct.atmel_hsmc_nand_controller*, align 8
  %5 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %6 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %7 = call %struct.atmel_nand* @to_atmel_nand(%struct.nand_chip* %6)
  store %struct.atmel_nand* %7, %struct.atmel_nand** %3, align 8
  %8 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %9 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.atmel_hsmc_nand_controller* @to_hsmc_nand_controller(i32 %10)
  store %struct.atmel_hsmc_nand_controller* %11, %struct.atmel_hsmc_nand_controller** %4, align 8
  %12 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %4, align 8
  %13 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ATMEL_HSMC_NFC_SR, align 4
  %17 = call i32 @regmap_read(i32 %15, i32 %16, i32* %5)
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.atmel_nand*, %struct.atmel_nand** %3, align 8
  %20 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ATMEL_HSMC_NFC_SR_RBEDGE(i32 %24)
  %26 = and i32 %18, %25
  ret i32 %26
}

declare dso_local %struct.atmel_nand* @to_atmel_nand(%struct.nand_chip*) #1

declare dso_local %struct.atmel_hsmc_nand_controller* @to_hsmc_nand_controller(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @ATMEL_HSMC_NFC_SR_RBEDGE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
