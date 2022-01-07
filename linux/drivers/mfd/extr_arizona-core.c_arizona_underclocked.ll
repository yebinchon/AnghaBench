; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_arizona-core.c_arizona_underclocked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_arizona-core.c_arizona_underclocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona = type { i32, i32 }

@ARIZONA_INTERRUPT_RAW_STATUS_8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to read underclock status: %d\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@ARIZONA_AIF3_UNDERCLOCKED_STS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"AIF3 underclocked\0A\00", align 1
@ARIZONA_AIF2_UNDERCLOCKED_STS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"AIF2 underclocked\0A\00", align 1
@ARIZONA_AIF1_UNDERCLOCKED_STS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"AIF1 underclocked\0A\00", align 1
@ARIZONA_ISRC3_UNDERCLOCKED_STS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"ISRC3 underclocked\0A\00", align 1
@ARIZONA_ISRC2_UNDERCLOCKED_STS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"ISRC2 underclocked\0A\00", align 1
@ARIZONA_ISRC1_UNDERCLOCKED_STS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"ISRC1 underclocked\0A\00", align 1
@ARIZONA_FX_UNDERCLOCKED_STS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"FX underclocked\0A\00", align 1
@ARIZONA_ASRC_UNDERCLOCKED_STS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"ASRC underclocked\0A\00", align 1
@ARIZONA_DAC_UNDERCLOCKED_STS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"DAC underclocked\0A\00", align 1
@ARIZONA_ADC_UNDERCLOCKED_STS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"ADC underclocked\0A\00", align 1
@ARIZONA_MIXER_UNDERCLOCKED_STS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"Mixer dropped sample\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @arizona_underclocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_underclocked(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.arizona*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.arizona*
  store %struct.arizona* %10, %struct.arizona** %6, align 8
  %11 = load %struct.arizona*, %struct.arizona** %6, align 8
  %12 = getelementptr inbounds %struct.arizona, %struct.arizona* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ARIZONA_INTERRUPT_RAW_STATUS_8, align 4
  %15 = call i32 @regmap_read(i32 %13, i32 %14, i32* %7)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.arizona*, %struct.arizona** %6, align 8
  %20 = getelementptr inbounds %struct.arizona, %struct.arizona* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 (i32, i8*, ...) @dev_err(i32 %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @IRQ_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %137

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @ARIZONA_AIF3_UNDERCLOCKED_STS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.arizona*, %struct.arizona** %6, align 8
  %32 = getelementptr inbounds %struct.arizona, %struct.arizona* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, i8*, ...) @dev_err(i32 %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @ARIZONA_AIF2_UNDERCLOCKED_STS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.arizona*, %struct.arizona** %6, align 8
  %42 = getelementptr inbounds %struct.arizona, %struct.arizona* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32, i8*, ...) @dev_err(i32 %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @ARIZONA_AIF1_UNDERCLOCKED_STS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.arizona*, %struct.arizona** %6, align 8
  %52 = getelementptr inbounds %struct.arizona, %struct.arizona* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32, i8*, ...) @dev_err(i32 %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %50, %45
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @ARIZONA_ISRC3_UNDERCLOCKED_STS, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.arizona*, %struct.arizona** %6, align 8
  %62 = getelementptr inbounds %struct.arizona, %struct.arizona* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i8*, ...) @dev_err(i32 %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %65

65:                                               ; preds = %60, %55
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @ARIZONA_ISRC2_UNDERCLOCKED_STS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.arizona*, %struct.arizona** %6, align 8
  %72 = getelementptr inbounds %struct.arizona, %struct.arizona* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, i8*, ...) @dev_err(i32 %73, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %75

75:                                               ; preds = %70, %65
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @ARIZONA_ISRC1_UNDERCLOCKED_STS, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.arizona*, %struct.arizona** %6, align 8
  %82 = getelementptr inbounds %struct.arizona, %struct.arizona* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i32, i8*, ...) @dev_err(i32 %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %85

85:                                               ; preds = %80, %75
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @ARIZONA_FX_UNDERCLOCKED_STS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.arizona*, %struct.arizona** %6, align 8
  %92 = getelementptr inbounds %struct.arizona, %struct.arizona* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i32, i8*, ...) @dev_err(i32 %93, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %95

95:                                               ; preds = %90, %85
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @ARIZONA_ASRC_UNDERCLOCKED_STS, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.arizona*, %struct.arizona** %6, align 8
  %102 = getelementptr inbounds %struct.arizona, %struct.arizona* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32, i8*, ...) @dev_err(i32 %103, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %105

105:                                              ; preds = %100, %95
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @ARIZONA_DAC_UNDERCLOCKED_STS, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load %struct.arizona*, %struct.arizona** %6, align 8
  %112 = getelementptr inbounds %struct.arizona, %struct.arizona* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32, i8*, ...) @dev_err(i32 %113, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  br label %115

115:                                              ; preds = %110, %105
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @ARIZONA_ADC_UNDERCLOCKED_STS, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load %struct.arizona*, %struct.arizona** %6, align 8
  %122 = getelementptr inbounds %struct.arizona, %struct.arizona* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i32, i8*, ...) @dev_err(i32 %123, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  br label %125

125:                                              ; preds = %120, %115
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @ARIZONA_MIXER_UNDERCLOCKED_STS, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load %struct.arizona*, %struct.arizona** %6, align 8
  %132 = getelementptr inbounds %struct.arizona, %struct.arizona* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i32, i8*, ...) @dev_err(i32 %133, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  br label %135

135:                                              ; preds = %130, %125
  %136 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %135, %18
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
