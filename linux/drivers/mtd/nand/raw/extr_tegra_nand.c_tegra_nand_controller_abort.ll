; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tegra_nand.c_tegra_nand_controller_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tegra_nand.c_tegra_nand_controller_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_nand_controller = type { i32, i32, i32, i64 }

@DMA_MST_CTRL = common dso_local global i64 0, align 8
@COMMAND = common dso_local global i64 0, align 8
@ISR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_nand_controller*)* @tegra_nand_controller_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_nand_controller_abort(%struct.tegra_nand_controller* %0) #0 {
  %2 = alloca %struct.tegra_nand_controller*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tegra_nand_controller* %0, %struct.tegra_nand_controller** %2, align 8
  %5 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %2, align 8
  %6 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @disable_irq(i32 %7)
  %9 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %2, align 8
  %10 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DMA_MST_CTRL, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writel_relaxed(i32 0, i64 %13)
  %15 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %2, align 8
  %16 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @COMMAND, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel_relaxed(i32 0, i64 %19)
  %21 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %2, align 8
  %22 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ISR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl_relaxed(i64 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %2, align 8
  %29 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ISR, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel_relaxed(i32 %27, i64 %32)
  %34 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %2, align 8
  %35 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DMA_MST_CTRL, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @readl_relaxed(i64 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %2, align 8
  %42 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DMA_MST_CTRL, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel_relaxed(i32 %40, i64 %45)
  %47 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %2, align 8
  %48 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %47, i32 0, i32 2
  %49 = call i32 @reinit_completion(i32* %48)
  %50 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %2, align 8
  %51 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %50, i32 0, i32 1
  %52 = call i32 @reinit_completion(i32* %51)
  %53 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %2, align 8
  %54 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @enable_irq(i32 %55)
  ret void
}

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
