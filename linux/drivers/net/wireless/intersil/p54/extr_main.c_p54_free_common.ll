; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_main.c_p54_free_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_main.c_p54_free_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.p54_common* }
%struct.p54_common = type { i32*, i32*, i32*, i32*, i32*, i32*, i32** }

@NUM_NL80211_BANDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p54_free_common(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.p54_common*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %5, i32 0, i32 0
  %7 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  store %struct.p54_common* %7, %struct.p54_common** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %21, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %14 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %13, i32 0, i32 6
  %15 = load i32**, i32*** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @kfree(i32* %19)
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %4, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %8

24:                                               ; preds = %8
  %25 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %26 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %25, i32 0, i32 5
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @kfree(i32* %27)
  %29 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %30 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @kfree(i32* %31)
  %33 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %34 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @kfree(i32* %35)
  %37 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %38 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @kfree(i32* %39)
  %41 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %42 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @kfree(i32* %43)
  %45 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %46 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @kfree(i32* %47)
  %49 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %50 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %49, i32 0, i32 5
  store i32* null, i32** %50, align 8
  %51 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %52 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %51, i32 0, i32 4
  store i32* null, i32** %52, align 8
  %53 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %54 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %53, i32 0, i32 3
  store i32* null, i32** %54, align 8
  %55 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %56 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %55, i32 0, i32 2
  store i32* null, i32** %56, align 8
  %57 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %58 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %57, i32 0, i32 1
  store i32* null, i32** %58, align 8
  %59 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %60 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %59, i32 0, i32 0
  store i32* null, i32** %60, align 8
  %61 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %62 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %61)
  ret void
}

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
