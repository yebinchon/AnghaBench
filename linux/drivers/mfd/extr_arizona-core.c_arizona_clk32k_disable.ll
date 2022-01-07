; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_arizona-core.c_arizona_clk32k_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_arizona-core.c_arizona_clk32k_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona = type { i64, i32, i32*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@ARIZONA_CLOCK_32K_1 = common dso_local global i32 0, align 4
@ARIZONA_CLK_32K_ENA = common dso_local global i32 0, align 4
@ARIZONA_MCLK1 = common dso_local global i64 0, align 8
@ARIZONA_MCLK2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arizona_clk32k_disable(%struct.arizona* %0) #0 {
  %2 = alloca %struct.arizona*, align 8
  store %struct.arizona* %0, %struct.arizona** %2, align 8
  %3 = load %struct.arizona*, %struct.arizona** %2, align 8
  %4 = getelementptr inbounds %struct.arizona, %struct.arizona* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.arizona*, %struct.arizona** %2, align 8
  %7 = getelementptr inbounds %struct.arizona, %struct.arizona* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sle i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.arizona*, %struct.arizona** %2, align 8
  %13 = getelementptr inbounds %struct.arizona, %struct.arizona* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = load %struct.arizona*, %struct.arizona** %2, align 8
  %17 = getelementptr inbounds %struct.arizona, %struct.arizona* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %1
  %21 = load %struct.arizona*, %struct.arizona** %2, align 8
  %22 = getelementptr inbounds %struct.arizona, %struct.arizona* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ARIZONA_CLOCK_32K_1, align 4
  %25 = load i32, i32* @ARIZONA_CLK_32K_ENA, align 4
  %26 = call i32 @regmap_update_bits(i32 %23, i32 %24, i32 %25, i32 0)
  %27 = load %struct.arizona*, %struct.arizona** %2, align 8
  %28 = getelementptr inbounds %struct.arizona, %struct.arizona* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %51 [
    i32 129, label %31
    i32 128, label %43
  ]

31:                                               ; preds = %20
  %32 = load %struct.arizona*, %struct.arizona** %2, align 8
  %33 = getelementptr inbounds %struct.arizona, %struct.arizona* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @pm_runtime_put_sync(i32 %34)
  %36 = load %struct.arizona*, %struct.arizona** %2, align 8
  %37 = getelementptr inbounds %struct.arizona, %struct.arizona* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @ARIZONA_MCLK1, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @clk_disable_unprepare(i32 %41)
  br label %51

43:                                               ; preds = %20
  %44 = load %struct.arizona*, %struct.arizona** %2, align 8
  %45 = getelementptr inbounds %struct.arizona, %struct.arizona* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @ARIZONA_MCLK2, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @clk_disable_unprepare(i32 %49)
  br label %51

51:                                               ; preds = %20, %43, %31
  br label %52

52:                                               ; preds = %51, %1
  %53 = load %struct.arizona*, %struct.arizona** %2, align 8
  %54 = getelementptr inbounds %struct.arizona, %struct.arizona* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
