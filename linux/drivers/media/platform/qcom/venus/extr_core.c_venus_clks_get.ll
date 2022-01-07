; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_core.c_venus_clks_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_core.c_venus_clks_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_core = type { i32*, %struct.device*, %struct.venus_resources* }
%struct.device = type { i32 }
%struct.venus_resources = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_core*)* @venus_clks_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venus_clks_get(%struct.venus_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venus_core*, align 8
  %4 = alloca %struct.venus_resources*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.venus_core* %0, %struct.venus_core** %3, align 8
  %7 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %8 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %7, i32 0, i32 2
  %9 = load %struct.venus_resources*, %struct.venus_resources** %8, align 8
  store %struct.venus_resources* %9, %struct.venus_resources** %4, align 8
  %10 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %11 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %10, i32 0, i32 1
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %5, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %54, %1
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.venus_resources*, %struct.venus_resources** %4, align 8
  %16 = getelementptr inbounds %struct.venus_resources, %struct.venus_resources* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %57

19:                                               ; preds = %13
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = load %struct.venus_resources*, %struct.venus_resources** %4, align 8
  %22 = getelementptr inbounds %struct.venus_resources, %struct.venus_resources* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @devm_clk_get(%struct.device* %20, i32 %27)
  %29 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %30 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %28, i32* %34, align 4
  %35 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %36 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %19
  %45 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %46 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @PTR_ERR(i32 %51)
  store i32 %52, i32* %2, align 4
  br label %58

53:                                               ; preds = %19
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %13

57:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %44
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @devm_clk_get(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
