; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_glk_emmc_add_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_glk_emmc_add_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_pci_slot = type { %struct.sdhci_host*, %struct.TYPE_4__* }
%struct.sdhci_host = type { i32, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.cqhci_host = type { i32, i32*, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CQHCI_QUIRK_SHORT_TXFR_DESC_SZ = common dso_local global i32 0, align 4
@glk_cqhci_ops = common dso_local global i32 0, align 4
@SDHCI_USE_64_BIT_DMA = common dso_local global i32 0, align 4
@CQHCI_TASK_DESC_SZ_128 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_pci_slot*)* @glk_emmc_add_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glk_emmc_add_host(%struct.sdhci_pci_slot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_pci_slot*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sdhci_host*, align 8
  %6 = alloca %struct.cqhci_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sdhci_pci_slot* %0, %struct.sdhci_pci_slot** %3, align 8
  %9 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %3, align 8
  %10 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %3, align 8
  %16 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %15, i32 0, i32 0
  %17 = load %struct.sdhci_host*, %struct.sdhci_host** %16, align 8
  store %struct.sdhci_host* %17, %struct.sdhci_host** %5, align 8
  %18 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %19 = call i32 @sdhci_setup_host(%struct.sdhci_host* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %2, align 4
  br label %81

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.cqhci_host* @devm_kzalloc(%struct.device* %25, i32 32, i32 %26)
  store %struct.cqhci_host* %27, %struct.cqhci_host** %6, align 8
  %28 = load %struct.cqhci_host*, %struct.cqhci_host** %6, align 8
  %29 = icmp ne %struct.cqhci_host* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  br label %77

33:                                               ; preds = %24
  %34 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %35 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 512
  %38 = load %struct.cqhci_host*, %struct.cqhci_host** %6, align 8
  %39 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %38, i32 0, i32 3
  store i64 %37, i64* %39, align 8
  %40 = load i32, i32* @CQHCI_QUIRK_SHORT_TXFR_DESC_SZ, align 4
  %41 = load %struct.cqhci_host*, %struct.cqhci_host** %6, align 8
  %42 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.cqhci_host*, %struct.cqhci_host** %6, align 8
  %46 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %45, i32 0, i32 1
  store i32* @glk_cqhci_ops, i32** %46, align 8
  %47 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %48 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @SDHCI_USE_64_BIT_DMA, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %33
  %55 = load i32, i32* @CQHCI_TASK_DESC_SZ_128, align 4
  %56 = load %struct.cqhci_host*, %struct.cqhci_host** %6, align 8
  %57 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %54, %33
  %61 = load %struct.cqhci_host*, %struct.cqhci_host** %6, align 8
  %62 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %63 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @cqhci_init(%struct.cqhci_host* %61, i32 %64, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %77

70:                                               ; preds = %60
  %71 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %72 = call i32 @__sdhci_add_host(%struct.sdhci_host* %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %77

76:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %81

77:                                               ; preds = %75, %69, %30
  %78 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %79 = call i32 @sdhci_cleanup_host(%struct.sdhci_host* %78)
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %77, %76, %22
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @sdhci_setup_host(%struct.sdhci_host*) #1

declare dso_local %struct.cqhci_host* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @cqhci_init(%struct.cqhci_host*, i32, i32) #1

declare dso_local i32 @__sdhci_add_host(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_cleanup_host(%struct.sdhci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
