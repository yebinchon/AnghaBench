; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cqhci.c___cqhci_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cqhci.c___cqhci_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cqhci_host = type { i32, i32, i32, %struct.TYPE_2__*, i32, %struct.mmc_host* }
%struct.TYPE_2__ = type { i32 (%struct.mmc_host*)* }
%struct.mmc_host = type { i32, i32 }

@CQHCI_CFG = common dso_local global i32 0, align 4
@CQHCI_ENABLE = common dso_local global i32 0, align 4
@CQHCI_DCMD = common dso_local global i32 0, align 4
@CQHCI_TASK_DESC_SZ = common dso_local global i32 0, align 4
@MMC_CAP2_CQE_DCMD = common dso_local global i32 0, align 4
@CQHCI_TASK_DESC_SZ_128 = common dso_local global i32 0, align 4
@CQHCI_TDLBA = common dso_local global i32 0, align 4
@CQHCI_TDLBAU = common dso_local global i32 0, align 4
@CQHCI_SSC2 = common dso_local global i32 0, align 4
@CQHCI_IS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cqhci_host*)* @__cqhci_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cqhci_enable(%struct.cqhci_host* %0) #0 {
  %2 = alloca %struct.cqhci_host*, align 8
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  store %struct.cqhci_host* %0, %struct.cqhci_host** %2, align 8
  %5 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %6 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %5, i32 0, i32 5
  %7 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  store %struct.mmc_host* %7, %struct.mmc_host** %3, align 8
  %8 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %9 = load i32, i32* @CQHCI_CFG, align 4
  %10 = call i32 @cqhci_readl(%struct.cqhci_host* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @CQHCI_ENABLE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load i32, i32* @CQHCI_ENABLE, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @CQHCI_CFG, align 4
  %23 = call i32 @cqhci_writel(%struct.cqhci_host* %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %15, %1
  %25 = load i32, i32* @CQHCI_DCMD, align 4
  %26 = load i32, i32* @CQHCI_TASK_DESC_SZ, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %32 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MMC_CAP2_CQE_DCMD, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %24
  %38 = load i32, i32* @CQHCI_DCMD, align 4
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %24
  %42 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %43 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @CQHCI_TASK_DESC_SZ_128, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32, i32* @CQHCI_TASK_DESC_SZ, align 4
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %48, %41
  %53 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @CQHCI_CFG, align 4
  %56 = call i32 @cqhci_writel(%struct.cqhci_host* %53, i32 %54, i32 %55)
  %57 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %58 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %59 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @lower_32_bits(i32 %60)
  %62 = load i32, i32* @CQHCI_TDLBA, align 4
  %63 = call i32 @cqhci_writel(%struct.cqhci_host* %57, i32 %61, i32 %62)
  %64 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %65 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %66 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @upper_32_bits(i32 %67)
  %69 = load i32, i32* @CQHCI_TDLBAU, align 4
  %70 = call i32 @cqhci_writel(%struct.cqhci_host* %64, i32 %68, i32 %69)
  %71 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %72 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %73 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @CQHCI_SSC2, align 4
  %76 = call i32 @cqhci_writel(%struct.cqhci_host* %71, i32 %74, i32 %75)
  %77 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %78 = call i32 @cqhci_set_irqs(%struct.cqhci_host* %77, i32 0)
  %79 = load i32, i32* @CQHCI_ENABLE, align 4
  %80 = load i32, i32* %4, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %4, align 4
  %82 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @CQHCI_CFG, align 4
  %85 = call i32 @cqhci_writel(%struct.cqhci_host* %82, i32 %83, i32 %84)
  %86 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %87 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  %88 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %89 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %88, i32 0, i32 3
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)** %91, align 8
  %93 = icmp ne i32 (%struct.mmc_host*)* %92, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %52
  %95 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %96 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %95, i32 0, i32 3
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)** %98, align 8
  %100 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %101 = call i32 %99(%struct.mmc_host* %100)
  br label %102

102:                                              ; preds = %94, %52
  %103 = call i32 (...) @wmb()
  %104 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %105 = load i32, i32* @CQHCI_IS_MASK, align 4
  %106 = call i32 @cqhci_set_irqs(%struct.cqhci_host* %104, i32 %105)
  %107 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %108 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %107, i32 0, i32 2
  store i32 1, i32* %108, align 8
  ret void
}

declare dso_local i32 @cqhci_readl(%struct.cqhci_host*, i32) #1

declare dso_local i32 @cqhci_writel(%struct.cqhci_host*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @cqhci_set_irqs(%struct.cqhci_host*, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
