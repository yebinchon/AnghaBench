; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_trf_block_pio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_trf_block_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alcor_sdmmc_host = type { %struct.TYPE_5__, i32, i32, %struct.TYPE_4__*, i64, %struct.alcor_pci_priv* }
%struct.TYPE_5__ = type { i64, i32*, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.alcor_pci_priv = type { i64 }

@.str = private unnamed_addr constant [37 x i8] c"configured DMA but got PIO request.\0A\00", align 1
@MMC_DATA_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"got unexpected direction %i != %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"PIO, %s block size: 0x%zx\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@AU6601_REG_BUFFER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alcor_sdmmc_host*, i32)* @alcor_trf_block_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alcor_trf_block_pio(%struct.alcor_sdmmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.alcor_sdmmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.alcor_pci_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.alcor_sdmmc_host* %0, %struct.alcor_sdmmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %10 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %9, i32 0, i32 5
  %11 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %10, align 8
  store %struct.alcor_pci_priv* %11, %struct.alcor_pci_priv** %5, align 8
  %12 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %13 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %123

17:                                               ; preds = %2
  %18 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %19 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %24 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32, i8*, ...) @dev_err(i32 %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %123

27:                                               ; preds = %17
  %28 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %29 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %28, i32 0, i32 3
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MMC_DATA_READ, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %27
  %42 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %43 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %46 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %45, i32 0, i32 3
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @MMC_DATA_READ, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %4, align 4
  %57 = call i32 (i32, i8*, ...) @dev_err(i32 %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %41, %27
  %59 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %60 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %59, i32 0, i32 0
  %61 = call i32 @sg_miter_next(%struct.TYPE_5__* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  br label %123

64:                                               ; preds = %58
  %65 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %66 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %65, i32 0, i32 3
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %6, align 8
  %70 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %71 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i64, i64* %6, align 8
  %75 = call i64 @min(i32 %73, i64 %74)
  store i64 %75, i64* %7, align 8
  %76 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %77 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %83 = load i64, i64* %6, align 8
  %84 = call i32 @dev_dbg(i32 %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %82, i64 %83)
  %85 = load i64, i64* %7, align 8
  %86 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %87 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store i64 %85, i64* %88, align 8
  %89 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %90 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %90, align 8
  %93 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %94 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  store i32* %96, i32** %8, align 8
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %64
  %100 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %5, align 8
  %101 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @AU6601_REG_BUFFER, align 8
  %104 = add nsw i64 %102, %103
  %105 = load i32*, i32** %8, align 8
  %106 = load i64, i64* %7, align 8
  %107 = lshr i64 %106, 2
  %108 = call i32 @ioread32_rep(i64 %104, i32* %105, i64 %107)
  br label %119

109:                                              ; preds = %64
  %110 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %5, align 8
  %111 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @AU6601_REG_BUFFER, align 8
  %114 = add nsw i64 %112, %113
  %115 = load i32*, i32** %8, align 8
  %116 = load i64, i64* %7, align 8
  %117 = lshr i64 %116, 2
  %118 = call i32 @iowrite32_rep(i64 %114, i32* %115, i64 %117)
  br label %119

119:                                              ; preds = %109, %99
  %120 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %121 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %120, i32 0, i32 0
  %122 = call i32 @sg_miter_stop(%struct.TYPE_5__* %121)
  br label %123

123:                                              ; preds = %119, %63, %22, %16
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @sg_miter_next(%struct.TYPE_5__*) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i64) #1

declare dso_local i32 @ioread32_rep(i64, i32*, i64) #1

declare dso_local i32 @iowrite32_rep(i64, i32*, i64) #1

declare dso_local i32 @sg_miter_stop(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
