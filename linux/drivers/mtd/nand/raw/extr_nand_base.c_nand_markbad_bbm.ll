; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_markbad_bbm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_markbad_bbm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.nand_chip.0*, i32)* }
%struct.nand_chip.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nand_markbad_bbm(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %7 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.nand_chip.0*, i32)*, i32 (%struct.nand_chip.0*, i32)** %8, align 8
  %10 = icmp ne i32 (%struct.nand_chip.0*, i32)* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.nand_chip.0*, i32)*, i32 (%struct.nand_chip.0*, i32)** %14, align 8
  %16 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %17 = bitcast %struct.nand_chip* %16 to %struct.nand_chip.0*
  %18 = load i32, i32* %5, align 4
  %19 = call i32 %15(%struct.nand_chip.0* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @nand_default_block_markbad(%struct.nand_chip* %21, i32 %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %20, %11
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @nand_default_block_markbad(%struct.nand_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
