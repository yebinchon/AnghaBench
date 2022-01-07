; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_cqe_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_cqe_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.sdhci_host = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@SDHCI_HOST_CONTROL = common dso_local global i32 0, align 4
@SDHCI_CTRL_DMA_MASK = common dso_local global i32 0, align 4
@SDHCI_CAN_DO_ADMA3 = common dso_local global i32 0, align 4
@SDHCI_CTRL_ADMA3 = common dso_local global i32 0, align 4
@SDHCI_USE_64_BIT_DMA = common dso_local global i32 0, align 4
@SDHCI_CTRL_ADMA64 = common dso_local global i32 0, align 4
@SDHCI_CTRL_ADMA32 = common dso_local global i32 0, align 4
@SDHCI_BLOCK_SIZE = common dso_local global i32 0, align 4
@SDHCI_INT_ENABLE = common dso_local global i32 0, align 4
@SDHCI_SIGNAL_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"%s: sdhci: CQE on, IRQ mask %#x, IRQ status %#x\0A\00", align 1
@SDHCI_INT_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdhci_cqe_enable(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %7 = call %struct.sdhci_host* @mmc_priv(%struct.mmc_host* %6)
  store %struct.sdhci_host* %7, %struct.sdhci_host** %3, align 8
  %8 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %9 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %8, i32 0, i32 3
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %13 = load i32, i32* @SDHCI_HOST_CONTROL, align 4
  %14 = call i32 @sdhci_readb(%struct.sdhci_host* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @SDHCI_CTRL_DMA_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %20 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %1
  %24 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %25 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SDHCI_CAN_DO_ADMA3, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* @SDHCI_CTRL_ADMA3, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %50

34:                                               ; preds = %23, %1
  %35 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %36 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SDHCI_USE_64_BIT_DMA, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i32, i32* @SDHCI_CTRL_ADMA64, align 4
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %49

45:                                               ; preds = %34
  %46 = load i32, i32* @SDHCI_CTRL_ADMA32, align 4
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %45, %41
  br label %50

50:                                               ; preds = %49, %30
  %51 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @SDHCI_HOST_CONTROL, align 4
  %54 = call i32 @sdhci_writeb(%struct.sdhci_host* %51, i32 %52, i32 %53)
  %55 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %56 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %57 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @SDHCI_MAKE_BLKSZ(i32 %58, i32 512)
  %60 = load i32, i32* @SDHCI_BLOCK_SIZE, align 4
  %61 = call i32 @sdhci_writew(%struct.sdhci_host* %55, i32 %59, i32 %60)
  %62 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %63 = call i32 @sdhci_set_timeout(%struct.sdhci_host* %62, i32* null)
  %64 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %65 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %68 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %70 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %71 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @SDHCI_INT_ENABLE, align 4
  %74 = call i32 @sdhci_writel(%struct.sdhci_host* %69, i32 %72, i32 %73)
  %75 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %76 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %77 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @SDHCI_SIGNAL_ENABLE, align 4
  %80 = call i32 @sdhci_writel(%struct.sdhci_host* %75, i32 %78, i32 %79)
  %81 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %82 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %81, i32 0, i32 2
  store i32 1, i32* %82, align 8
  %83 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %84 = call i32 @mmc_hostname(%struct.mmc_host* %83)
  %85 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %86 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %89 = load i32, i32* @SDHCI_INT_STATUS, align 4
  %90 = call i32 @sdhci_readl(%struct.sdhci_host* %88, i32 %89)
  %91 = call i32 @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %87, i32 %90)
  %92 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %93 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %92, i32 0, i32 3
  %94 = load i64, i64* %4, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  ret void
}

declare dso_local %struct.sdhci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sdhci_readb(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writeb(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @sdhci_writew(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @SDHCI_MAKE_BLKSZ(i32, i32) #1

declare dso_local i32 @sdhci_set_timeout(%struct.sdhci_host*, i32*) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
