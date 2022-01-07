; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_irq.c_sdio_single_irq_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_irq.c_sdio_single_irq_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, %struct.sdio_func*, %struct.sdio_func**, %struct.TYPE_2__* }
%struct.sdio_func = type { i64 }
%struct.TYPE_2__ = type { i32, i32 }

@MMC_CAP_SDIO_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_card*)* @sdio_single_irq_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdio_single_irq_set(%struct.mmc_card* %0) #0 {
  %2 = alloca %struct.mmc_card*, align 8
  %3 = alloca %struct.sdio_func*, align 8
  %4 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %2, align 8
  %5 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %6 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %5, i32 0, i32 1
  store %struct.sdio_func* null, %struct.sdio_func** %6, align 8
  %7 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %8 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MMC_CAP_SDIO_IRQ, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %1
  %16 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %17 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %53

22:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %49, %22
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %26 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %23
  %30 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %31 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %30, i32 0, i32 2
  %32 = load %struct.sdio_func**, %struct.sdio_func*** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.sdio_func*, %struct.sdio_func** %32, i64 %34
  %36 = load %struct.sdio_func*, %struct.sdio_func** %35, align 8
  store %struct.sdio_func* %36, %struct.sdio_func** %3, align 8
  %37 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %38 = icmp ne %struct.sdio_func* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %29
  %40 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %41 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %46 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %47 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %46, i32 0, i32 1
  store %struct.sdio_func* %45, %struct.sdio_func** %47, align 8
  br label %52

48:                                               ; preds = %39, %29
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %23

52:                                               ; preds = %44, %23
  br label %53

53:                                               ; preds = %52, %15, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
