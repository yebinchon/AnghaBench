; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-iproc.c_sdhci_iproc_writew.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-iproc.c_sdhci_iproc_writew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_iproc_host = type { i32, i32, i32, i32 }

@SDHCI_COMMAND = common dso_local global i32 0, align 4
@SDHCI_BLOCK_SIZE = common dso_local global i32 0, align 4
@SDHCI_BLOCK_COUNT = common dso_local global i32 0, align 4
@SDHCI_TRANSFER_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32, i32)* @sdhci_iproc_writew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_iproc_writew(%struct.sdhci_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdhci_pltfm_host*, align 8
  %8 = alloca %struct.sdhci_iproc_host*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %14 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %13)
  store %struct.sdhci_pltfm_host* %14, %struct.sdhci_pltfm_host** %7, align 8
  %15 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %7, align 8
  %16 = call %struct.sdhci_iproc_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %15)
  store %struct.sdhci_iproc_host* %16, %struct.sdhci_iproc_host** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @REG_OFFSET_IN_BITS(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = shl i32 65535, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @SDHCI_COMMAND, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %3
  %25 = load %struct.sdhci_iproc_host*, %struct.sdhci_iproc_host** %8, align 8
  %26 = getelementptr inbounds %struct.sdhci_iproc_host, %struct.sdhci_iproc_host* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %31 = load %struct.sdhci_iproc_host*, %struct.sdhci_iproc_host** %8, align 8
  %32 = getelementptr inbounds %struct.sdhci_iproc_host, %struct.sdhci_iproc_host* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SDHCI_BLOCK_SIZE, align 4
  %35 = call i32 @sdhci_iproc_writel(%struct.sdhci_host* %30, i32 %33, i32 %34)
  %36 = load %struct.sdhci_iproc_host*, %struct.sdhci_iproc_host** %8, align 8
  %37 = getelementptr inbounds %struct.sdhci_iproc_host, %struct.sdhci_iproc_host* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %29, %24
  %39 = load %struct.sdhci_iproc_host*, %struct.sdhci_iproc_host** %8, align 8
  %40 = getelementptr inbounds %struct.sdhci_iproc_host, %struct.sdhci_iproc_host* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %11, align 4
  %42 = load %struct.sdhci_iproc_host*, %struct.sdhci_iproc_host** %8, align 8
  %43 = getelementptr inbounds %struct.sdhci_iproc_host, %struct.sdhci_iproc_host* %42, i32 0, i32 3
  store i32 0, i32* %43, align 4
  br label %67

44:                                               ; preds = %3
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @SDHCI_BLOCK_SIZE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @SDHCI_BLOCK_COUNT, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %48, %44
  %53 = load %struct.sdhci_iproc_host*, %struct.sdhci_iproc_host** %8, align 8
  %54 = getelementptr inbounds %struct.sdhci_iproc_host, %struct.sdhci_iproc_host* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.sdhci_iproc_host*, %struct.sdhci_iproc_host** %8, align 8
  %59 = getelementptr inbounds %struct.sdhci_iproc_host, %struct.sdhci_iproc_host* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %11, align 4
  br label %66

61:                                               ; preds = %52, %48
  %62 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %63, -4
  %65 = call i32 @sdhci_iproc_readl(%struct.sdhci_host* %62, i32 %64)
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %61, %57
  br label %67

67:                                               ; preds = %66, %38
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %10, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %9, align 4
  %74 = shl i32 %72, %73
  %75 = or i32 %71, %74
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @SDHCI_TRANSFER_MODE, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %67
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.sdhci_iproc_host*, %struct.sdhci_iproc_host** %8, align 8
  %82 = getelementptr inbounds %struct.sdhci_iproc_host, %struct.sdhci_iproc_host* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load %struct.sdhci_iproc_host*, %struct.sdhci_iproc_host** %8, align 8
  %84 = getelementptr inbounds %struct.sdhci_iproc_host, %struct.sdhci_iproc_host* %83, i32 0, i32 3
  store i32 1, i32* %84, align 4
  br label %106

85:                                               ; preds = %67
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @SDHCI_BLOCK_SIZE, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @SDHCI_BLOCK_COUNT, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %89, %85
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.sdhci_iproc_host*, %struct.sdhci_iproc_host** %8, align 8
  %96 = getelementptr inbounds %struct.sdhci_iproc_host, %struct.sdhci_iproc_host* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.sdhci_iproc_host*, %struct.sdhci_iproc_host** %8, align 8
  %98 = getelementptr inbounds %struct.sdhci_iproc_host, %struct.sdhci_iproc_host* %97, i32 0, i32 0
  store i32 1, i32* %98, align 4
  br label %105

99:                                               ; preds = %89
  %100 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %6, align 4
  %103 = and i32 %102, -4
  %104 = call i32 @sdhci_iproc_writel(%struct.sdhci_host* %100, i32 %101, i32 %103)
  br label %105

105:                                              ; preds = %99, %93
  br label %106

106:                                              ; preds = %105, %79
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_iproc_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @REG_OFFSET_IN_BITS(i32) #1

declare dso_local i32 @sdhci_iproc_writel(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @sdhci_iproc_readl(%struct.sdhci_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
