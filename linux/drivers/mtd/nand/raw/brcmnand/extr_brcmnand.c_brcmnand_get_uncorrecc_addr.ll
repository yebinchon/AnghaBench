; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_get_uncorrecc_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_get_uncorrecc_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmnand_controller = type { i32 }

@BRCMNAND_UNCORR_ADDR = common dso_local global i32 0, align 4
@BRCMNAND_UNCORR_EXT_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmnand_controller*)* @brcmnand_get_uncorrecc_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmnand_get_uncorrecc_addr(%struct.brcmnand_controller* %0) #0 {
  %2 = alloca %struct.brcmnand_controller*, align 8
  %3 = alloca i32, align 4
  store %struct.brcmnand_controller* %0, %struct.brcmnand_controller** %2, align 8
  %4 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %2, align 8
  %5 = load i32, i32* @BRCMNAND_UNCORR_ADDR, align 4
  %6 = call i32 @brcmnand_read_reg(%struct.brcmnand_controller* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %2, align 8
  %8 = load i32, i32* @BRCMNAND_UNCORR_EXT_ADDR, align 4
  %9 = call i32 @brcmnand_read_reg(%struct.brcmnand_controller* %7, i32 %8)
  %10 = and i32 %9, 65535
  %11 = shl i32 %10, 32
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

declare dso_local i32 @brcmnand_read_reg(%struct.brcmnand_controller*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
