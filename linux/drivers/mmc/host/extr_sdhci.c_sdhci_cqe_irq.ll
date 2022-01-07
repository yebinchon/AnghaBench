; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_cqe_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_cqe_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i32, i32 }

@SDHCI_INT_INDEX = common dso_local global i32 0, align 4
@SDHCI_INT_END_BIT = common dso_local global i32 0, align 4
@SDHCI_INT_CRC = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@SDHCI_INT_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SDHCI_INT_DATA_END_BIT = common dso_local global i32 0, align 4
@SDHCI_INT_DATA_CRC = common dso_local global i32 0, align 4
@SDHCI_INT_DATA_TIMEOUT = common dso_local global i32 0, align 4
@SDHCI_INT_ADMA_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SDHCI_INT_STATUS = common dso_local global i32 0, align 4
@SDHCI_INT_BUS_POWER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s: Card is consuming too much power!\0A\00", align 1
@SDHCI_INT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"%s: CQE: Unexpected interrupt 0x%08x.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdhci_cqe_irq(%struct.sdhci_host* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdhci_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %12 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %119

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @SDHCI_INT_INDEX, align 4
  %19 = load i32, i32* @SDHCI_INT_END_BIT, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SDHCI_INT_CRC, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %17, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load i32, i32* @EILSEQ, align 4
  %27 = sub nsw i32 0, %26
  %28 = load i32*, i32** %8, align 8
  store i32 %27, i32* %28, align 4
  br label %41

29:                                               ; preds = %16
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @SDHCI_INT_TIMEOUT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @ETIMEDOUT, align 4
  %36 = sub nsw i32 0, %35
  %37 = load i32*, i32** %8, align 8
  store i32 %36, i32* %37, align 4
  br label %40

38:                                               ; preds = %29
  %39 = load i32*, i32** %8, align 8
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %38, %34
  br label %41

41:                                               ; preds = %40, %25
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @SDHCI_INT_DATA_END_BIT, align 4
  %44 = load i32, i32* @SDHCI_INT_DATA_CRC, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32, i32* @EILSEQ, align 4
  %50 = sub nsw i32 0, %49
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  br label %74

52:                                               ; preds = %41
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @SDHCI_INT_DATA_TIMEOUT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* @ETIMEDOUT, align 4
  %59 = sub nsw i32 0, %58
  %60 = load i32*, i32** %9, align 8
  store i32 %59, i32* %60, align 4
  br label %73

61:                                               ; preds = %52
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @SDHCI_INT_ADMA_ERROR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  %69 = load i32*, i32** %9, align 8
  store i32 %68, i32* %69, align 4
  br label %72

70:                                               ; preds = %61
  %71 = load i32*, i32** %9, align 8
  store i32 0, i32* %71, align 4
  br label %72

72:                                               ; preds = %70, %66
  br label %73

73:                                               ; preds = %72, %57
  br label %74

74:                                               ; preds = %73, %48
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %77 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %75, %78
  store i32 %79, i32* %10, align 4
  %80 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @SDHCI_INT_STATUS, align 4
  %83 = call i32 @sdhci_writel(%struct.sdhci_host* %80, i32 %81, i32 %82)
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @SDHCI_INT_BUS_POWER, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %74
  %89 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %90 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @mmc_hostname(i32 %91)
  %93 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %88, %74
  %95 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %96 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @SDHCI_INT_ERROR, align 4
  %99 = or i32 %97, %98
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %7, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %94
  %106 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @SDHCI_INT_STATUS, align 4
  %109 = call i32 @sdhci_writel(%struct.sdhci_host* %106, i32 %107, i32 %108)
  %110 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %111 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @mmc_hostname(i32 %112)
  %114 = load i32, i32* %7, align 4
  %115 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %113, i32 %114)
  %116 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %117 = call i32 @sdhci_dumpregs(%struct.sdhci_host* %116)
  br label %118

118:                                              ; preds = %105, %94
  store i32 1, i32* %5, align 4
  br label %119

119:                                              ; preds = %118, %15
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @sdhci_dumpregs(%struct.sdhci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
