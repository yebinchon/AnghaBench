; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_arizona-irq.c_arizona_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_arizona-irq.c_arizona_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona = type { i32, %struct.TYPE_2__, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to resume device: %d\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@ARIZONA_AOD_IRQ1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to read AOD IRQ1 %d\0A\00", align 1
@ARIZONA_IRQ_PIN_STATUS = common dso_local global i32 0, align 4
@ARIZONA_IRQ1_STS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to read main IRQ status: %d\0A\00", align 1
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @arizona_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.arizona*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.arizona*
  store %struct.arizona* %11, %struct.arizona** %6, align 8
  %12 = load %struct.arizona*, %struct.arizona** %6, align 8
  %13 = getelementptr inbounds %struct.arizona, %struct.arizona* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @pm_runtime_get_sync(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.arizona*, %struct.arizona** %6, align 8
  %20 = getelementptr inbounds %struct.arizona, %struct.arizona* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @IRQ_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %140

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %127, %25
  store i32 0, i32* %7, align 4
  %27 = load %struct.arizona*, %struct.arizona** %6, align 8
  %28 = getelementptr inbounds %struct.arizona, %struct.arizona* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %26
  %32 = load %struct.arizona*, %struct.arizona** %6, align 8
  %33 = getelementptr inbounds %struct.arizona, %struct.arizona* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ARIZONA_AOD_IRQ1, align 4
  %36 = call i32 @regmap_read(i32 %34, i32 %35, i32* %8)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load %struct.arizona*, %struct.arizona** %6, align 8
  %41 = getelementptr inbounds %struct.arizona, %struct.arizona* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @dev_warn(i32 %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %55

45:                                               ; preds = %31
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.arizona*, %struct.arizona** %6, align 8
  %50 = getelementptr inbounds %struct.arizona, %struct.arizona* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @irq_find_mapping(i32 %51, i32 0)
  %53 = call i32 @handle_nested_irq(i32 %52)
  br label %54

54:                                               ; preds = %48, %45
  br label %55

55:                                               ; preds = %54, %39
  br label %56

56:                                               ; preds = %55, %26
  %57 = load %struct.arizona*, %struct.arizona** %6, align 8
  %58 = getelementptr inbounds %struct.arizona, %struct.arizona* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @ARIZONA_IRQ_PIN_STATUS, align 4
  %61 = call i32 @regmap_read(i32 %59, i32 %60, i32* %8)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %56
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @ARIZONA_IRQ1_STS, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.arizona*, %struct.arizona** %6, align 8
  %71 = getelementptr inbounds %struct.arizona, %struct.arizona* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @irq_find_mapping(i32 %72, i32 1)
  %74 = call i32 @handle_nested_irq(i32 %73)
  br label %85

75:                                               ; preds = %64, %56
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load %struct.arizona*, %struct.arizona** %6, align 8
  %80 = getelementptr inbounds %struct.arizona, %struct.arizona* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @dev_err(i32 %81, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %78, %75
  br label %85

85:                                               ; preds = %84, %69
  %86 = load %struct.arizona*, %struct.arizona** %6, align 8
  %87 = getelementptr inbounds %struct.arizona, %struct.arizona* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %85
  br label %130

92:                                               ; preds = %85
  %93 = load %struct.arizona*, %struct.arizona** %6, align 8
  %94 = getelementptr inbounds %struct.arizona, %struct.arizona* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %92
  %101 = load %struct.arizona*, %struct.arizona** %6, align 8
  %102 = getelementptr inbounds %struct.arizona, %struct.arizona* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @gpio_get_value_cansleep(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  store i32 1, i32* %7, align 4
  br label %125

108:                                              ; preds = %100, %92
  %109 = load %struct.arizona*, %struct.arizona** %6, align 8
  %110 = getelementptr inbounds %struct.arizona, %struct.arizona* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %108
  %117 = load %struct.arizona*, %struct.arizona** %6, align 8
  %118 = getelementptr inbounds %struct.arizona, %struct.arizona* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @gpio_get_value_cansleep(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %116
  store i32 1, i32* %7, align 4
  br label %124

124:                                              ; preds = %123, %116, %108
  br label %125

125:                                              ; preds = %124, %107
  br label %126

126:                                              ; preds = %125
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %26, label %130

130:                                              ; preds = %127, %91
  %131 = load %struct.arizona*, %struct.arizona** %6, align 8
  %132 = getelementptr inbounds %struct.arizona, %struct.arizona* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @pm_runtime_mark_last_busy(i32 %133)
  %135 = load %struct.arizona*, %struct.arizona** %6, align 8
  %136 = getelementptr inbounds %struct.arizona, %struct.arizona* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @pm_runtime_put_autosuspend(i32 %137)
  %139 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %130, %18
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @handle_nested_irq(i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i64 @gpio_get_value_cansleep(i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
