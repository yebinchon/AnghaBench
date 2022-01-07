; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_hsmc_nand_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_hsmc_nand_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_nand_controller = type { i32 }
%struct.atmel_nand = type { %struct.nand_chip }
%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@atmel_hsmc_nand_cmd_ctrl = common dso_local global i32 0, align 4
@atmel_hsmc_nand_select_chip = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_nand_controller*, %struct.atmel_nand*)* @atmel_hsmc_nand_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_hsmc_nand_init(%struct.atmel_nand_controller* %0, %struct.atmel_nand* %1) #0 {
  %3 = alloca %struct.atmel_nand_controller*, align 8
  %4 = alloca %struct.atmel_nand*, align 8
  %5 = alloca %struct.nand_chip*, align 8
  store %struct.atmel_nand_controller* %0, %struct.atmel_nand_controller** %3, align 8
  store %struct.atmel_nand* %1, %struct.atmel_nand** %4, align 8
  %6 = load %struct.atmel_nand*, %struct.atmel_nand** %4, align 8
  %7 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %6, i32 0, i32 0
  store %struct.nand_chip* %7, %struct.nand_chip** %5, align 8
  %8 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %3, align 8
  %9 = load %struct.atmel_nand*, %struct.atmel_nand** %4, align 8
  %10 = call i32 @atmel_nand_init(%struct.atmel_nand_controller* %8, %struct.atmel_nand* %9)
  %11 = load i32, i32* @atmel_hsmc_nand_cmd_ctrl, align 4
  %12 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @atmel_hsmc_nand_select_chip, align 4
  %16 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %17 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  ret void
}

declare dso_local i32 @atmel_nand_init(%struct.atmel_nand_controller*, %struct.atmel_nand*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
