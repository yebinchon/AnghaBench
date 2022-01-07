; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_ops_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_ops_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mmc_ios = type { i32, i64, i32, i32, i32 }
%struct.msdc_host = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Failed to set vmmc power!\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to set vqmmc power!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @msdc_ops_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msdc_ops_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.msdc_host*, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.msdc_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.msdc_host* %8, %struct.msdc_host** %5, align 8
  %9 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %10 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %11 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @msdc_set_buswidth(%struct.msdc_host* %9, i32 %12)
  %14 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %15 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %110 [
    i32 128, label %17
    i32 129, label %45
    i32 130, label %75
  ]

17:                                               ; preds = %2
  %18 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %19 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @IS_ERR(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %17
  %25 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %26 = call i32 @msdc_init_hw(%struct.msdc_host* %25)
  %27 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %28 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %29 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %33 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @mmc_regulator_set_ocr(%struct.mmc_host* %27, i32 %31, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %24
  %39 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %40 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %136

43:                                               ; preds = %24
  br label %44

44:                                               ; preds = %43, %17
  br label %111

45:                                               ; preds = %2
  %46 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %47 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @IS_ERR(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %74, label %52

52:                                               ; preds = %45
  %53 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %54 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %74, label %57

57:                                               ; preds = %52
  %58 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %59 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @regulator_enable(i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %57
  %66 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %67 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %73

70:                                               ; preds = %57
  %71 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %72 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  br label %73

73:                                               ; preds = %70, %65
  br label %74

74:                                               ; preds = %73, %52, %45
  br label %111

75:                                               ; preds = %2
  %76 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %77 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @IS_ERR(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %75
  %83 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %84 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %85 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @mmc_regulator_set_ocr(%struct.mmc_host* %83, i32 %87, i32 0)
  br label %89

89:                                               ; preds = %82, %75
  %90 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %91 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @IS_ERR(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %109, label %96

96:                                               ; preds = %89
  %97 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %98 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %96
  %102 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %103 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @regulator_disable(i32 %105)
  %107 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %108 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %107, i32 0, i32 0
  store i32 0, i32* %108, align 8
  br label %109

109:                                              ; preds = %101, %96, %89
  br label %111

110:                                              ; preds = %2
  br label %111

111:                                              ; preds = %110, %109, %74, %44
  %112 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %113 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %116 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %114, %117
  br i1 %118, label %127, label %119

119:                                              ; preds = %111
  %120 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %121 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %124 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %122, %125
  br i1 %126, label %127, label %136

127:                                              ; preds = %119, %111
  %128 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %129 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %130 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %133 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @msdc_set_mclk(%struct.msdc_host* %128, i64 %131, i32 %134)
  br label %136

136:                                              ; preds = %38, %127, %119
  ret void
}

declare dso_local %struct.msdc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @msdc_set_buswidth(%struct.msdc_host*, i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @msdc_init_hw(%struct.msdc_host*) #1

declare dso_local i32 @mmc_regulator_set_ocr(%struct.mmc_host*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @msdc_set_mclk(%struct.msdc_host*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
