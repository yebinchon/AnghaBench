; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vpu/extr_mtk_vpu.c_vpu_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vpu/extr_mtk_vpu.c_vpu_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_vpu = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"[VPU] enable clock failed %d\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@VPU_TO_HOST = common dso_local global i32 0, align 4
@VPU_IPC_INT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"vpu watchdog timeout! 0x%x\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vpu_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpu_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mtk_vpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.mtk_vpu*
  store %struct.mtk_vpu* %10, %struct.mtk_vpu** %6, align 8
  %11 = load %struct.mtk_vpu*, %struct.mtk_vpu** %6, align 8
  %12 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @clk_enable(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.mtk_vpu*, %struct.mtk_vpu** %6, align 8
  %19 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %3, align 4
  br label %58

24:                                               ; preds = %2
  %25 = load %struct.mtk_vpu*, %struct.mtk_vpu** %6, align 8
  %26 = load i32, i32* @VPU_TO_HOST, align 4
  %27 = call i32 @vpu_cfg_readl(%struct.mtk_vpu* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @VPU_IPC_INT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load %struct.mtk_vpu*, %struct.mtk_vpu** %6, align 8
  %34 = call i32 @vpu_ipi_handler(%struct.mtk_vpu* %33)
  br label %49

35:                                               ; preds = %24
  %36 = load %struct.mtk_vpu*, %struct.mtk_vpu** %6, align 8
  %37 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.mtk_vpu*, %struct.mtk_vpu** %6, align 8
  %42 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mtk_vpu*, %struct.mtk_vpu** %6, align 8
  %46 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @queue_work(i32 %44, i32* %47)
  br label %49

49:                                               ; preds = %35, %32
  %50 = load %struct.mtk_vpu*, %struct.mtk_vpu** %6, align 8
  %51 = load i32, i32* @VPU_TO_HOST, align 4
  %52 = call i32 @vpu_cfg_writel(%struct.mtk_vpu* %50, i32 0, i32 %51)
  %53 = load %struct.mtk_vpu*, %struct.mtk_vpu** %6, align 8
  %54 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @clk_disable(i32 %55)
  %57 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %49, %17
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @vpu_cfg_readl(%struct.mtk_vpu*, i32) #1

declare dso_local i32 @vpu_ipi_handler(%struct.mtk_vpu*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @vpu_cfg_writel(%struct.mtk_vpu*, i32, i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
