; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tegra_nand.c_tegra_nand_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tegra_nand.c_tegra_nand_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_nand_controller = type { i32, i64, i32, i32, i32 }

@ISR = common dso_local global i64 0, align 8
@DMA_MST_CTRL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"isr %08x\0A\00", align 1
@DMA_MST_CTRL_IS_DONE = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@ISR_CORRFAIL_ERR = common dso_local global i32 0, align 4
@ISR_CMD_DONE = common dso_local global i32 0, align 4
@ISR_UND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"FIFO underrun\0A\00", align 1
@ISR_OVR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"FIFO overrun\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tegra_nand_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_nand_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tegra_nand_controller*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.tegra_nand_controller*
  store %struct.tegra_nand_controller* %10, %struct.tegra_nand_controller** %6, align 8
  %11 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %6, align 8
  %12 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ISR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl_relaxed(i64 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %6, align 8
  %18 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DMA_MST_CTRL, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl_relaxed(i64 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %6, align 8
  %24 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @DMA_MST_CTRL_IS_DONE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @IRQ_NONE, align 4
  store i32 %36, i32* %3, align 4
  br label %99

37:                                               ; preds = %30, %2
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @ISR_CORRFAIL_ERR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %6, align 8
  %44 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @ISR_CMD_DONE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %6, align 8
  %52 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %51, i32 0, i32 4
  %53 = call i32 @complete(i32* %52)
  br label %54

54:                                               ; preds = %50, %45
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @ISR_UND, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %6, align 8
  %61 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %59, %54
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @ISR_OVR, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %6, align 8
  %71 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %69, %64
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @DMA_MST_CTRL_IS_DONE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %74
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %6, align 8
  %82 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @DMA_MST_CTRL, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writel_relaxed(i32 %80, i64 %85)
  %87 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %6, align 8
  %88 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %87, i32 0, i32 2
  %89 = call i32 @complete(i32* %88)
  br label %90

90:                                               ; preds = %79, %74
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %6, align 8
  %93 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @ISR, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @writel_relaxed(i32 %91, i64 %96)
  %98 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %90, %35
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
