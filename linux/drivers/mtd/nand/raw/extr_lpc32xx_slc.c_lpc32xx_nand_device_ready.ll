; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_slc.c_lpc32xx_nand_device_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_slc.c_lpc32xx_nand_device_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.lpc32xx_nand_host = type { i32 }

@SLCSTAT_NAND_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @lpc32xx_nand_device_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_nand_device_ready(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  %3 = alloca %struct.lpc32xx_nand_host*, align 8
  %4 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %5 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %6 = call %struct.lpc32xx_nand_host* @nand_get_controller_data(%struct.nand_chip* %5)
  store %struct.lpc32xx_nand_host* %6, %struct.lpc32xx_nand_host** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %3, align 8
  %8 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @SLC_STAT(i32 %9)
  %11 = call i32 @readl(i32 %10)
  %12 = load i32, i32* @SLCSTAT_NAND_READY, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %16

16:                                               ; preds = %15, %1
  %17 = load i32, i32* %4, align 4
  ret i32 %17
}

declare dso_local %struct.lpc32xx_nand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @SLC_STAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
