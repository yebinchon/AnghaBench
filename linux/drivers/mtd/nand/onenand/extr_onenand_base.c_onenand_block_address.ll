; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_onenand_base.c_onenand_block_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_onenand_base.c_onenand_block_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.onenand_chip = type { i32 }

@ONENAND_DDP_CHIP1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.onenand_chip*, i32)* @onenand_block_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onenand_block_address(%struct.onenand_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.onenand_chip*, align 8
  %5 = alloca i32, align 4
  store %struct.onenand_chip* %0, %struct.onenand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %8 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %6, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i32, i32* @ONENAND_DDP_CHIP1, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %16 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = xor i32 %14, %17
  %19 = or i32 %13, %18
  store i32 %19, i32* %3, align 4
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %20, %12
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
