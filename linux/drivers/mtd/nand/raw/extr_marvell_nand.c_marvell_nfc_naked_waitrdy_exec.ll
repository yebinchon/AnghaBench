; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_naked_waitrdy_exec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_naked_waitrdy_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.nand_subop = type { i32 }
%struct.marvell_nfc_op = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, %struct.nand_subop*)* @marvell_nfc_naked_waitrdy_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_nfc_naked_waitrdy_exec(%struct.nand_chip* %0, %struct.nand_subop* %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.nand_subop*, align 8
  %5 = alloca %struct.marvell_nfc_op, align 4
  %6 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store %struct.nand_subop* %1, %struct.nand_subop** %4, align 8
  %7 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %8 = load %struct.nand_subop*, %struct.nand_subop** %4, align 8
  %9 = call i32 @marvell_nfc_parse_instructions(%struct.nand_chip* %7, %struct.nand_subop* %8, %struct.marvell_nfc_op* %5)
  %10 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %11 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %5, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @marvell_nfc_wait_op(%struct.nand_chip* %10, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %5, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @cond_delay(i32 %15)
  %17 = load i32, i32* %6, align 4
  ret i32 %17
}

declare dso_local i32 @marvell_nfc_parse_instructions(%struct.nand_chip*, %struct.nand_subop*, %struct.marvell_nfc_op*) #1

declare dso_local i32 @marvell_nfc_wait_op(%struct.nand_chip*, i32) #1

declare dso_local i32 @cond_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
