; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_deselect_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_deselect_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.nand_chip.0*, i32)* }
%struct.nand_chip.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nand_deselect_target(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %3 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %4 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32 (%struct.nand_chip.0*, i32)*, i32 (%struct.nand_chip.0*, i32)** %5, align 8
  %7 = icmp ne i32 (%struct.nand_chip.0*, i32)* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %10 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.nand_chip.0*, i32)*, i32 (%struct.nand_chip.0*, i32)** %11, align 8
  %13 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %14 = bitcast %struct.nand_chip* %13 to %struct.nand_chip.0*
  %15 = call i32 %12(%struct.nand_chip.0* %14, i32 -1)
  br label %16

16:                                               ; preds = %8, %1
  %17 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %18 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %17, i32 0, i32 0
  store i32 -1, i32* %18, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
