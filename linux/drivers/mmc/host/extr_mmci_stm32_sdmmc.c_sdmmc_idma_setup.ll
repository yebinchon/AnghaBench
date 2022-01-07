; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci_stm32_sdmmc.c_sdmmc_idma_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci_stm32_sdmmc.c_sdmmc_idma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmci_host = type { %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.sdmmc_priv* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.sdmmc_priv = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SDMMC_LLI_BUF_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to alloc IDMA descriptor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmci_host*)* @sdmmc_idma_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdmmc_idma_setup(%struct.mmci_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmci_host*, align 8
  %4 = alloca %struct.sdmmc_priv*, align 8
  store %struct.mmci_host* %0, %struct.mmci_host** %3, align 8
  %5 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %6 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = call i32 @mmc_dev(%struct.TYPE_4__* %7)
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.sdmmc_priv* @devm_kzalloc(i32 %8, i32 8, i32 %9)
  store %struct.sdmmc_priv* %10, %struct.sdmmc_priv** %4, align 8
  %11 = load %struct.sdmmc_priv*, %struct.sdmmc_priv** %4, align 8
  %12 = icmp ne %struct.sdmmc_priv* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %83

16:                                               ; preds = %1
  %17 = load %struct.sdmmc_priv*, %struct.sdmmc_priv** %4, align 8
  %18 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %19 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %18, i32 0, i32 2
  store %struct.sdmmc_priv* %17, %struct.sdmmc_priv** %19, align 8
  %20 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %21 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %68

26:                                               ; preds = %16
  %27 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %28 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = call i32 @mmc_dev(%struct.TYPE_4__* %29)
  %31 = load i32, i32* @SDMMC_LLI_BUF_LEN, align 4
  %32 = load %struct.sdmmc_priv*, %struct.sdmmc_priv** %4, align 8
  %33 = getelementptr inbounds %struct.sdmmc_priv, %struct.sdmmc_priv* %32, i32 0, i32 1
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32 @dmam_alloc_coherent(i32 %30, i32 %31, i32* %33, i32 %34)
  %36 = load %struct.sdmmc_priv*, %struct.sdmmc_priv** %4, align 8
  %37 = getelementptr inbounds %struct.sdmmc_priv, %struct.sdmmc_priv* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.sdmmc_priv*, %struct.sdmmc_priv** %4, align 8
  %39 = getelementptr inbounds %struct.sdmmc_priv, %struct.sdmmc_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %26
  %43 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %44 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = call i32 @mmc_dev(%struct.TYPE_4__* %45)
  %47 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %83

50:                                               ; preds = %26
  %51 = load i32, i32* @SDMMC_LLI_BUF_LEN, align 4
  %52 = sext i32 %51 to i64
  %53 = udiv i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %56 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %54, i32* %58, align 4
  %59 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %60 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %65 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  store i32 %63, i32* %67, align 4
  br label %82

68:                                               ; preds = %16
  %69 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %70 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 4
  %73 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %74 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %79 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  store i32 %77, i32* %81, align 4
  br label %82

82:                                               ; preds = %68, %50
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %42, %13
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.sdmmc_priv* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @mmc_dev(%struct.TYPE_4__*) #1

declare dso_local i32 @dmam_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
