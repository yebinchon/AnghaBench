; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-s3c.c_sdhci_cmu_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-s3c.c_sdhci_cmu_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.sdhci_s3c = type { i64, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@SDHCI_CLOCK_CONTROL = common dso_local global i32 0, align 4
@SDHCI_CLOCK_CARD_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%s: failed to set clock rate %uHz\0A\00", align 1
@SDHCI_CLOCK_INT_EN = common dso_local global i32 0, align 4
@SDHCI_CLOCK_INT_STABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"%s: Internal clock never stabilised.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @sdhci_cmu_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_cmu_set_clock(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_s3c*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %11 = call %struct.sdhci_s3c* @to_s3c(%struct.sdhci_host* %10)
  store %struct.sdhci_s3c* %11, %struct.sdhci_s3c** %5, align 8
  %12 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %5, align 8
  %13 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %6, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %17 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %24 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %25 = call i32 @sdhci_writew(%struct.sdhci_host* %23, i32 0, i32 %24)
  br label %97

26:                                               ; preds = %2
  %27 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @sdhci_s3c_set_clock(%struct.sdhci_host* %27, i32 %28)
  %30 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %31 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %32 = call i32 @sdhci_readw(%struct.sdhci_host* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @SDHCI_CLOCK_CARD_EN, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %40 = call i32 @sdhci_writew(%struct.sdhci_host* %37, i32 %38, i32 %39)
  %41 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %5, align 8
  %42 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %5, align 8
  %45 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @clk_set_rate(i32 %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %26
  %54 = load %struct.device*, %struct.device** %6, align 8
  %55 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %56 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = call i32 @mmc_hostname(%struct.TYPE_4__* %57)
  %59 = load i32, i32* %4, align 4
  %60 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59)
  br label %97

61:                                               ; preds = %26
  %62 = load i32, i32* @SDHCI_CLOCK_INT_EN, align 4
  store i32 %62, i32* %8, align 4
  %63 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %66 = call i32 @sdhci_writew(%struct.sdhci_host* %63, i32 %64, i32 %65)
  store i64 20, i64* %7, align 8
  br label %67

67:                                               ; preds = %85, %61
  %68 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %69 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %70 = call i32 @sdhci_readw(%struct.sdhci_host* %68, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* @SDHCI_CLOCK_INT_STABLE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  br i1 %74, label %75, label %89

75:                                               ; preds = %67
  %76 = load i64, i64* %7, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load %struct.device*, %struct.device** %6, align 8
  %80 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %81 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = call i32 @mmc_hostname(%struct.TYPE_4__* %82)
  %84 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %79, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %97

85:                                               ; preds = %75
  %86 = load i64, i64* %7, align 8
  %87 = add i64 %86, -1
  store i64 %87, i64* %7, align 8
  %88 = call i32 @mdelay(i32 1)
  br label %67

89:                                               ; preds = %67
  %90 = load i32, i32* @SDHCI_CLOCK_CARD_EN, align 4
  %91 = load i32, i32* %8, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %8, align 4
  %93 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %96 = call i32 @sdhci_writew(%struct.sdhci_host* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %89, %78, %53, %22
  ret void
}

declare dso_local %struct.sdhci_s3c* @to_s3c(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_writew(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @sdhci_s3c_set_clock(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @mmc_hostname(%struct.TYPE_4__*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
