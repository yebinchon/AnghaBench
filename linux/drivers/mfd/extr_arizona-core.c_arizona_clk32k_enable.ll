; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_arizona-core.c_arizona_clk32k_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_arizona-core.c_arizona_clk32k_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona = type { i32, i32, i32, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ARIZONA_MCLK1 = common dso_local global i64 0, align 8
@ARIZONA_MCLK2 = common dso_local global i64 0, align 8
@ARIZONA_CLOCK_32K_1 = common dso_local global i32 0, align 4
@ARIZONA_CLK_32K_ENA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arizona_clk32k_enable(%struct.arizona* %0) #0 {
  %2 = alloca %struct.arizona*, align 8
  %3 = alloca i32, align 4
  store %struct.arizona* %0, %struct.arizona** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.arizona*, %struct.arizona** %2, align 8
  %5 = getelementptr inbounds %struct.arizona, %struct.arizona* %4, i32 0, i32 1
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.arizona*, %struct.arizona** %2, align 8
  %8 = getelementptr inbounds %struct.arizona, %struct.arizona* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 8
  %11 = load %struct.arizona*, %struct.arizona** %2, align 8
  %12 = getelementptr inbounds %struct.arizona, %struct.arizona* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %64

15:                                               ; preds = %1
  %16 = load %struct.arizona*, %struct.arizona** %2, align 8
  %17 = getelementptr inbounds %struct.arizona, %struct.arizona* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %56 [
    i32 129, label %20
    i32 128, label %44
  ]

20:                                               ; preds = %15
  %21 = load %struct.arizona*, %struct.arizona** %2, align 8
  %22 = getelementptr inbounds %struct.arizona, %struct.arizona* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pm_runtime_get_sync(i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %65

28:                                               ; preds = %20
  %29 = load %struct.arizona*, %struct.arizona** %2, align 8
  %30 = getelementptr inbounds %struct.arizona, %struct.arizona* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @ARIZONA_MCLK1, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @clk_prepare_enable(i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load %struct.arizona*, %struct.arizona** %2, align 8
  %40 = getelementptr inbounds %struct.arizona, %struct.arizona* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @pm_runtime_put_sync(i32 %41)
  br label %65

43:                                               ; preds = %28
  br label %56

44:                                               ; preds = %15
  %45 = load %struct.arizona*, %struct.arizona** %2, align 8
  %46 = getelementptr inbounds %struct.arizona, %struct.arizona* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @ARIZONA_MCLK2, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @clk_prepare_enable(i32 %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %65

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %15, %55, %43
  %57 = load %struct.arizona*, %struct.arizona** %2, align 8
  %58 = getelementptr inbounds %struct.arizona, %struct.arizona* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @ARIZONA_CLOCK_32K_1, align 4
  %61 = load i32, i32* @ARIZONA_CLK_32K_ENA, align 4
  %62 = load i32, i32* @ARIZONA_CLK_32K_ENA, align 4
  %63 = call i32 @regmap_update_bits(i32 %59, i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %56, %1
  br label %65

65:                                               ; preds = %64, %54, %38, %27
  %66 = load i32, i32* %3, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load %struct.arizona*, %struct.arizona** %2, align 8
  %70 = getelementptr inbounds %struct.arizona, %struct.arizona* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %68, %65
  %74 = load %struct.arizona*, %struct.arizona** %2, align 8
  %75 = getelementptr inbounds %struct.arizona, %struct.arizona* %74, i32 0, i32 1
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
