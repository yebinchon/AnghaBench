; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-arasan.c_sdhci_arasan_add_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-arasan.c_sdhci_arasan_add_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_arasan_data = type { i32, %struct.sdhci_host* }
%struct.sdhci_host = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.cqhci_host = type { i32, i32*, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SDHCI_ARASAN_CQE_BASE_ADDR = common dso_local global i64 0, align 8
@sdhci_arasan_cqhci_ops = common dso_local global i32 0, align 4
@SDHCI_USE_64_BIT_DMA = common dso_local global i32 0, align 4
@CQHCI_TASK_DESC_SZ_128 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_arasan_data*)* @sdhci_arasan_add_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_arasan_add_host(%struct.sdhci_arasan_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_arasan_data*, align 8
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca %struct.cqhci_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sdhci_arasan_data* %0, %struct.sdhci_arasan_data** %3, align 8
  %8 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %3, align 8
  %9 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %8, i32 0, i32 1
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %9, align 8
  store %struct.sdhci_host* %10, %struct.sdhci_host** %4, align 8
  %11 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %3, align 8
  %12 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %17 = call i32 @sdhci_add_host(%struct.sdhci_host* %16)
  store i32 %17, i32* %2, align 4
  br label %82

18:                                               ; preds = %1
  %19 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %20 = call i32 @sdhci_setup_host(%struct.sdhci_host* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %2, align 4
  br label %82

25:                                               ; preds = %18
  %26 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %27 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.cqhci_host* @devm_kzalloc(i32 %30, i32 24, i32 %31)
  store %struct.cqhci_host* %32, %struct.cqhci_host** %5, align 8
  %33 = load %struct.cqhci_host*, %struct.cqhci_host** %5, align 8
  %34 = icmp ne %struct.cqhci_host* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %78

38:                                               ; preds = %25
  %39 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %40 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SDHCI_ARASAN_CQE_BASE_ADDR, align 8
  %43 = add nsw i64 %41, %42
  %44 = load %struct.cqhci_host*, %struct.cqhci_host** %5, align 8
  %45 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load %struct.cqhci_host*, %struct.cqhci_host** %5, align 8
  %47 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %46, i32 0, i32 1
  store i32* @sdhci_arasan_cqhci_ops, i32** %47, align 8
  %48 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %49 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SDHCI_USE_64_BIT_DMA, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %38
  %56 = load i32, i32* @CQHCI_TASK_DESC_SZ_128, align 4
  %57 = load %struct.cqhci_host*, %struct.cqhci_host** %5, align 8
  %58 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %55, %38
  %62 = load %struct.cqhci_host*, %struct.cqhci_host** %5, align 8
  %63 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %64 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @cqhci_init(%struct.cqhci_host* %62, %struct.TYPE_2__* %65, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %78

71:                                               ; preds = %61
  %72 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %73 = call i32 @__sdhci_add_host(%struct.sdhci_host* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %78

77:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %82

78:                                               ; preds = %76, %70, %35
  %79 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %80 = call i32 @sdhci_cleanup_host(%struct.sdhci_host* %79)
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %78, %77, %23, %15
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @sdhci_add_host(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_setup_host(%struct.sdhci_host*) #1

declare dso_local %struct.cqhci_host* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @cqhci_init(%struct.cqhci_host*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @__sdhci_add_host(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_cleanup_host(%struct.sdhci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
