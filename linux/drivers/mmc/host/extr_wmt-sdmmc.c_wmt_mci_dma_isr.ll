; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wmt-sdmmc.c_wmt_mci_dma_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wmt-sdmmc.c_wmt_mci_dma_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmt_mci_priv = type { i64, i32, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SDDMA_CCR = common dso_local global i64 0, align 8
@DMA_CCR_EVT_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"DMA Error: Status = %d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @wmt_mci_dma_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmt_mci_dma_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wmt_mci_priv*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.wmt_mci_priv*
  store %struct.wmt_mci_priv* %9, %struct.wmt_mci_priv** %6, align 8
  %10 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %6, align 8
  %11 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SDDMA_CCR, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  %16 = and i32 %15, 15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @DMA_CCR_EVT_SUCCESS, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %2
  %21 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %6, align 8
  %22 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @ETIMEDOUT, align 4
  %27 = sub nsw i32 0, %26
  %28 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %6, align 8
  %29 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %27, i32* %33, align 4
  %34 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %6, align 8
  %35 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @complete(i32 %36)
  %38 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %38, i32* %3, align 4
  br label %68

39:                                               ; preds = %2
  %40 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %6, align 8
  %41 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  %46 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %6, align 8
  %47 = call i32 @wmt_mci_disable_dma(%struct.wmt_mci_priv* %46)
  %48 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %6, align 8
  %49 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @complete(i32 %50)
  %52 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %6, align 8
  %53 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %39
  %57 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %6, align 8
  %58 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @completion_done(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %6, align 8
  %64 = call i32 @wmt_complete_data_request(%struct.wmt_mci_priv* %63)
  br label %65

65:                                               ; preds = %62, %56
  br label %66

66:                                               ; preds = %65, %39
  %67 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %20
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @complete(i32) #1

declare dso_local i32 @wmt_mci_disable_dma(%struct.wmt_mci_priv*) #1

declare dso_local i64 @completion_done(i64) #1

declare dso_local i32 @wmt_complete_data_request(%struct.wmt_mci_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
