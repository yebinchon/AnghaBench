; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_acquire_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_acquire_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpmi_nand_data = type { i32 }

@GPMI_NAND_GPMI_REGS_ADDR_RES_NAME = common dso_local global i32 0, align 4
@GPMI_NAND_BCH_REGS_ADDR_RES_NAME = common dso_local global i32 0, align 4
@bch_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpmi_nand_data*)* @acquire_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acquire_resources(%struct.gpmi_nand_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpmi_nand_data*, align 8
  %4 = alloca i32, align 4
  store %struct.gpmi_nand_data* %0, %struct.gpmi_nand_data** %3, align 8
  %5 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %6 = load i32, i32* @GPMI_NAND_GPMI_REGS_ADDR_RES_NAME, align 4
  %7 = call i32 @acquire_register_block(%struct.gpmi_nand_data* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %41

11:                                               ; preds = %1
  %12 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %13 = load i32, i32* @GPMI_NAND_BCH_REGS_ADDR_RES_NAME, align 4
  %14 = call i32 @acquire_register_block(%struct.gpmi_nand_data* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %41

18:                                               ; preds = %11
  %19 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %20 = load i32, i32* @bch_irq, align 4
  %21 = call i32 @acquire_bch_irq(%struct.gpmi_nand_data* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %41

25:                                               ; preds = %18
  %26 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %27 = call i32 @acquire_dma_channels(%struct.gpmi_nand_data* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %41

31:                                               ; preds = %25
  %32 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %33 = call i32 @gpmi_get_clks(%struct.gpmi_nand_data* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %38

37:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %43

38:                                               ; preds = %36
  %39 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %40 = call i32 @release_dma_channels(%struct.gpmi_nand_data* %39)
  br label %41

41:                                               ; preds = %38, %30, %24, %17, %10
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @acquire_register_block(%struct.gpmi_nand_data*, i32) #1

declare dso_local i32 @acquire_bch_irq(%struct.gpmi_nand_data*, i32) #1

declare dso_local i32 @acquire_dma_channels(%struct.gpmi_nand_data*) #1

declare dso_local i32 @gpmi_get_clks(%struct.gpmi_nand_data*) #1

declare dso_local i32 @release_dma_channels(%struct.gpmi_nand_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
