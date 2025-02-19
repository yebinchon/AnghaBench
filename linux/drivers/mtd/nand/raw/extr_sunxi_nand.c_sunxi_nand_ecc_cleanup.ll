; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nand_ecc_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nand_ecc_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_ecc_ctrl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_ecc_ctrl*)* @sunxi_nand_ecc_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_nand_ecc_cleanup(%struct.nand_ecc_ctrl* %0) #0 {
  %2 = alloca %struct.nand_ecc_ctrl*, align 8
  store %struct.nand_ecc_ctrl* %0, %struct.nand_ecc_ctrl** %2, align 8
  %3 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %2, align 8
  %4 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %10 [
    i32 129, label %6
    i32 128, label %9
  ]

6:                                                ; preds = %1
  %7 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %2, align 8
  %8 = call i32 @sunxi_nand_hw_ecc_ctrl_cleanup(%struct.nand_ecc_ctrl* %7)
  br label %11

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %1, %9
  br label %11

11:                                               ; preds = %10, %6
  ret void
}

declare dso_local i32 @sunxi_nand_hw_ecc_ctrl_cleanup(%struct.nand_ecc_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
