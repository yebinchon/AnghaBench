; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_ios = type { i32, i32, i32, i32 }
%struct.jz4740_mmc_host = type { i32, i32 }

@JZ_MMC_CMDAT_INIT = common dso_local global i32 0, align 4
@JZ_MMC_CMDAT_BUS_WIDTH_4BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @jz4740_mmc_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jz4740_mmc_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.jz4740_mmc_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = call %struct.jz4740_mmc_host* @mmc_priv(%struct.mmc_host* %6)
  store %struct.jz4740_mmc_host* %7, %struct.jz4740_mmc_host** %5, align 8
  %8 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %9 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %14 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %15 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @jz4740_mmc_set_clock_rate(%struct.jz4740_mmc_host* %13, i32 %16)
  br label %18

18:                                               ; preds = %12, %2
  %19 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %20 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %52 [
    i32 128, label %22
    i32 129, label %51
  ]

22:                                               ; preds = %18
  %23 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %24 = call i32 @jz4740_mmc_reset(%struct.jz4740_mmc_host* %23)
  %25 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %26 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @IS_ERR(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %22
  %32 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %33 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %34 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %38 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @mmc_regulator_set_ocr(%struct.mmc_host* %32, i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %31, %22
  %42 = load i32, i32* @JZ_MMC_CMDAT_INIT, align 4
  %43 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %44 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %48 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @clk_prepare_enable(i32 %49)
  br label %71

51:                                               ; preds = %18
  br label %71

52:                                               ; preds = %18
  %53 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %54 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @IS_ERR(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %52
  %60 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %61 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %62 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @mmc_regulator_set_ocr(%struct.mmc_host* %60, i32 %64, i32 0)
  br label %66

66:                                               ; preds = %59, %52
  %67 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %68 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @clk_disable_unprepare(i32 %69)
  br label %71

71:                                               ; preds = %66, %51, %41
  %72 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %73 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %88 [
    i32 131, label %75
    i32 130, label %82
  ]

75:                                               ; preds = %71
  %76 = load i32, i32* @JZ_MMC_CMDAT_BUS_WIDTH_4BIT, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %79 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %89

82:                                               ; preds = %71
  %83 = load i32, i32* @JZ_MMC_CMDAT_BUS_WIDTH_4BIT, align 4
  %84 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %85 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %89

88:                                               ; preds = %71
  br label %89

89:                                               ; preds = %88, %82, %75
  ret void
}

declare dso_local %struct.jz4740_mmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @jz4740_mmc_set_clock_rate(%struct.jz4740_mmc_host*, i32) #1

declare dso_local i32 @jz4740_mmc_reset(%struct.jz4740_mmc_host*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @mmc_regulator_set_ocr(%struct.mmc_host*, i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
