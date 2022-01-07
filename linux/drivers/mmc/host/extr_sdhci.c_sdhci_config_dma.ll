; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_config_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_config_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64, i32, i64 }

@SDHCI_SPEC_200 = common dso_local global i64 0, align 8
@SDHCI_HOST_CONTROL = common dso_local global i32 0, align 4
@SDHCI_CTRL_DMA_MASK = common dso_local global i32 0, align 4
@SDHCI_REQ_USE_DMA = common dso_local global i32 0, align 4
@SDHCI_USE_ADMA = common dso_local global i32 0, align 4
@SDHCI_CTRL_ADMA32 = common dso_local global i32 0, align 4
@SDHCI_USE_64_BIT_DMA = common dso_local global i32 0, align 4
@SDHCI_HOST_CONTROL2 = common dso_local global i32 0, align 4
@SDHCI_CTRL_64BIT_ADDR = common dso_local global i32 0, align 4
@SDHCI_CTRL_ADMA64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @sdhci_config_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_config_dma(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %5 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %6 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SDHCI_SPEC_200, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %79

11:                                               ; preds = %1
  %12 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %13 = load i32, i32* @SDHCI_HOST_CONTROL, align 4
  %14 = call i32 @sdhci_readb(%struct.sdhci_host* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @SDHCI_CTRL_DMA_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %20 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SDHCI_REQ_USE_DMA, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %11
  br label %74

26:                                               ; preds = %11
  %27 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %28 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SDHCI_USE_ADMA, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32, i32* @SDHCI_CTRL_ADMA32, align 4
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %26
  %38 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %39 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SDHCI_USE_64_BIT_DMA, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %73

44:                                               ; preds = %37
  %45 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %46 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %51 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %52 = call i32 @sdhci_readw(%struct.sdhci_host* %50, i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* @SDHCI_CTRL_64BIT_ADDR, align 4
  %54 = load i32, i32* %4, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %4, align 4
  %56 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %59 = call i32 @sdhci_writew(%struct.sdhci_host* %56, i32 %57, i32 %58)
  br label %72

60:                                               ; preds = %44
  %61 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %62 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @SDHCI_USE_ADMA, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32, i32* @SDHCI_CTRL_ADMA64, align 4
  %69 = load i32, i32* %3, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %60
  br label %72

72:                                               ; preds = %71, %49
  br label %73

73:                                               ; preds = %72, %37
  br label %74

74:                                               ; preds = %73, %25
  %75 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @SDHCI_HOST_CONTROL, align 4
  %78 = call i32 @sdhci_writeb(%struct.sdhci_host* %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %74, %10
  ret void
}

declare dso_local i32 @sdhci_readb(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writew(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @sdhci_writeb(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
