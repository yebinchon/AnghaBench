; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_ecc_level_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_ecc_level_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmnand_controller = type { i32 }

@NAND_ACC_CONTROL_ECC_SHIFT = common dso_local global i32 0, align 4
@NAND_ACC_CONTROL_ECC_EXT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmnand_controller*)* @brcmnand_ecc_level_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmnand_ecc_level_mask(%struct.brcmnand_controller* %0) #0 {
  %2 = alloca %struct.brcmnand_controller*, align 8
  %3 = alloca i32, align 4
  store %struct.brcmnand_controller* %0, %struct.brcmnand_controller** %2, align 8
  %4 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %2, align 8
  %5 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp sge i32 %6, 1536
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i32 31, i32 15
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @NAND_ACC_CONTROL_ECC_SHIFT, align 4
  %11 = load i32, i32* %3, align 4
  %12 = shl i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %2, align 8
  %14 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sge i32 %15, 1794
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load i32, i32* @NAND_ACC_CONTROL_ECC_EXT_SHIFT, align 4
  %19 = shl i32 7, %18
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %17, %1
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
