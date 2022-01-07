; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_micron.c_micron_nand_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_micron.c_micron_nand_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.micron_nand = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.micron_nand* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*)* @micron_nand_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @micron_nand_cleanup(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  %3 = alloca %struct.micron_nand*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %4 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %5 = call %struct.micron_nand* @nand_get_manufacturer_data(%struct.nand_chip* %4)
  store %struct.micron_nand* %5, %struct.micron_nand** %3, align 8
  %6 = load %struct.micron_nand*, %struct.micron_nand** %3, align 8
  %7 = getelementptr inbounds %struct.micron_nand, %struct.micron_nand* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.micron_nand*, %struct.micron_nand** %8, align 8
  %10 = call i32 @kfree(%struct.micron_nand* %9)
  %11 = load %struct.micron_nand*, %struct.micron_nand** %3, align 8
  %12 = call i32 @kfree(%struct.micron_nand* %11)
  ret void
}

declare dso_local %struct.micron_nand* @nand_get_manufacturer_data(%struct.nand_chip*) #1

declare dso_local i32 @kfree(%struct.micron_nand*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
